using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QLHoKinhDoanhMVC.Models;

namespace QLHoKinhDoanhMVC.Controllers
{
    public class ManageController : BaseController
    {
        //
        // GET: /Manage/
        QuanLyHoKinhDoanhDBContext db = new QuanLyHoKinhDoanhDBContext();
        public ActionResult Index()
        {
            return View();
        }

        public PartialViewResult ManagePartial()
        {
            return PartialView();
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
