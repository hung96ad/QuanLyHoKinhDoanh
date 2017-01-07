using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QLHoKinhDoanhMVC.Models;
using Rotativa;

namespace QLHoKinhDoanhMVC.Controllers
{
    public class HopDongKiotController : BaseController
    {
        private QuanLyHoKinhDoanhDBContext db = new QuanLyHoKinhDoanhDBContext();

        // GET: /HopDongKiot/
        public ActionResult Index()
        {
            var hopdongkiots = db.HopDongKiots.Include(h => h.ChuHoKinhDoanh).Include(h => h.Kiot);
            HopDongKiot hopdong = new HopDongKiot();
            hopdong.CheckHopDong(); 
            return View(hopdongkiots.ToList());
        }

        // GET: HopDongKiot/ChuHo
        public ActionResult HopDongChuHo()
        {
            HopDongKiot hopdong = new HopDongKiot();
            hopdong.CheckHopDong();
            var hopdongkiot = db.HopDongKiots.Include(h => h.ChuHoKinhDoanh).Include(h => h.Kiot).Where(h => h.MaKinhDoanh == UserID).ToList();
            if (hopdongkiot.Count == 0)
            {
                SetAlert("Bạn chưa có hợp đồng nào", "warning");
                return View();
            }
            return View(hopdongkiot);
        }
        // GET: /HopDongKiot/Details/5
        public ActionResult Details(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HopDongKiot hopdongkiot = db.HopDongKiots.Find(id);
            if (hopdongkiot == null)
            {
                return HttpNotFound();
            }
            return View(hopdongkiot);
        }


        // GET Partial HopDong html
        public ActionResult HopDongPartial(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HopDongKiot hopdongkiot = db.HopDongKiots.Find(id);
            if (hopdongkiot == null)
            {
                return HttpNotFound();
            }
            return PartialView(hopdongkiot);
        }

        // Convert HTML to PDF and download pdf
        public ActionResult DownloadPartialViewPDF(Guid? id)
        {
            var model = db.HopDongKiots.Find(id);
            return new Rotativa.PartialViewAsPdf("HopDongPartial", model) { FileName = "HopDong" + id + ".pdf" };
        }

        // GET: /HopDongKiot/Create
        public ActionResult Create()
        {
            ViewBag.MaKinhDoanh = new SelectList(db.ChuHoKinhDoanhs, "MaKinhDoanh", "HoTen");
            var listKiot = (from listkiot in db.Kiots
                            where listkiot.TrangThai == true
                            select listkiot).ToList();
            ViewBag.MaKiot = new SelectList(listKiot, "MaKiot", "MaKiot");
            return View();
        }

        // POST: /HopDongKiot/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(HopDongKiot hopdongkiot)
        {
            try
            {
                hopdongkiot.MaHopDong = Guid.NewGuid();
                hopdongkiot.NgayBatDau = DateTime.Now.Date;
                hopdongkiot.NgayKetThuc = hopdongkiot.NgayBatDau.AddYears(1);
                hopdongkiot.TrangThai = true;
                db.HopDongKiots.Add(hopdongkiot);
                Kiot kiot = db.Kiots.Find(hopdongkiot.MaKiot);
                kiot.TrangThai = false;
                db.SaveChanges();
                return RedirectToAction("Details", new { id = hopdongkiot.MaHopDong });
            }
            catch
            {
                SetAlert("Thêm hợp đồng thất bại", "error");
                ViewBag.MaKinhDoanh = new SelectList(db.ChuHoKinhDoanhs, "MaKinhDoanh", "HoTen", hopdongkiot.MaKinhDoanh);
                ViewBag.MaKiot = new SelectList(db.Kiots, "MaKiot", "MaKiot", hopdongkiot.MaKiot);
                return View(hopdongkiot);
            }

        }

        // POST: /HopDongKiot/Delete
        public ActionResult Delete(Guid? id)
        {
            try
            {
                HopDongKiot hopdong = db.HopDongKiots.Find(id);
                KiotChange kiot = new KiotChange();
                kiot.ChangeTrangThai(hopdong.MaKiot);
                db.HopDongKiots.Remove(hopdong);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                SetAlert("Xóa hợp đồng thất bại", "error");
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
