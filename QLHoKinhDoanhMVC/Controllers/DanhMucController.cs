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
    public class DanhMucController : BaseController
    {
        private QuanLyHoKinhDoanhDBContext db = new QuanLyHoKinhDoanhDBContext();

        // GET: /DanhMuc/
        public ActionResult Index()
        {
            return View(db.DanhMucs.ToList());
        }

        // GET: /DanhMuc/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DanhMuc danhmuc = db.DanhMucs.Find(id);
            if (danhmuc == null)
            {
                return HttpNotFound();
            }
            return View(danhmuc);
        }

        // POST: /DanhMuc/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(DanhMuc danhmuc)
        {
            if (ModelState.IsValid)
            {
                db.Entry(danhmuc).State = EntityState.Modified;
                db.SaveChanges();
                SetAlert("Sửa danh mục thành công", "success");
                return RedirectToAction("Index");
            }
            SetAlert("Sửa danh mục thất bại", "error");

            return View(danhmuc);
        }

        // GET: /DanhMuc/Delete/5
        public ActionResult Delete(string id)
        {
            try
            {
                DanhMuc danhmuc = db.DanhMucs.Find(id);
                db.DanhMucs.Remove(danhmuc);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                SetAlert("Xóa danh mục thất bại", "error");
                return View();
            }
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
