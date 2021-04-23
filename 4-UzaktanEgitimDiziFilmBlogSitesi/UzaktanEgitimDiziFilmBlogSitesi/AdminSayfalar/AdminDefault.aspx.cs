using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace UzaktanEgitimDiziFilmBlogSitesi.AdminSayfalar
{
    public partial class AdminDefault : System.Web.UI.Page
    {
        UzaktanEgitimDiziFilmBlogSitesiASPEntities db = new UzaktanEgitimDiziFilmBlogSitesiASPEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var degerler = db.TBLBLOG.ToList();
            Repeater1.DataSource = degerler;
            Repeater1.DataBind();
        }
    }
}