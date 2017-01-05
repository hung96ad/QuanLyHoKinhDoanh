using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QLHoKinhDoanhMVC.Models
{
    public class KiotChange
    {
        public void ChangeTrangThai(string id)
        {
            QuanLyHoKinhDoanhDBContext db = new QuanLyHoKinhDoanhDBContext();
            Kiot kiot = db.Kiots.Find(id);
            kiot.TrangThai = true;
            db.SaveChanges();
        }
    }
}