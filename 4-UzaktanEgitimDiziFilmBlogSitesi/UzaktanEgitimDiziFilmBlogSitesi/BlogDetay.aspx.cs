using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UzaktanEgitimDiziFilmBlogSitesi
{
    public partial class BlogDetay : System.Web.UI.Page
    {
        UzaktanEgitimDiziFilmBlogSitesiASPEntities db = new UzaktanEgitimDiziFilmBlogSitesiASPEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //çağrılan film
            int gelenid = int.Parse(Request.QueryString["blogid"]);
            var degerler = db.TBLBLOG.Where(s => s.BLOGID == gelenid).ToList();
            Repeater1.DataSource = degerler;
            Repeater1.DataBind();

            //bu filmin yorumları
            var yorumlar = db.TBLYORUMLAR.Where(z => z.YORUMBLOG == gelenid).ToList();
            Repeater2.DataSource = yorumlar;
            Repeater2.DataBind();

            int yorumsayı =yorumlar.Count();
            Label1.Text = yorumsayı.ToString();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBLYORUMLAR y = new TBLYORUMLAR();
            y.KULLANICIADI = TextBox1.Text;
            y.KULLANICIMAIL = TextBox2.Text;
            y.YORUMICERIK = TextBox3.Text;
            y.YORUMBLOG = int.Parse(Request.QueryString["blogid"]);
            db.TBLYORUMLAR.Add(y);
            db.SaveChanges();
            Response.Redirect("BlogDetay.aspx?blogid=" + int.Parse(Request.QueryString["blogid"]));
        }
    }
}