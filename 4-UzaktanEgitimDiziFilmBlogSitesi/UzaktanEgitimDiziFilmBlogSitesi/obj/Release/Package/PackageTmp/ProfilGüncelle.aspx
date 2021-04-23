<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProfilGüncelle.aspx.cs" Inherits="UzaktanEgitimDiziFilmBlogSitesi.ProfilGüncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div style="margin-top: 30px;">
            <h2>Profil Bilgileri Güncelle</h2>
            <br />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="AD"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtad" runat="server"></asp:TextBox>
            </div>
            <br />

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="SOYAD"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtsoyad" runat="server"></asp:TextBox>
            </div>
            <br />
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="KULLANICI ADI"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtkullanici" runat="server"></asp:TextBox>
            </div>
            <br />
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="ADRES"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtadres" runat="server"></asp:TextBox>
            </div>
            <br />
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="ŞİFRE"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtsifre" runat="server"></asp:TextBox>
            </div>
            <br />

            <div class="form-group">
                <asp:Label ID="Label6" runat="server" Text="TEL"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txttel" runat="server"></asp:TextBox>
            </div>
            <br />

            <div class="form-group">
                <asp:Label ID="Label7" runat="server" Text="RESİM"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtresim" runat="server"></asp:TextBox>
            </div>
            <br />

            <asp:Button ID="Button1" runat="server" Cssclass="btn btn-primary"   Text="Güncelle" OnClick="Button1_Click" />
            
           
            <br />

        </div>
    </form>
</asp:Content>
