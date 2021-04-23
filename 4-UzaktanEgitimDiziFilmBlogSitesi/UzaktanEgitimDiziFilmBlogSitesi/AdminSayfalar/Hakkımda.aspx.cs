using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UzaktanEgitimDiziFilmBlogSitesi;

namespace UzaktanEgitimDiziFilmBlogSitesi.AdminSayfalar
{
    
    public partial class Hakkımda : System.Web.UI.Page
    {
        UzaktanEgitimDiziFilmBlogSitesiASPEntities db = new UzaktanEgitimDiziFilmBlogSitesiASPEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                var deger = db.TBLHAKKIMDA.Find(1);
            TextBox1.Text = deger.HAKKIMDA;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {           
                var deger = db.TBLHAKKIMDA.Find(1);
                deger.HAKKIMDA = TextBox1.Text;           
                db.SaveChanges();
                Label1.Text = "Hakkımda Yazınız Güncellendi...";
        }
    }
}