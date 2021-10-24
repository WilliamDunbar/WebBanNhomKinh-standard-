using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PagedList;

namespace WebBanNhomKinh.Models
{
    public class QuanLyTinTuc
    {
        public  IPagedList<TinTuc> DanhSachTinTuc { get; set; }
        public TinTuc TinTuc { get; set; }
       
    }
}