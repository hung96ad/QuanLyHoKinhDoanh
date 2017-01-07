using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QLHoKinhDoanhMVC.Models
{
    public class QuyenAction
    {
        public int QuyenID { set; get; }
        public string QuyenName { set; get; }
        public string MoTa { set; get; }
        public bool IsGranted { set; get; }
    }
}