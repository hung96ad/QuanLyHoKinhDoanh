namespace QLHoKinhDoanhMVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PhiHoKinhDoanh")]
    public partial class PhiHoKinhDoanh
    {
        [Key]
        [StringLength(50)]
        public string MaPhi { get; set; }

        [Required]
        [StringLength(20)]
        public string MaKinhDoanh { get; set; }

        [Required]
        [StringLength(50)]
        public string TenPhi { get; set; }

        [Required]
        [StringLength(50)]
        public string SoTien { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayThu { get; set; }

        public bool TinhTrang { get; set; }

        [StringLength(4000)]
        public string MoTa { get; set; }

        public virtual ChuHoKinhDoanh ChuHoKinhDoanh { get; set; }
    }
}
