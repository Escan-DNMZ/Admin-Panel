using Admin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace Test.Controllers
{
    public class HomeController : Controller
    {
        KullanicilarEntities1 db = new KullanicilarEntities1();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(FormCollection Get)
        {

            kullanici k = new kullanici();
            k.Name = Get["Name"];
            k.Surname = Get["Surname"];
            k.Job = Get["Job"];
            k.Description = Get["Description"];

            db.kullanici.Add(k);
            db.SaveChanges();

            return RedirectToAction("Index", "Home");
        }
        public ActionResult List()
        {
            var listele = db.kullanici.OrderBy(x => x.Id).ToList();

            return View(listele);
        }
        public ActionResult Details(int id)
        {
            var f = db.kullanici.Find(id);


            return View(f);
        }
        public ActionResult Delete(int id)
        {
            var f = db.kullanici.Find(id);

            db.kullanici.Remove(f);
            db.SaveChanges();
            return RedirectToAction("Index", "Home");
        }
        public ActionResult Get(int Id)
        {
            var k = db.kullanici.Find(Id);

            return View();
        }
        [HttpPost]
        public ActionResult Update(kullanici f)
        {
            var u = db.kullanici.Find(f.Id);
            u.Name = f.Name;
            u.Surname = f.Surname;
            u.Job = f.Job;
            u.Description = f.Description;

            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}