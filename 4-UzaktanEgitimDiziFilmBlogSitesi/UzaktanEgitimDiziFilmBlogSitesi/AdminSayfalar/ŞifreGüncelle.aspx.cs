using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UzaktanEgitimDiziFilmBlogSitesi;

namespace UzaktanEgitimDiziFilmBlogSitesi.AdminSayfalar
{
    public partial class ŞifreGüncelle : System.Web.UI.Page
    {
        UzaktanEgitimDiziFilmBlogSitesiASPEntities db = new UzaktanEgitimDiziFilmBlogSitesiASPEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Session["idd"].ToString());

            var uye = db.TBLKULLANICI.Find(id);

            if (txtsifre1.Text == txtsifre2.Text)
            {
                uye.SIFRE = txtsifre1.Text;
                db.SaveChanges();
                Response.Redirect("AdminDefault.aspx");
            }
            else
            {
                Label3.Text = "Şifreler  aynı değil!!!";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDefault.aspx");
        }
    }
}