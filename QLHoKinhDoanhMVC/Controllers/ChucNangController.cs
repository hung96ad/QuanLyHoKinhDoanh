using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QLHoKinhDoanhMVC.Models;

namespace QLHoKinhDoanhMVC.Controllers
{
    public class ChucNangController : BaseController
    {
        private QuanLyHoKinhDoanhDBContext db = new QuanLyHoKinhDoanhDBContext();

        // GET: /ChucNang/
        public ActionResult Index()
        {
            return View(db.ChucNangs.ToList());
        }


        // GET : /ChucNang/UpdateChucNang
        public ActionResult UpdateChucNang()
        {
            ReflectionController rc = new ReflectionController();
            List<Type> listControllerType = rc.GetControllers("QLHoKinhDoanhMVC.Controllers");
            List<string> listChucNangOld = db.ChucNangs.Select(p => p.Ten).ToList();
            List<string> listControllerOld = db.DanhMucs.Select(c => c.MaDanhMuc).ToList();
            foreach (var c in listControllerType)
            {
                if (!listControllerOld.Contains(c.Name))
                {
                    DanhMuc danhmuc = new DanhMuc() { MaDanhMuc = c.Name, TenDanhMuc = "Chưa có mô tả" };
                    db.DanhMucs.Add(danhmuc);
                }
                List<string> listAction = rc.GetActions(c);
                foreach (var p in listAction)
                {
                    if (!listChucNangOld.Contains(c.Name + "-" + p))
                    {
                        ChucNang chucnang = new ChucNang() { Ten = c.Name + "-" + p, MoTa = "Chưa có mô tả" , MaDanhMuc = c.Name};
                        db.ChucNangs.Add(chucnang);
                    }
                }
            }
            db.SaveChanges();
            SetAlert("Cập nhật danh sách thành công", "success");
            return RedirectToAction("Index");
        }

        // GET: /ChucNang/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChucNang chucnang = db.ChucNangs.Find(id);
            if (chucnang == null)
            {
                return HttpNotFound();
            }
            return View(chucnang);
        }

        // POST: /ChucNang/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(ChucNang chucnang)
        {
            if (ModelState.IsValid)
            {
                db.Entry(chucnang).State = EntityState.Modified;
                db.SaveChanges();
                SetAlert("Sửa chức năng thành công", "success");
                return RedirectToAction("Index");
            }
            SetAlert("Sửa chức năng thất bại", "error");
            return View(chucnang);
        }

        // POST: /ChucNang/Delete/5
        public ActionResult Delete(int? id)
        {
            ChucNang chucnang = db.ChucNangs.Find(id);
            db.ChucNangs.Remove(chucnang);
            db.SaveChanges();
            return RedirectToAction("Index");
        }


        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
