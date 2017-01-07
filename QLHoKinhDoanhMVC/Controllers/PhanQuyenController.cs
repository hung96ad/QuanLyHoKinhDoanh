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
            var phanquyen = db.PhanQuyens.Where(m => m.MaQuyen != 1);
            return View(phanquyen.ToList());
        }

        // GET: /PhanQuyen/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PhanQuyen phanquyen = db.PhanQuyens.Find(id);
            if (phanquyen == null)
            {
                return HttpNotFound();
            }
            var listController = db.DanhMucs.ToList();
            List<SelectListItem> listControllers = new List<SelectListItem>();
            foreach (var item in listController)
            {
                listControllers.Add(new SelectListItem() { Text = item.TenDanhMuc, Value = item.MaDanhMuc });
            }
            ViewBag.listController = listControllers;

            var listQuyen = from q in db.Quyens
                            join c in db.ChucNangs
                            on q.Ma equals c.Ma
                            where q.MaQuyen == id
                            select new SelectListItem()
                            {
                                Value = c.Ma.ToString(),
                                Text = c.Ten
                            };
            ViewBag.listQuyen = listQuyen;
            return View(phanquyen);

        }

        // GET: PhanQuyen/GetQuyen
        public JsonResult GetQuyen(string id, int maquyentemp)
        {
            var listQuyen = (from q in db.Quyens
                             join c in db.ChucNangs
                             on q.Ma equals c.Ma
                             where q.MaQuyen == maquyentemp && c.MaDanhMuc == id
                             select new QuyenAction
                             {
                                 QuyenName = c.Ten,
                                 MoTa = c.MoTa,
                                 QuyenID = c.Ma,
                                 IsGranted = true
                             }).ToList();
            var listChucNang = from c in db.ChucNangs
                               where c.MaDanhMuc == id
                               select new QuyenAction
                             {
                                 QuyenName = c.Ten,
                                 MoTa = c.MoTa,
                                 QuyenID = c.Ma,
                                 IsGranted = false
                             };
            var listChucNangID = listQuyen.Select(c => c.QuyenID);
            foreach (var item in listChucNang)
            {
                if (!listChucNangID.Contains(item.QuyenID))
                {
                    listQuyen.Add(item);
                }
            }
            return Json(listQuyen.OrderBy(x => x.MoTa), JsonRequestBehavior.AllowGet);
        }
        // POST: /PhanQuyen/Update/5
        public string Update(int id, int maquyentemp)
        {
            string msg = "";
            var quyen = db.Quyens.Where(m => m.Ma == id && m.MaQuyen == maquyentemp).FirstOrDefault(); 
            if (quyen == null)
            {
                Quyen quyens = new Quyen() { Ma = id, MaQuyen = maquyentemp };
                db.Quyens.Add(quyens);
                msg = "<div class = 'alert alert-success'>Cấp quyền thành công</div>";
            }
            else
            {
                db.Quyens.Remove(quyen);
                msg = "<div class = 'alert alert-danger'>Hủy quyền thành công</div>";
            }
            db.SaveChanges();
            return msg;
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
