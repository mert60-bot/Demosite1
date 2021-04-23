using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UzaktanEgitimDiziFilmBlogSitesi;

namespace UzaktanEgitimDiziFilmBlogSitesi.AdminSayfalar
{
    public partial class MesajSil : System.Web.UI.Page
    {
        UzaktanEgitimDiziFilmBlogSitesiASPEntities db = new UzaktanEgitimDiziFilmBlogSitesiASPEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int idd = int.Parse(Request.QueryString["mid"]);

            var mesaj = db.TBLMESAJLAR.Find(idd);

            db.TBLMESAJLAR.Remove(mesaj);

            db.SaveChanges();

            Response.Redirect("AdminDefault.aspx");
        }
    }
}