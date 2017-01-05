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
    public class AccountController : BaseController
    {
        private QuanLyHoKinhDoanhDBContext db = new QuanLyHoKinhDoanhDBContext();

        // GET: /Account/NhanVien
        public ActionResult Index()
        {
            AccountChuHoNhanVien acc = new AccountChuHoNhanVien();
            var accounts = acc.GetListNhanVien();
            return View(accounts);
        }

        // GET: /Account/ChuHoKinhDoanh
        public ActionResult AccountChuHo()
        {
            AccountChuHoNhanVien acc = new AccountChuHoNhanVien();
            var accounts = acc.GetListChuHo();
            return View(accounts.ToList());
        }

        // GET: /Account/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /Account/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(AccountChuHoNhanVien acc)
        {
            try
            {
                if (acc.CheckEmail(acc.Email) > 0)
                {
                    SetAlert("Email đã tồn tại", "warning");
                    return View(acc);
                }
                acc.UserID = acc.MaQuyen == 5 ? ("CH" + acc.SoCMT) : ("NV" + acc.SoCMT);
                if (acc.CheckUser(acc.UserID))
                {
                    SetAlert("Người dùng này đã tồn tại", "error");
                    return View(acc);
                }
                Account account = new Account();
                account.UserID = acc.UserID;
                account.Email = acc.Email;
                account.TrangThai = true;
                account.MatKhau = EncryptorMD5.MD5Hash(account.UserID);
                account.MaQuyen = acc.MaQuyen;

                var nguoidung = acc.CreateNguoiDung(account.UserID);
                nguoidung.DiaChi = acc.DiaChi;
                nguoidung.GioiTinh = acc.GioiTinh;
                nguoidung.HoTen = acc.HoTen;
                nguoidung.NgaySinh = acc.NgaySinh;
                nguoidung.SoDienThoai = acc.SoDienThoai;
                nguoidung.SoCMT = acc.SoCMT;

                string message = "Thêm thành công." +
                   "<br /> Tài khoản: <b>" + account.UserID +
                   "</b><br /> Mật khẩu: <b>" + account.UserID + "</b>";

                SetAlert(message, "success");
                if (acc.MaQuyen == 5)
                {
                    ChuHoKinhDoanh chuho = (ChuHoKinhDoanh)nguoidung;
                    chuho.MaKinhDoanh = account.UserID;

                    db.Accounts.Add(account);
                    db.ChuHoKinhDoanhs.Add(chuho);
                    db.SaveChanges();
                    return RedirectToAction("AccountChuHo", "Account");
                }

                NhanVien nhanvien = (NhanVien)nguoidung;
                nhanvien.MaNhanVien = account.UserID;
                nhanvien.NgayBatDau = DateTime.Now;

                db.NhanViens.Add(nhanvien);
                db.Accounts.Add(account);
                db.SaveChanges();
                return RedirectToAction("Index", "Account");
            }
            catch
            {
                SetAlert("Thêm mới thất bại", "error");
                return View(acc);
            }
        }

        // GET: /Account/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AccountChuHoNhanVien acc = new AccountChuHoNhanVien(id);
            if (acc.GetNguoiDung(id) == null)
            {
                return HttpNotFound();
            }
            return View(acc);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(AccountChuHoNhanVien acc)
        {
            try
            {
                if (acc.CheckEmail(acc.Email) > 1)
                {
                    SetAlert("Email đã tồn tại", "warning");
                    return View(acc);
                }
                Account account = db.Accounts.Find(acc.UserID);
                var nguoidung = acc.CreateNguoiDung(acc.UserID);
                nguoidung.DiaChi = acc.DiaChi;
                nguoidung.GioiTinh = acc.GioiTinh;
                nguoidung.HoTen = acc.HoTen;
                nguoidung.NgaySinh = acc.NgaySinh;
                nguoidung.SoDienThoai = acc.SoDienThoai;
                account.Email = acc.Email;
                db.SaveChanges();
                SetAlert("Sửa thành công tài khoản <b>" + acc.UserID + "</b>", "success");
                if (acc.UserID.StartsWith("NV"))
                {
                    return RedirectToAction("Index");
                }
                return RedirectToAction("AccountChuHo");
            }
            catch
            {
                SetAlert("Sửa thất bại", "error");
                return View(acc);
            }
        }


        // GET: /Account/Delete/5
        public ActionResult Delete(string id)
        {
            try
            {
                Account account = db.Accounts.Find(id);
                if (id.StartsWith("NV"))
                {
                    NhanVien nhanvien = db.NhanViens.Find(id);
                    db.NhanViens.Remove(nhanvien);
                    db.Accounts.Remove(account);
                    db.SaveChanges();
                    SetAlert("Xóa thành công tài khoản " + id, "success");
                    return RedirectToAction("Index");
                }

                ChuHoKinhDoanh chuho = db.ChuHoKinhDoanhs.Find(id);
                db.ChuHoKinhDoanhs.Remove(chuho);
                db.Accounts.Remove(account);
                db.SaveChanges();
                SetAlert("Xóa thành công tài khoản " + id, "success");
                return RedirectToAction("AccountChuHo");
            }
            catch
            {
                SetAlert("Xóa thất bại tài khoản " + id, "error");
                if (id.StartsWith("NV"))
                {
                    return RedirectToAction("Index");

                }
                return RedirectToAction("AccountChuHo");
            }
        }

        [HttpPost]
        public JsonResult ChangeTrangThai(string id)
        {
            Account account = db.Accounts.Find(id);
            if (account.TrangThai)
            {
                account.TrangThai = false;
            }
            else
            {
                account.TrangThai = true;
            }
            db.SaveChanges();
            return Json(new
            {
                trangthai = account.TrangThai
            });
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
