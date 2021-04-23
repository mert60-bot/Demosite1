using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UzaktanEgitimDiziFilmBlogSitesi;

namespace UzaktanEgitimDiziFilmBlogSitesi
{
    public partial class LogOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon(); //tüm sessionları temizler

            Response.Redirect("Default.aspx");
        }
    }
}