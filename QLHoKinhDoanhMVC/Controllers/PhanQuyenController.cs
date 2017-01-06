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
    public class PhanQuyenController : BaseController
    {
        private QuanLyHoKinhDoanhDBContext db = new QuanLyHoKinhDoanhDBContext();

        // GET: /PhanQuyen/
        public ActionResult Index()
        {
            var quyens = db.Quyens.Include(q => q.PhanQuyen);
            return View(quyens.ToList());
        }

        // GET: /PhanQuyen/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Quyen quyen = db.Quyens.Find(id);
            if (quyen == null)
            {
                return HttpNotFound();
            }
            return View(quyen);
        }

        // GET: /PhanQuyen/Create
        public ActionResult Create()
        {
            ViewBag.MaQuyen = new SelectList(db.PhanQuyens, "MaQuyen", "LoaiQuyen");
            return View();
        }

        // POST: /PhanQuyen/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="ID,MaQuyen,Action,Mota")] Quyen quyen)
        {
            if (ModelState.IsValid)
            {
                db.Quyens.Add(quyen);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MaQuyen = new SelectList(db.PhanQuyens, "MaQuyen", "LoaiQuyen", quyen.MaQuyen);
            return View(quyen);
        }

        // GET: /PhanQuyen/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Quyen quyen = db.Quyens.Find(id);
            if (quyen == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaQuyen = new SelectList(db.PhanQuyens, "MaQuyen", "LoaiQuyen", quyen.MaQuyen);
            return View(quyen);
        }

        // POST: /PhanQuyen/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="ID,MaQuyen,Action,Mota")] Quyen quyen)
        {
            if (ModelState.IsValid)
            {
                db.Entry(quyen).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaQuyen = new SelectList(db.PhanQuyens, "MaQuyen", "LoaiQuyen", quyen.MaQuyen);
            return View(quyen);
        }

        // GET: /PhanQuyen/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Quyen quyen = db.Quyens.Find(id);
            if (quyen == null)
            {
                return HttpNotFound();
            }
            return View(quyen);
        }

        // POST: /PhanQuyen/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Quyen quyen = db.Quyens.Find(id);
            db.Quyens.Remove(quyen);
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
