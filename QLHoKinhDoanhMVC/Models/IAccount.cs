using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;

namespace QLHoKinhDoanhMVC.Models
{
    interface IAccount
    {
        [StringLength(20)]
        string UserID { set; get; }

        bool TrangThai { set; get; }

        [EmailAddress(ErrorMessage = "Vui lòng nhập đúng email")]
        [StringLength(100, ErrorMessage = "Email tối đa 100 ký tự")]
        string Email { set; get; }

        int MaQuyen { set; get; }
    }
}
