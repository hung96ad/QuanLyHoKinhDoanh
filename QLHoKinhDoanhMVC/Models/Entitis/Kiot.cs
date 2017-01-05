namespace QLHoKinhDoanhMVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Kiot")]
    public partial class Kiot
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Kiot()
        {
            HopDongKiots = new HashSet<HopDongKiot>();
        }

        [Key]
        [StringLength(10)]
        public string MaKiot { get; set; }

        [Required(ErrorMessage = "Diện tích không được để trống")]
        public double DienTich { get; set; }

        [Required(ErrorMessage = "Số thứ tự không được trống")]
        [Range(1, 999999, ErrorMessage = "Số thứ tự phải là số dương")]
        public int SoTT { get; set; }

        [Required(ErrorMessage = "Số tầng không được trống")]
        [Range(1, 999999, ErrorMessage = "Số tầng phải là số dương")]

        public int Tang { get; set; }

        public bool TrangThai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HopDongKiot> HopDongKiots { get; set; }

    }
}
