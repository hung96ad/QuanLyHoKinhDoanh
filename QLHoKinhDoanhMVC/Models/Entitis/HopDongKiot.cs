namespace QLHoKinhDoanhMVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Linq;

    [Table("HopDongKiot")]
    public partial class HopDongKiot : IHopDongKiot
    {
        [Key]
        public Guid MaHopDong { get; set; }

        public string MaKinhDoanh { get; set; }

        public string MaKiot { get; set; }

        public DateTime NgayBatDau { get; set; }

        public DateTime NgayKetThuc { get; set; }

        public bool TrangThai { get; set; }

        public double GiaThue { get; set; }

        public virtual ChuHoKinhDoanh ChuHoKinhDoanh { get; set; }

        public virtual Kiot Kiot { get; set; }

        public void CheckHopDong()
        {
            QuanLyHoKinhDoanhDBContext db = new QuanLyHoKinhDoanhDBContext();
            var listhopdong = (from hopdong in db.HopDongKiots
                               where hopdong.TrangThai == true
                               select hopdong).ToList();
            foreach (var item in listhopdong)
            {
                if (item.NgayKetThuc < DateTime.Now)
                {
                    item.TrangThai = false;
                    KiotChange kiot = new KiotChange();
                    kiot.ChangeTrangThai(item.MaKiot);
                }
            }
            db.SaveChanges();
        }
    }
}
