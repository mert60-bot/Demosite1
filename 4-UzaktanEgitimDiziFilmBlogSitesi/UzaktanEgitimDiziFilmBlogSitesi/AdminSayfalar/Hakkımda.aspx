<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSayfalar/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Hakkımda.aspx.cs" Inherits="UzaktanEgitimDiziFilmBlogSitesi.AdminSayfalar.Hakkımda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <div style="margin-top:10px">
        <br />
        <h2>Hakkımda Güncelleme</h2>
         </div>
        <br />
        <div class="form-group">
            <b>Hakkımda:</b>            
            <asp:TextBox ID="TextBox1" TextMode="MultiLine"  Width="1100" Height="200" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
            <br />

            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <div class="form-group">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Güncelle"  OnClick="Button1_Click" />
            </div>
        </form>
   
</asp:Content>
