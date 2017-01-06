namespace QLHoKinhDoanhMVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Quyen")]
    public partial class Quyen
    {
        public int ID { get; set; }

        public int MaQuyen { get; set; }

        [Required]
        [StringLength(50)]
        public string Action { get; set; }

        [StringLength(100)]
        public string Mota { get; set; }

        public virtual PhanQuyen PhanQuyen { get; set; }

        public virtual Action Action1 { get; set; }

    }
}
