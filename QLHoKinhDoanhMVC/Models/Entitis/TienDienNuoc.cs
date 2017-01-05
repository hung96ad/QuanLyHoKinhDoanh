namespace QLHoKinhDoanhMVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TienDienNuoc")]
    public partial class TienDienNuoc
    {
        [StringLength(50)]
        public string ID { get; set; }

        [Required]
        [StringLength(20)]
        public string MaKinhDoanh { get; set; }

        [Column(TypeName = "date")]
        public DateTime NgayGhi { get; set; }

        public int SoDien { get; set; }

        public int GiaDien { get; set; }

        public int TienDien { get; set; }

        public int SoKhoiNuoc { get; set; }

        public int GiaNuoc { get; set; }

        public int TienNuoc { get; set; }

        public bool? TinhTrang { get; set; }

        public virtual ChuHoKinhDoanh ChuHoKinhDoanh { get; set; }
    }
}
