using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QLHoKinhDoanhMVC.Models
{
    public class LoginModel
    {
        public string UserID { get; set; }

        public string MatKhau { get; set; }

        public bool TrangThai { get; set; }

        public bool RememberMe { get; set; }

        public int Login(string userid, string matkhau)
        {
            QuanLyHoKinhDoanhDBContext db = new QuanLyHoKinhDoanhDBContext();
            var result = db.Accounts.SingleOrDefault(m => m.UserID == userid);
            if (result == null)
            {
                return 0;
            }
            if (result.TrangThai == false)
            {
                return -1;
            }
            if (result.MatKhau == matkhau)
            {
                return 1;
            }
            return -2;
        }
    }
}