namespace QLHoKinhDoanhMVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ThongBao")]
    public partial class ThongBao
    {
        [Key]
        public int MaThongBao { get; set; }

        [Required(ErrorMessage = "Tiêu đè thông báo không được rỗng")]
        [StringLength(500)]
        public string TieuDe { get; set; }

        [StringLength(500)]
        public string MoTa { get; set; }

        [Column(TypeName = "ntext")]
        public string NoiDung { get; set; }

        public DateTime? NgayDang { get; set; }

        [StringLength(20)]
        public string UserID { get; set; }

        public virtual Account Account { get; set; }
    }
}
