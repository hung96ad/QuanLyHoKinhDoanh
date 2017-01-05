using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QLHoKinhDoanhMVC.Models
{
    public class AccountChuHoNhanVien : NguoiDung, IAccount, IPhanQuyen
    {

        public override string HoTen { get; set; }

        public override DateTime NgaySinh { get; set; }

        public override string SoCMT { get; set; }

        public override string DiaChi { get; set; }

        public override string GioiTinh { get; set; }

        public override string SoDienThoai { get; set; }

        public string UserID { get; set; }

        public bool TrangThai { get; set; }

        public string Email { get; set; }

        public int MaQuyen { get; set; }

        public string LoaiQuyen { get; set; }

        QuanLyHoKinhDoanhDBContext db = null;
        public AccountChuHoNhanVien()
        {
            db = new QuanLyHoKinhDoanhDBContext();
        }

        public AccountChuHoNhanVien(string id)
        {
            db = new QuanLyHoKinhDoanhDBContext();

            if (id.StartsWith("NV"))
            {
                NhanVien nhanvien = db.NhanViens.Find(id);
                HoTen = nhanvien.HoTen;
                GioiTinh = nhanvien.GioiTinh;
                NgaySinh = nhanvien.NgaySinh;
                DiaChi = nhanvien.DiaChi;
                SoDienThoai = nhanvien.SoDienThoai;
            }
            else if (id.StartsWith("CH"))
            {
                ChuHoKinhDoanh chuho = db.ChuHoKinhDoanhs.Find(id);
                HoTen = chuho.HoTen;
                GioiTinh = chuho.GioiTinh;
                NgaySinh = chuho.NgaySinh;
                DiaChi = chuho.DiaChi;
                SoDienThoai = chuho.SoDienThoai;
            }
            Account account = db.Accounts.Find(id);
            UserID = account.UserID;
            TrangThai = account.TrangThai;
            Email = account.Email;
            MaQuyen = account.MaQuyen;
            LoaiQuyen = account.PhanQuyen.LoaiQuyen;
        }

        public NguoiDung GetNguoiDung(string id)
        {
            db = new QuanLyHoKinhDoanhDBContext();
            if (id.StartsWith("NV"))
            {
                return db.NhanViens.Find(id);
            }
            else if (id.StartsWith("CH"))
            {
                return db.ChuHoKinhDoanhs.Find(id);
            }
            return null;
        }

        public NguoiDung CreateNguoiDung(string id)
        {
            if (id.StartsWith("NV"))
            {
                return new NhanVien();
            }
            return new ChuHoKinhDoanh();
        }

        public IEnumerable<AccountChuHoNhanVien> GetListNhanVien()
        {
            var accounts = (from acc in db.Accounts
                            join nhanvien in db.NhanViens
                            on acc.UserID equals nhanvien.MaNhanVien
                            join phanquyen in db.PhanQuyens
                            on acc.MaQuyen equals phanquyen.MaQuyen
                            select new AccountChuHoNhanVien
                            {
                                NgaySinh = nhanvien.NgaySinh,
                                UserID = acc.UserID,
                                HoTen = nhanvien.HoTen,
                                Email = acc.Email,
                                TrangThai = acc.TrangThai,
                                LoaiQuyen = phanquyen.LoaiQuyen,
                                GioiTinh = nhanvien.GioiTinh,
                                SoDienThoai = nhanvien.SoDienThoai
                            });
            return accounts.ToList();
        }

        public IEnumerable<AccountChuHoNhanVien> GetListChuHo()
        {
            var accounts = (from acc in db.Accounts
                            join chuho in db.ChuHoKinhDoanhs
                            on acc.UserID equals chuho.MaKinhDoanh
                            join phanquyen in db.PhanQuyens
                            on acc.MaQuyen equals phanquyen.MaQuyen
                            select new AccountChuHoNhanVien
                            {
                                NgaySinh = chuho.NgaySinh,
                                UserID = acc.UserID,
                                HoTen = chuho.HoTen,
                                Email = acc.Email,
                                TrangThai = acc.TrangThai,
                                LoaiQuyen = phanquyen.LoaiQuyen,
                                GioiTinh = chuho.GioiTinh,
                                SoDienThoai = chuho.SoDienThoai
                            });
            return accounts.ToList();
        }
        
        public int CheckEmail(string email)
        {
            return db.Accounts.Count(m => m.Email == email);
        }

        public bool CheckUser(string userid)
        {
            return db.Accounts.Count(m => m.UserID == userid) > 0;
        }

        public bool CheckMatKhauMacDinh(string userid)
        {
            string matkhau = EncryptorMD5.MD5Hash(userid);
            return db.Accounts.Count(m => m.UserID == userid && m.MatKhau == matkhau) > 0;
        }
    }

}