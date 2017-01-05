namespace QLHoKinhDoanhMVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Thue")]
    public partial class Thue
    {
        [Key]
        [StringLength(50)]
        public string MaThue { get; set; }

        [Required]
        [StringLength(20)]
        public string MaKinhDoanh { get; set; }

        [Required]
        [StringLength(50)]
        public string ThuNhapHangThang { get; set; }

        [Required]
        [StringLength(50)]
        public string TienThue { get; set; }

        public virtual ChuHoKinhDoanh ChuHoKinhDoanh { get; set; }
    }
}
