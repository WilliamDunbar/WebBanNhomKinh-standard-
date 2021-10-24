using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PagedList;

namespace WebBanNhomKinh.Models
{
    public class QuanLyCongTrinh
    {
        public IPagedList<CongTrinhNoiBat> DanhSachCongTrinh { get; set; }
        public CongTrinhNoiBat CongTrinh { get; set; }
    }
}