using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;

namespace QLHoKinhDoanhMVC.Models
{
    public abstract class NguoiDung
    {
        protected string _HoTen;
        protected DateTime _NgaySinh;
        protected string _SoCMT;
        protected string _DiaChi;
        protected string _GioiTinh;
        protected string _SoDienThoai;

        [RegularExpression(@"^(\p{L}+\s?)+$", ErrorMessage = "Vui lòng nhập đúng họ tên")]
        [Required(ErrorMessage = "Họ tên không được trống")]
        [StringLength(100, ErrorMessage = "Họ tên tối đa 100 ký tự")]
        public abstract string HoTen { get; set; }

        [Column(TypeName = "date")]
        [Required(ErrorMessage = "Ngày sinh không được trống")]
        public abstract DateTime NgaySinh { get; set; }

        [StringLength(12, ErrorMessage = "Số chứng minh thư tối đa 12 chữ số")]
        [Required(ErrorMessage = "Số chứng minh thư không được trống")]
        [RegularExpression(@"^\d{9,12}$", ErrorMessage = "Số chứng minh thư phải là 9 đến 12 chữ số")]
        public abstract string SoCMT { get; set; }

        [StringLength(500, ErrorMessage = "Địa chỉ tối đa 500 ký tự")]
        [Required(ErrorMessage = "Địa chỉ không được trống")]
        public abstract string DiaChi { get; set; }

        [StringLength(50, ErrorMessage = "Giới tính tối đa 50 ký tự")]
        public abstract string GioiTinh { get; set; }

        [StringLength(15, ErrorMessage = "Số điện thoại có ít nhất 10 ký tự, nhiều nhất 15 ký tự")]
        [RegularExpression(@"^(\+\s?)?((?<!\+.*)\(\+?\d+([\s\-\.]?\d+)?\)|\d+)([\s\-\.]?(\(\d+([\s\-\.]?\d+)?\)|\d+))*(\s?(x|ext\.?)\s?\d+)?$",
            ErrorMessage = "Vui lòng nhập đúng số điện thoại")]
        public abstract string SoDienThoai { get; set; }
    }
}