using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QLHoKinhDoanhMVC
{
    [Serializable]
    public class UserLogin
    {
        public string UserID { set; get; }
        public int MaQuyen { set; get; }
    }
}