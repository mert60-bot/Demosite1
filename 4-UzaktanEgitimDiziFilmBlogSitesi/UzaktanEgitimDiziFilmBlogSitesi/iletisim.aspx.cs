using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UzaktanEgitimDiziFilmBlogSitesi
{
    public partial class iletisim : System.Web.UI.Page
    {
        UzaktanEgitimDiziFilmBlogSitesiASPEntities db = new UzaktanEgitimDiziFilmBlogSitesiASPEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBLMESAJLAR msj = new TBLMESAJLAR();
            msj.Mesaj = TextBox5.Text;
            msj.Email = TextBox2.Text;
            msj.Sehır = TextBox4.Text;
            msj.TEL = TextBox3.Text;
            msj.ISIM = TextBox1.Text;
            db.TBLMESAJLAR.Add(msj);
            db.SaveChanges();
            Response.Redirect("Default.aspx");
            
            

        }
    }
}