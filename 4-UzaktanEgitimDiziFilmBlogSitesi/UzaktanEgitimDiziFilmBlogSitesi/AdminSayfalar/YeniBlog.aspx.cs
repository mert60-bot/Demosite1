using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace UzaktanEgitimDiziFilmBlogSitesi.AdminSayfalar
{
    public partial class YeniBlog : System.Web.UI.Page
    {
        UzaktanEgitimDiziFilmBlogSitesiASPEntities db = new UzaktanEgitimDiziFilmBlogSitesiASPEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                var kategoriler = db.TBLKATEGORILER.ToList();
                DropDownList1.DataSource = kategoriler;
                DropDownList1.DataTextField = "KATEGORIADI";
                DropDownList1.DataValueField = "ID";
                DropDownList1.DataBind();

                txttarih.Text = DateTime.Now.ToString("yyyy-MM-dd");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //resim yüklemeden kayıt yapılmasın
            TBLBLOG c = new TBLBLOG();
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("//YüklenenResimler/" + FileUpload1.FileName));
                c.BLOGGORSEL = "/YüklenenResimler/" + FileUpload1.FileName;
               
            }
            else
            {
                c.BLOGGORSEL = txtHızlıResim.Text;
            }
                
                c.BLOGBASLIK = txtbaşlık.Text;
                c.BLOGICERIK = txtiçerik.Text;
                c.BLOGTARIH = DateTime.Parse(txttarih.Text);
                c.BLOGKATEGORI = int.Parse(DropDownList1.SelectedValue);
                
                db.TBLBLOG.Add(c);
                db.SaveChanges();
                Response.Redirect("AdminDefault.aspx");

               
            }
        }
    }
