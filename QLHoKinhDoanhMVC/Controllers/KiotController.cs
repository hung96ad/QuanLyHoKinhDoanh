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
    public class KiotController : BaseController
    {
        private QuanLyHoKinhDoanhDBContext db = new QuanLyHoKinhDoanhDBContext();

        // GET: /Kiot/
        public ActionResult Index()
        {
            return View(db.Kiots.ToList());
        }


        // GET: /Kiot/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /Kiot/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Kiot kiot)
        {
            try
            {
                kiot.MaKiot = "T" + kiot.Tang + "STT" + kiot.SoTT;
                kiot.TrangThai = true;
                db.Kiots.Add(kiot);
                db.SaveChanges();
                SetAlert("Thêm thành công <b>" + kiot.MaKiot + "</b>", "success");
                return RedirectToAction("Index");
            }
            catch
            {
                SetAlert("Thêm thất bại <b>" + kiot.MaKiot + "</b> đã tồn tại", "error");
                return View(kiot);
            }
        }

        // GET: /Kiot/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Kiot kiot = db.Kiots.Find(id);
            if (kiot == null)
            {
                return HttpNotFound();
            }
            return View(kiot);
        }

        // POST: /Kiot/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Kiot kiot)
        {
            if (ModelState.IsValid)
            {
                db.Entry(kiot).State = EntityState.Modified;
                db.SaveChanges();
                SetAlert("Sửa Kiot thành công", "success");
                return RedirectToAction("Index");
            }
            SetAlert("Sửa Kiot thất bại", "error");
            return View(kiot);
        }

        // POST: /Kiot/Delete/5
        public ActionResult Delete(string id)
        {
            try
            {
                Kiot kiot = db.Kiots.Find(id);
                db.Kiots.Remove(kiot);
                db.SaveChanges();
                SetAlert("Xóa thành công kiot " + kiot.MaKiot, "success");
                return RedirectToAction("Index");
            }
            catch
            {
                SetAlert("Xóa kiot thất bại ", "error");
                return RedirectToAction("Index");
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
