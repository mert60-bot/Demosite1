<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BlogDetay.aspx.cs" Inherits="UzaktanEgitimDiziFilmBlogSitesi.BlogDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="single">
        <div class="container">
            <div class="col-md-8 single-main">
                <div class="single-grid">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>                        
                            <img src="<%# Eval ("BLOGGORSEL") %>" alt="" />
                            <p>
                                <%# Eval("BLOGICERIK") %>
                            </p>                        
                    </ItemTemplate>
                </asp:Repeater>                   
                </div>
                <br />

                Toplam&nbsp<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp;Adet Yorum Yapılmıştır.
                
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <ul class="comment-list">
                            
                            <li>
                                <%# Eval("KULLANICIMAIL") %>
                                <img src="web1/images/avatar.png" class="img-responsive" alt="">
                                <div class="desc">
                                    <p><%# Eval("KULLANICIADI") %> : <a href="#" title="Posts by admin" rel="author"><%# Eval("YORUMICERIK") %></a></p>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>


                <div class="content-form">
                    <h3>Lütfen Fikrinizi Paylaşın :)</h3>
                    <form runat="server">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Adınız"></asp:TextBox>
                       
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Email"></asp:TextBox>

                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Sizde Yorum Yazın" TextMode="MultiLine"></asp:TextBox>
                        
                        
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Gönder" />
                    </form>
                </div>
            </div>

            </div>

        </div>
   
</asp:Content>
