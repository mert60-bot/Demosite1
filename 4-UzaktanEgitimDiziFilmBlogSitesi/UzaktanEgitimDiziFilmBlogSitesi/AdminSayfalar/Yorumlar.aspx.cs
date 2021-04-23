using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UzaktanEgitimDiziFilmBlogSitesi.AdminSayfalar
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        UzaktanEgitimDiziFilmBlogSitesiASPEntities db = new UzaktanEgitimDiziFilmBlogSitesiASPEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var degerler = db.TBLYORUMLAR.OrderByDescending(x => x.YORUMID).ToList();

            Pager.DataSource = degerler;
            Pager.BindToControl = Repeater1;

            Repeater1.DataSource = Pager.DataSourcePaged;
            Repeater1.DataBind();
        }
    }
}