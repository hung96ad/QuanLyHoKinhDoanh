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
        public string UserID { get; set; }
        // Check session
        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            HopDongKiot hopdong = new HopDongKiot();
            hopdong.CheckHopDong();
            var session = (UserLogin)Session[CommonConstants.USER_SESSION];
            if (session == null)
            {
                filterContext.Result = new RedirectToRouteResult(new
                    RouteValueDictionary(new { controller = "User", action = "Index" }));
            }
            else
            {
                UserID = session.UserID;
            }
            base.OnActionExecuting(filterContext);
        }

        // Set alert để đưa ra thông báo
        public void SetAlert(string message, string type)
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
    }
}