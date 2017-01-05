namespace QLHoKinhDoanhMVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NangCapCho")]
    public partial class NangCapCho
    {
        [Key]
        [StringLength(50)]
        public string MaNangCap { get; set; }

        [StringLength(50)]
        public string Ten { get; set; }

        [StringLength(50)]
        public string MoTa { get; set; }

        public double? SoTien { get; set; }
    }
}
