namespace QLHoKinhDoanhMVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ThietBi")]
    public partial class ThietBi
    {
        [Key]
        [StringLength(50)]
        public string MaThietBi { get; set; }

        [StringLength(50)]
        public string TenThietBi { get; set; }

        [StringLength(50)]
        public string SoLuong { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayKiemTra { get; set; }

        [Required]
        [StringLength(20)]
        public string MaNhanVien { get; set; }

        public virtual NhanVien NhanVien { get; set; }
    }
}
