<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSayfalar/AdminMaster.Master" AutoEventWireup="true" CodeBehind="İletişimAdmin.aspx.cs" Inherits="UzaktanEgitimDiziFilmBlogSitesi.AdminSayfalar.Iletişim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h2>Mesajlar</h2>

    <table class="table table-bordered">
        <tr>
            <td>ID</td>
            <td>İSİM</td>
            <td>EMAİL</td>
            <td>ŞEHİR</td>
            <td>MESAJ</td>
            <td>SİL</td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("İd") %></td>
                    <td><%#Eval("ISIM") %></td>
                    <td><%#Eval("Email") %></td>
                    <td><%#Eval("Sehır") %></td>
                    <td><%#Eval("Mesaj") %></td>                   
                    <td><a href="Mesajsil.aspx?mid=<%# Eval("İd") %>" class="btn btn-danger">SİL</a></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>
