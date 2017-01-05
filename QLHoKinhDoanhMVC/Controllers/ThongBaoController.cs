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
    public class ThongBaoController : BaseController
    {
        private QuanLyHoKinhDoanhDBContext db = new QuanLyHoKinhDoanhDBContext();

        // GET: /ThongBao/
        public ActionResult Index()
        {
            var thongbaos = db.ThongBaos.Include(t => t.Account);
            return View(thongbaos.ToList());
        }

        // GET: /ThongBao/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ThongBao thongbao = db.ThongBaos.Find(id);
            if (thongbao == null)
            {
                return HttpNotFound();
            }
            return View(thongbao);
        }

        // GET: /ThongBao/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /ThongBao/Create
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(ThongBao thongbao)
        {
            if (ModelState.IsValid)
            {
                thongbao.NgayDang = DateTime.Now;
                thongbao.UserID = base.UserID;
                db.ThongBaos.Add(thongbao);
                db.SaveChanges();
                return RedirectToAction("Details", new { id = thongbao.MaThongBao });
            }
            return View(thongbao);
        }

        // GET: /ThongBao/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ThongBao thongbao = db.ThongBaos.Find(id);
            if (thongbao == null)
            {
                return HttpNotFound();
            }
            return View(thongbao);
        }

        // POST: /ThongBao/Edit/5
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(ThongBao thongbao)
        {
            if (ModelState.IsValid)
            {
                ThongBao tb = db.ThongBaos.Find(thongbao.MaThongBao);
                tb.NoiDung = thongbao.NoiDung;
                tb.MoTa = thongbao.MoTa;
                tb.TieuDe = thongbao.TieuDe;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(thongbao);
        }

        // GET: /ThongBao/Delete/5
        public ActionResult Delete(int? id)
        {
            ThongBao thongbao = db.ThongBaos.Find(id);
            db.ThongBaos.Remove(thongbao);
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
