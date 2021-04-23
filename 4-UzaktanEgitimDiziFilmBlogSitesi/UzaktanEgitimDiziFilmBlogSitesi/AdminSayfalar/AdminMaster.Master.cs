using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UzaktanEgitimDiziFilmBlogSitesi;

namespace UzaktanEgitimDiziFilmBlogSitesi.Admin
{
    
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        UzaktanEgitimDiziFilmBlogSitesiASPEntities db = new UzaktanEgitimDiziFilmBlogSitesiASPEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            else
            {

                int kımıd = int.Parse(Session["idd"].ToString());
                var kım = db.TBLKULLANICI.Find(kımıd);

                Label2.Text = kım.AD + "  " + kım.SOYAD;
                Image1.ImageUrl = kım.Resim;

                Label1.Text = kım.KULLANICIADI;
            }

                    }
    }
}