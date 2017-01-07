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

        public int Ma { get; set; }

        public virtual ChucNang ChucNang { get; set; }

        public virtual PhanQuyen PhanQuyen { get; set; }
    }
}
