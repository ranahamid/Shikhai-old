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
    public class RangesController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: Ranges
        public async Task<ActionResult> Index()
        {
            return View(await db.Ranges.ToListAsync());
        }

        // GET: Ranges/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Range range = await db.Ranges.FindAsync(id);
            if (range == null)
            {
                return HttpNotFound();
            }
            return View(range);
        }

        // GET: Ranges/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Ranges/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "Id,Name,LowerLimit,UpperLimit,CreatedOnUtc,UpdatedOnUtc,Published")] Range range)
        {
            if (ModelState.IsValid)
            {
                db.Ranges.Add(range);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(range);
        }

        // GET: Ranges/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Range range = await db.Ranges.FindAsync(id);
            if (range == null)
            {
                return HttpNotFound();
            }
            return View(range);
        }

        // POST: Ranges/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "Id,Name,LowerLimit,UpperLimit,CreatedOnUtc,UpdatedOnUtc,Published")] Range range)
        {
            if (ModelState.IsValid)
            {
                db.Entry(range).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(range);
        }

        // GET: Ranges/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Range range = await db.Ranges.FindAsync(id);
            if (range == null)
            {
                return HttpNotFound();
            }
            return View(range);
        }

        // POST: Ranges/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Range range = await db.Ranges.FindAsync(id);
            db.Ranges.Remove(range);
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
