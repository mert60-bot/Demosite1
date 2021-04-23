using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UzaktanEgitimDiziFilmBlogSitesi
{
    public partial class ProfilGüncelle : System.Web.UI.Page
    {
        UzaktanEgitimDiziFilmBlogSitesiASPEntities db = new UzaktanEgitimDiziFilmBlogSitesiASPEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Session["idd"].ToString());

            var kullanici = db.TBLKULLANICI.Find(id);

            if (Page.IsPostBack == false)
            {
                txtad.Text = kullanici.AD;
                txtsoyad.Text = kullanici.SOYAD;
                txtsifre.Text = kullanici.SIFRE;
                txtresim.Text = kullanici.Resim;
                txtkullanici.Text = kullanici.KULLANICIADI;
                txtadres.Text = kullanici.ADRES;
                txttel.Text = kullanici.TEL;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                var kisi = db.TBLKULLANICI.Find(int.Parse(Session["idd"].ToString()));

                kisi.AD = txtad.Text;
                kisi.SOYAD = txtsoyad.Text;
                kisi.SIFRE = txtsifre.Text;
                kisi.ADRES = txtadres.Text;
                kisi.TEL = txttel.Text;
                kisi.Resim = txtresim.Text;
                kisi.KULLANICIADI = txtkullanici.Text;
                db.SaveChanges();
                Response.Redirect("Default.aspx");
            }
    }
}