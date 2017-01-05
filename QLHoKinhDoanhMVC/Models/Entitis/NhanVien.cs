namespace QLHoKinhDoanhMVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NhanVien")]
    public partial class NhanVien : NguoiDung
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NhanVien()
        {
            ThietBis = new HashSet<ThietBi>();
        }

        [Key]
        [StringLength(20)]
        public string MaNhanVien { get; set; }

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
        [Column(TypeName = "date")]
        public DateTime? NgayBatDau { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayKetThuc { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ThietBi> ThietBis { get; set; }

        public virtual TienLuongNV TienLuongNV { get; set; }
    }
}
