using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UzaktanEgitimDiziFilmBlogSitesi
{
    public partial class Default : System.Web.UI.Page
    {
        UzaktanEgitimDiziFilmBlogSitesiASPEntities db = new UzaktanEgitimDiziFilmBlogSitesiASPEntities();
        protected void Page_Load(object sender, EventArgs e)
        {                                  
            Repeater1.DataSource = db.TBLKATEGORILER.ToList();
            Repeater1.DataBind();


            var degerler = db.TBLBLOG.ToList();
            Repeater2.DataSource = degerler;
            Repeater2.DataBind();

            int topblog = degerler.Count();
            Label1.Text = topblog.ToString();


            Repeater3.DataSource = db.TBLBLOG.OrderByDescending(s => s.BLOGID).Take(3).ToList();
            Repeater3.DataBind();

            Repeater4.DataSource = db.TBLYORUMLAR.OrderByDescending(x => x.YORUMID).Take(4).ToList();
            Repeater4.DataBind();

        }
    }
}