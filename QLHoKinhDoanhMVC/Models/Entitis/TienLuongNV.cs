namespace QLHoKinhDoanhMVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TienLuongNV")]
    public partial class TienLuongNV
    {
        [Key]
        [StringLength(20)]
        public string MaNhanVien { get; set; }

        public int? LuongCoBan { get; set; }

        public double? MucLuong { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayNhan { get; set; }

        public double? TienLuong { get; set; }

        public bool? TinhTrang { get; set; }

        public virtual NhanVien NhanVien { get; set; }
    }
}
