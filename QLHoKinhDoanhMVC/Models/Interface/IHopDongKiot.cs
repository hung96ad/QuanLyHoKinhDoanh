using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;

namespace QLHoKinhDoanhMVC.Models
{
    public interface IHopDongKiot
    {
        Guid MaHopDong { get; set; }

        [Required]
        [StringLength(20)]
        string MaKinhDoanh { get; set; }

        [Column(TypeName = "date")]
        DateTime NgayBatDau { get; set; }

        [Column(TypeName = "date")]
        DateTime NgayKetThuc { get; set; }

        bool TrangThai { get; set; }

    }
}
