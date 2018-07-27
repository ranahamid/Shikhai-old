using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Shikhai.Models;

namespace Shikhai.Controllers
{
    public class ClassNamesController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: ClassNames
        public async Task<ActionResult> Index()
        {
            return View(await db.ClassNames.ToListAsync());
        }

        // GET: ClassNames/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ClassName className = await db.ClassNames.FindAsync(id);
            if (className == null)
            {
                return HttpNotFound();
            }
            return View(className);
        }

        // GET: ClassNames/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ClassNames/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "Id,Name,CreatedOnUtc,UpdatedOnUtc,Published")] ClassName className)
        {
            if (ModelState.IsValid)
            {
                db.ClassNames.Add(className);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(className);
        }

        // GET: ClassNames/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ClassName className = await db.ClassNames.FindAsync(id);
            if (className == null)
            {
                return HttpNotFound();
            }
            return View(className);
        }

        // POST: ClassNames/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "Id,Name,CreatedOnUtc,UpdatedOnUtc,Published")] ClassName className)
        {
            if (ModelState.IsValid)
            {
                db.Entry(className).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(className);
        }

        // GET: ClassNames/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ClassName className = await db.ClassNames.FindAsync(id);
            if (className == null)
            {
                return HttpNotFound();
            }
            return View(className);
        }

        // POST: ClassNames/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            ClassName className = await db.ClassNames.FindAsync(id);
            db.ClassNames.Remove(className);
            await db.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
