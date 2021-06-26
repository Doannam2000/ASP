using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BaiTap1.Controllers
{
    public class ViDuController : Controller
    {
        // GET: ViDu
        public ActionResult Index()
        {
            return View();
        }


        //GET: ViDu/Welcome/
        public ActionResult Welcome(string name,int ID=1)
        {
            ViewBag.ThongBao = "Xin chào " + name;
            ViewBag.Number = ID;
            return View();
        }

    }
}