<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="UzaktanEgitimDiziFilmBlogSitesi.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
<!--/header-->
<div class="contact-content">
	 <div class="container">
		     <div class="contact-info">
			 <h2>İLETİŞİM</h2>
			 <p>Bize buradan ulaşabilirsiniz.</p>
		     </div>
			 <div class="contact-details">				 
			 <form runat="server">
                 <asp:TextBox ID="TextBox1" runat="server" placeholder="Adınız..."></asp:TextBox>
                 <asp:TextBox ID="TextBox2" runat="server" placeholder="Email"></asp:TextBox>
                 <asp:TextBox ID="TextBox3" runat="server" placeholder="Telefon"></asp:TextBox>
                 <asp:TextBox ID="TextBox4" runat="server" placeholder="Şehir"></asp:TextBox>
                 <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Width="1075"  Height="200" placeholder="Mesajınız"></asp:TextBox>
				
                 <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click" />
			 </form>
		  </div>
		  <div class="contact-details">
			  <div class="col-md-6 contact-map">
				 <h4>Biz Burdayız</h4>
				 <div class="mapouter"><div class="gmap_canvas"><iframe width="600" height="400" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=600&amp;height=400&amp;hl=en&amp;q=zile meslek yüksekokulu&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe><a href="https://piratebayproxy.net/"></a></div><style>.mapouter{position:relative;text-align:right;width:600px;height:400px;}.gmap_canvas {overflow:hidden;background:none!important;width:600px;height:400px;}</style></div>
			  </div>
			  <div class="col-md-6 company_address">		 
					<h4>ADRES</h4>
					<p>Çekerek Yolu 3.km</p>
					<p>Zile Meslek YüksekOkulu</p>
					<p>Türkiye</p>
					<p>Phone:0530 944 2604</p>
					<p>Fax: (356) 318 50 79 0</p>
					<p>Email: <a href="mailto:mertkesler17@icloud.com">mertkesler17@icloud.com</a></p>
					<p>Follow on: <a href="#">Facebook</a>, <a href="#">Twitter</a></p>
			 </div>
			  <div class="clearfix"></div>
	     </div>		 


			 </div>
	 </div>

</asp:Content>
