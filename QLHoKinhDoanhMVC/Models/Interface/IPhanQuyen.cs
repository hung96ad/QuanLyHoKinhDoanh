using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;

namespace QLHoKinhDoanhMVC.Models
{
    interface IPhanQuyen
    {
        int MaQuyen { get; set; }

        [StringLength(50, ErrorMessage = "Tối đa 50 ký tự")]
        string LoaiQuyen { get; set; }

    }
}
