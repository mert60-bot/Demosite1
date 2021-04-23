using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UzaktanEgitimDiziFilmBlogSitesi;

namespace UzaktanEgitimDiziFilmBlogSitesi.AdminSayfalar
{
    public partial class BlogGuncelle : System.Web.UI.Page
    {
        UzaktanEgitimDiziFilmBlogSitesiASPEntities db = new UzaktanEgitimDiziFilmBlogSitesiASPEntities();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = int.Parse(Request.QueryString["blogid"]);

                   if (Page.IsPostBack == false)
            {
                var kategoriler = db.TBLKATEGORILER.ToList();
                DropDownList1.DataSource = kategoriler;
                DropDownList1.DataTextField = "KATEGORIADI";
                DropDownList1.DataValueField = "ID";
                DropDownList1.DataBind();


                var blog = db.TBLBLOG.Find(id);
                txtbaşlık.Text = blog.BLOGBASLIK;
                txtiçerik.Text = blog.BLOGICERIK;
                txttarih.Text = blog.BLOGTARIH.Value.ToString("yyyy.MM.dd");
                Image1.ImageUrl = blog.BLOGGORSEL;
                DropDownList1.SelectedValue = blog.BLOGKATEGORI.ToString();

                txttarih.Text = DateTime.Now.ToString("yyyy-MM-dd");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            var guncblok = db.TBLBLOG.Find(id);
            guncblok.BLOGBASLIK = txtbaşlık.Text;
            guncblok.BLOGICERIK = txtiçerik.Text;
            guncblok.BLOGKATEGORI = int.Parse(DropDownList1.SelectedValue);
            if (FileUpload1.HasFile)
            {
                guncblok.BLOGGORSEL = "/YüklenenResimler/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("//YüklenenResimler/" + FileUpload1.FileName));
            }
            
            guncblok.BLOGTARIH = DateTime.Parse(txttarih.Text);
            db.SaveChanges();
            Response.Redirect("AdminDefault.aspx");
        }
    }
}