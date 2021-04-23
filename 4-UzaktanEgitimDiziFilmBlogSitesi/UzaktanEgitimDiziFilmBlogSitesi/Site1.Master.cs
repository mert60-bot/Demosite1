using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UzaktanEgitimDiziFilmBlogSitesi;

namespace UzaktanEgitimDiziFilmBlogSitesi.web1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        UzaktanEgitimDiziFilmBlogSitesiASPEntities db = new UzaktanEgitimDiziFilmBlogSitesiASPEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] == null)
            {
                Label1.Visible = false;
                pnlgiriş.Visible = true;
                pnlçıkış.Visible = false;
            }
            else
            {
                Label1.Text = "Merhaba " + Session["adsoyad"].ToString();
                pnlçıkış.Visible = true;
                pnlgiriş.Visible = false;

                int id = int.Parse(Session["idd"].ToString());
                var uye = db.TBLKULLANICI.Find(id);
                Image1.ImageUrl = uye.Resim;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // Response.Redirect("Arama.aspx?gelen=" + TextBox1.Text);
        }
    }
}