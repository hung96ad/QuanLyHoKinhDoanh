using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QLHoKinhDoanhMVC.Models;
using QLHoKinhDoanhMVC.Common;

namespace QLHoKinhDoanhMVC.Controllers
{
    public class UserController : Controller
    {
        private QuanLyHoKinhDoanhDBContext db = new QuanLyHoKinhDoanhDBContext();
        //
        // GET: /Login/

        public ActionResult Index()
        {
            return View();
        }
        // Post: Login
        [HttpPost]
        public ActionResult Login(LoginModel login)
        {
            var result = login.Login(login.UserID, EncryptorMD5.MD5Hash(login.MatKhau));
            if (result == 1)
            {
                UserLogin userSession = new UserLogin();
                userSession.UserID = login.UserID;
                userSession.MaQuyen = db.Accounts.Find(userSession.UserID).MaQuyen;
                Session.Add(CommonConstants.USER_SESSION, userSession);
                AccountChuHoNhanVien acc = new AccountChuHoNhanVien();
                if (acc.CheckMatKhauMacDinh(login.UserID))
                {
                    ViewBag.ThongBao = "Mật khẩu của bạn đang là mặc định. Vui lòng đổi mật khẩu hiện tại";
                    ViewBag.Color = "alert alert-warning";
                    return RedirectToAction("ChangeMatKhau");
                }
                return RedirectToAction("Index", "Home");
            }
            if (result == 0)
            {
                ModelState.AddModelError("", "Tài khoản không tồn tại");
            }
            if (result == -1)
            {
                ModelState.AddModelError("", "Tài khoản bị khóa");
            }
            if (result == -2)
            {
                ModelState.AddModelError("", "Mật khẩu không đúng");
            }
            return View("Index");
        }

        public ActionResult Logout()
        {
            Session[CommonConstants.USER_SESSION] = null;
            return RedirectToAction("Index", "Home");
        }

        // Get đổi mật khẩu
        public ActionResult ChangeMatKhau()
        {
            var session = (UserLogin)Session[CommonConstants.USER_SESSION];
            if (session == null)
            {
                return RedirectToAction("Index");
            }
            return View();
        }

        // Post đổi mật khẩu
        [HttpPost]
        public ActionResult ChangeMatKhau(ChangeMatKhau change)
        {

            BaseController basecontroller = new BaseController();
            var session = (UserLogin)Session[CommonConstants.USER_SESSION];
            var loginmodel = new LoginModel();
            var result = loginmodel.Login(session.UserID, EncryptorMD5.MD5Hash(change.MatKhauOld));
            if (result == 1)
            {
                Account acc = db.Accounts.Find(session.UserID);
                acc.MatKhau = EncryptorMD5.MD5Hash(change.MatKhauNew);
                db.SaveChanges();
                ViewBag.Color = "alert alert-success";
                ViewBag.ThongBao = "Đổi mật khẩu thành công";
                return View();
            }
            ViewBag.Color = "alert alert-danger";
            ViewBag.ThongBao = "Mật khẩu hiện tại không đúng";
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
