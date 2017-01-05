namespace QLHoKinhDoanhMVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChuHoKinhDoanh")]
    public class ChuHoKinhDoanh : NguoiDung
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ChuHoKinhDoanh()
        {
            HopDongKiots = new HashSet<HopDongKiot>();
            PhiHoKinhDoanhs = new HashSet<PhiHoKinhDoanh>();
            Thues = new HashSet<Thue>();
            TienDienNuocs = new HashSet<TienDienNuoc>();
        }

        [Key]
        [StringLength(20)]
        public string MaKinhDoanh { get; set; }

        public override string HoTen
        {
            get { return _HoTen; }
            set { _HoTen = value; }
        }

        public override DateTime NgaySinh
        {
            get { return _NgaySinh; }
            set { _NgaySinh = value; }
        }

        public override string SoCMT
        {
            get { return _SoCMT; }
            set { _SoCMT = value; }
        }

        public override string DiaChi
        {
            get { return _DiaChi; }
            set { _DiaChi = value; }
        }

        public override string GioiTinh
        {
            get { return _GioiTinh; }
            set { _GioiTinh = value; }
        }

        public override string SoDienThoai
        {
            get { return _SoDienThoai; }
            set { _SoDienThoai = value; }
        }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HopDongKiot> HopDongKiots { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhiHoKinhDoanh> PhiHoKinhDoanhs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Thue> Thues { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TienDienNuoc> TienDienNuocs { get; set; }
    }
}
