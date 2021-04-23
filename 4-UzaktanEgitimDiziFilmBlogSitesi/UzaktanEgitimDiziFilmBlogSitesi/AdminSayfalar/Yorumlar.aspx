<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSayfalar/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="UzaktanEgitimDiziFilmBlogSitesi.AdminSayfalar.Yorumlar" %>

<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <h2>Yorumlar</h2>

    <table class="table table-bordered">
        <tr>
            <td>id</td>
            <td>yorum</td>
            <td>sil</td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("YORUMID") %></td>
                    <td><%#Eval("YORUMICERIK") %></td>
                    <td><a href="YorumSil.aspx?yid=<%# Eval("YORUMID") %>" class="btn btn-danger">SİL</a></td>
                </tr>
            </ItemTemplate>
         </asp:Repeater>
    </table>
    <br />

    <div>
        <cc1:CollectionPager ID="Pager"   ControlCssClass="Sayfalama" 
            runat="server" PageSize="2" 
            BackText="Geri" 
            NextText="İleri" PageNumbersSeparator=" |"
            BackNextLocation="Split" 
              LabelText=" "
               ResultsLocation="Bottom"
            ResultsFormat="{0} --- {1}  >> (Toplam {2} Yorum)"

            ShowLabel="True" UseSlider="True"

            ></cc1:CollectionPager>
    </div>
    
    <style id="d">
        .sayfalama a{
            padding:10px;
        }
        .sayfalama a:hover{
            text-decoration:none;
            background-color:lightgreen;
        }
    </style>
</asp:Content>
