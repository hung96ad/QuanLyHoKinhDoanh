namespace QLHoKinhDoanhMVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Account")]
    public partial class Account : IAccount
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Account()
        {
            ThongBaos = new HashSet<ThongBao>();
        }

        [Key]
        [StringLength(20)]
        public string UserID { get; set; }

        [Required]
        [StringLength(32)]
        public string MatKhau { get; set; }

        public bool TrangThai { get; set; }

        public int MaQuyen { get; set; }

        public string Email { get; set; }

        [Column(TypeName = "image")]
        public byte[] Image { get; set; }

        public virtual PhanQuyen PhanQuyen { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ThongBao> ThongBaos { get; set; }
    }
}
