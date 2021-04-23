using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace UzaktanEgitimDiziFilmBlogSitesi.AdminSayfalar
{
    public partial class BlogSil : System.Web.UI.Page
    {
        UzaktanEgitimDiziFilmBlogSitesiASPEntities db = new UzaktanEgitimDiziFilmBlogSitesiASPEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["blogid"]);
            var silincekyorum = db.TBLBLOG.Find(id);
            db.TBLBLOG.Remove(silincekyorum);
            db.SaveChanges();
            Response.Redirect("AdminDefault.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDefault.aspx");
        }
    }
}