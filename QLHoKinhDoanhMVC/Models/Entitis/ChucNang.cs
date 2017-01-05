namespace QLHoKinhDoanhMVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChucNang")]
    public partial class ChucNang
    {
        [Key]
        [StringLength(20)]
        public string Ma { get; set; }

        [Required]
        [StringLength(50)]
        public string Ten { get; set; }

        [StringLength(500)]
        public string MoTa { get; set; }
    }
}
