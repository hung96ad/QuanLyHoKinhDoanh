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
        /// Xem chi tiết thông báo theo id
        /// </summary>
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

        // Check cookie
        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            if (Request.Cookies["user"] != null)
            {
                if (Request.Cookies["matkhau"] != null)
                {
                    string user = Request.Cookies["user"].Value;
                    string matkhau = Request.Cookies["matkhau"].Value;
                    LoginModel login = new LoginModel();
                    int result = login.Login(user, matkhau);
                    if (result == 1)
                    {
                        UserLogin userSession = new UserLogin();
                        userSession.UserID = user;
                        userSession.MaQuyen = db.Accounts.Find(user).MaQuyen;
                        Session.Add(CommonConstants.USER_SESSION, userSession);
                    }
                }
            }
            base.OnActionExecuting(filterContext);
        }
        

        // GET : Home/NotificationAuthorize đưa ra thông báo nếu không có quyền
        public ActionResult NotificationAuthorize()
        {
            return View();
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
