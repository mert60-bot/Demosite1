using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UzaktanEgitimDiziFilmBlogSitesi;


namespace UzaktanEgitimDiziFilmBlogSitesi
{
    public partial class Login : System.Web.UI.Page
    {
        UzaktanEgitimDiziFilmBlogSitesiASPEntities db = new UzaktanEgitimDiziFilmBlogSitesiASPEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            var kayit = db.TBLKULLANICI.FirstOrDefault(x => x.MAIL == TextBox2.Text && x.SIFRE == TextBox1.Text);//adminse

            if (kayit != null)
            {
                Session["kullanici"] = kayit.KULLANICIADI;
                Session["adsoyad"] = kayit.AD + " " + kayit.SOYAD;
                Session["idd"] = kayit.ID;

                if (kayit.YETKI == "A")
                {
                    Session["admin"] = kayit.MAIL;
                    Response.Redirect("/AdminSayfalar/AdminDefault.aspx");
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }

            }

            else
            {
                Response.Write("Email veya şifre hatalı");
            }
        }
    }
}