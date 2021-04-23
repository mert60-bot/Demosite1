<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSayfalar/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="UzaktanEgitimDiziFilmBlogSitesi.AdminSayfalar.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div>
        <h2>Yorumlar Listesi</h2>
        <br />
        <table class="table table-bordered">
            <tr>
                <th style="vertical-align:middle;">ID</th>
                <th style="vertical-align:middle;">YORUM</th>
                <th style="vertical-align:middle;">Sil</th>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td style="vertical-align:middle;"><%# Eval("YORUMID") %></td>
                        <td style="vertical-align:middle;"><%# Eval("YORUMICERIK") %></td>
                         <td style="vertical-align:middle;"><a href ="YorumSil.aspx?yorumid=<%# Eval("YORUMID") %>" class=" btn btn-danger btn small">Sil</a></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>

        </table>

    </div>
</asp:Content>
