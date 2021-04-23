using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UzaktanEgitimDiziFilmBlogSitesi;

namespace UzaktanEgitimDiziFilmBlogSitesi
{
    public partial class YeniÜye : System.Web.UI.Page
    {
        UzaktanEgitimDiziFilmBlogSitesiASPEntities db = new UzaktanEgitimDiziFilmBlogSitesiASPEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBLKULLANICI k = new TBLKULLANICI();
            k.AD = txtad.Text;
            k.SOYAD = txtsoyad.Text;
            k.SIFRE = txtsifre.Text;
            k.KULLANICIADI = txtkullanici.Text;
            k.MAIL = txtmail.Text;
            k.TEL = txttel.Text;
            k.ADRES = txtadres.Text;
            k.Resim = txtresim.Text;
            k.YETKI = "K";
            db.TBLKULLANICI.Add(k);
            db.SaveChanges();
            Response.Redirect("Default.aspx");
        }
    }
}