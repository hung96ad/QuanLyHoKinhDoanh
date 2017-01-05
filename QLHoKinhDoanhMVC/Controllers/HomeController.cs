using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QLHoKinhDoanhMVC.Models;
using QLHoKinhDoanhMVC.Common;

namespace QLHoKinhDoanhMVC.Controllers
{
    public class HomeController : Controller
    {
        
        private QuanLyHoKinhDoanhDBContext db = new QuanLyHoKinhDoanhDBContext();
        /// <summary>
        /// Thông báo mới nhất đưa lên Index
        /// </summary>
        public ActionResult Index()
        {
            var tbmoi = (from tb in db.ThongBaos
                         orderby tb.MaThongBao descending
                         select tb).First();
            return View(tbmoi);
        }
        /// <summary>
        /// Load danh sách 5 thông báo mới nhất
        /// </summary>
        public PartialViewResult NewsPartial()
        {
            var ListTinMoi = (from tb in db.ThongBaos
                              orderby tb.MaThongBao descending
                              select tb).Take(5).ToList();
            return PartialView(ListTinMoi);
        }
        /// <summary>
        /// Xem chi tiết thông báo
        /// </summary>
        /// <param name="MaThongBao"></param>
        /// <returns></returns>
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
