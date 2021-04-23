using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UzaktanEgitimDiziFilmBlogSitesi;

namespace UzaktanEgitimDiziFilmBlogSitesi.AdminSayfalar
{
    public partial class YorumSil : System.Web.UI.Page
    {
        UzaktanEgitimDiziFilmBlogSitesiASPEntities db = new UzaktanEgitimDiziFilmBlogSitesiASPEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

      

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["yorumid"]);
            var silincekyorum = db.TBLYORUMLAR.Find(id);
            db.TBLYORUMLAR.Remove(silincekyorum);
            db.SaveChanges();
            Response.Redirect("Yorumlar.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Yorumlar.aspx");
        }
    }
}