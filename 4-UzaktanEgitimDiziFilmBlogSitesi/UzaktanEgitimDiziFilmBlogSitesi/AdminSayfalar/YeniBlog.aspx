<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSayfalar/AdminMaster.Master" AutoEventWireup="true" CodeBehind="YeniBlog.aspx.cs" Inherits="UzaktanEgitimDiziFilmBlogSitesi.AdminSayfalar.YeniBlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <div style="margin-top:30px;">
        <div class="form-group">
             <asp:Image ID="Image1"  runat="server"  Height="200" Width="180" CssClass="form-control resim"/>
        </div>
        <div>
        RESİM:
        <asp:FileUpload ID="FileUpload1" CssClass="form-group" runat="server" onchange="$('.resim')[0].src = window.URL.createObjectURL(this.files[0])" />
        </div>
        <div class="form-group">
            İsterseniz Hızlı Resim Adresini Ekleyiniz.            
            <asp:TextBox ID="txtHızlıResim" CssClass="form-control" runat="server"></asp:TextBox>
        </div>

        <div class="form-group">
            BLOG BAŞLIK:            
            <asp:TextBox ID="txtbaşlık" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            BLOG İÇERİK:           
            <asp:TextBox ID="txtiçerik" CssClass="form-control" Height="120"  runat="server"></asp:TextBox>
        </div>
         <div class="form-group">
            KATEGORİ:             
             <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
        </div>
         <div class="form-group">
            TARİH:           
            <asp:TextBox ID="txttarih" TextMode= "Date" CssClass="form-control"  runat="server"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="Button1" CssClass="btn-primary" runat="server" Text="Kaydet" OnClick="Button1_Click" Visible="True" />
        </div>
        </form>
</asp:Content>
