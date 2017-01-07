using QLHoKinhDoanhMVC.Common;
using QLHoKinhDoanhMVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace QLHoKinhDoanhMVC.Controllers
{
    public class BaseController : Controller
    {
        QuanLyHoKinhDoanhDBContext db = new QuanLyHoKinhDoanhDBContext();

        public string UserID { get; set; }
        // Check session
        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            CheckCookie();
            var session = (UserLogin)Session[CommonConstants.USER_SESSION];
            if (session == null)
            {
                filterContext.Result = new RedirectToRouteResult(new
                    RouteValueDictionary(new { controller = "User", action = "Index" }));
            }
            else
            {
                UserID = session.UserID;
                if (session.MaQuyen == 1)
                {
                    return;
                }

                string actionName = filterContext.ActionDescriptor.ControllerDescriptor.ControllerName + "Controller-"
                    + filterContext.ActionDescriptor.ActionName;
                QuanLyHoKinhDoanhDBContext db = new QuanLyHoKinhDoanhDBContext();
                var listQuyen = from q in db.Quyens
                                join c in db.ChucNangs
                                on q.Ma equals c.Ma
                                where q.MaQuyen == session.MaQuyen
                                select c.Ten;
                if (!listQuyen.Contains(actionName))
                {
                    filterContext.Result = new RedirectToRouteResult(new
                        RouteValueDictionary(new { controller = "Home", action = "NotificationAuthorize" }));
                }
            }
            base.OnActionExecuting(filterContext);
        }

        // Check cookie để sử dụng cho các phiên đăng nhập tiếp theo
        private void CheckCookie()
        {
            if (Request.Cookies["user"] != null)
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

        // Set alert để đưa ra thông báo
        protected void SetAlert(string message, string type)
        {
            TempData["AlertMessage"] = message;
            if (type == "success")
            {
                TempData["AlertType"] = "alert-success";
            }
            else if (type == "warning")
            {
                TempData["AlertType"] = "alert-warning";
            }
            else if (type == "error")
            {
                TempData["AlertType"] = "alert-danger";
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