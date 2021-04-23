<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UzaktanEgitimDiziFilmBlogSitesi.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="content-grids">
        <div class="col-md-8 content-main">
            <div class="content-grid">
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <div class="content-grid-info">
                            <img src="<%# Eval("BLOGGORSEL") %>" alt="" width="650" height="400" />
                            <div class="post-info">
                                <h4><a href="single.html"><%# Eval("BLOGBASLIK") %></a>  <%# Eval("BLOGTARIH","{0:dd MMMM yyyy}") %></h4>
                                <p><%# Eval("BLOGICERIK") %></p>
                                <a href="BlogDetay.aspx?blogid=<%# Eval("BLOGID") %>">Devamı...</a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>




            </div>
        </div>
        <div class="col-md-4 content-right">
            <div class="recent">
                <h3>SON BLOG (<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>)</h3>
                <ul>
                    <asp:Repeater ID="Repeater3" runat="server">
                        <ItemTemplate>
                            <li><a href="BlogDetay.aspx?blogid=<%# Eval ("BLOGID") %>"><%# Eval("BLOGBASLIK") %></a></li>
                        </ItemTemplate>
                    </asp:Repeater>


                </ul>
            </div>
            <div class="comments">
                <h3>SON YORUMLAR</h3>
                <ul>
                    <asp:Repeater ID="Repeater4" runat="server">
                        <ItemTemplate>
                             <li><a href="BlogDetay.aspx?blogid=<%# Eval ("YORUMBLOG") %>"><b><%# Eval ("KULLANICIADI") %></b>:&nbsp&nbsp <%# Eval ("YORUMICERIK") %>  </a></li>
                        </ItemTemplate>
                    </asp:Repeater>                                                           
                </ul>
            </div>
            <div class="clearfix"></div>           
            <div class="categories">
                <h3>KATEGORILER</h3>
                <ul>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <li><a href="KategoriDetay.aspx?katid=<%# Eval("ID") %>"><%# Eval("KATEGORIADI") %></a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</asp:Content>
