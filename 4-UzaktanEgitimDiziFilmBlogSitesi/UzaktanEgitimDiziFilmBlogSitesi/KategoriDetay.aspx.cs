using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UzaktanEgitimDiziFilmBlogSitesi
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        UzaktanEgitimDiziFilmBlogSitesiASPEntities db = new UzaktanEgitimDiziFilmBlogSitesiASPEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["katid"]);

            Repeater2.DataSource = db.TBLBLOG.Where(x => x.BLOGKATEGORI == id).ToList();
            Repeater2.DataBind();           


            Repeater1.DataSource =db.TBLKATEGORILER.OrderByDescending(z=> z.ID).Take(9).ToList();
            Repeater1.DataBind();




            Repeater3.DataSource = db.TBLBLOG.OrderByDescending(s => s.BLOGID).Take(3).ToList();
            Repeater3.DataBind();

            Repeater4.DataSource = db.TBLYORUMLAR.OrderByDescending(x => x.YORUMID).Take(4).ToList();
            Repeater4.DataBind();
        }
    }
}