using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BaiTap6.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult OneColumn()
        {
            return View();
        }
        public ActionResult TwoColumn()
        {
            return View();
        }
        public ActionResult TwoColumn2()
        {
            return View();
        }
    }
}