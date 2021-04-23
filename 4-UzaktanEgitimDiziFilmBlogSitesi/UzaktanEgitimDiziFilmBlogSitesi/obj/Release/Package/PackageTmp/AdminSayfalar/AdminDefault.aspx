<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSayfalar/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminDefault.aspx.cs" Inherits="UzaktanEgitimDiziFilmBlogSitesi.AdminSayfalar.AdminDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <style>
        td{
            
            text-align:center;
        }
        th{
            text-align:center;
        }
    </style>

<h2>BLOGLAR</h2>
    <br />
    <div style ="margin-bottom:20px;">
    <a href="YeniBlog.aspx" class="btn btn-success" >Yeni Blog Ekle</a>
    </div>
    <table class="table table-bordered">
        <tr>
            <th style="vertical-align:middle;">ID</th>
            <th style="vertical-align:middle;">BAŞLIK</th>
            <th style="vertical-align:middle;">TARİH</th>
            <th style="vertical-align:middle;">RESİM</th>
            <th style="vertical-align:middle;">KATEGORİ</th>
            <th style="vertical-align:middle;">Sil</th>
            <th style="vertical-align:middle;">Güncelle</th>
            </tr>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                <tr>
                    <td  style="vertical-align:middle;"><%# Eval("BLOGID") %></td>
                    <td style="vertical-align:middle;"><%# Eval ("BLOGBASLIK") %></td>
                     <td style="vertical-align:middle;"><%# Eval ("BLOGTARIH","{0:dd MMM yyyy}") %></td>
                     <td style="vertical-align:middle;"><img src="<%# Eval ("BLOGGORSEL") %>" width="200" height="150" /></td>
                    <td style="vertical-align:middle;"><%# Eval ("TBLKATEGORILER.KATEGORIADI") %></td>
                    <td style="vertical-align:middle;"><a href ="BlogSil.aspx?blogid=<%# Eval("BLOGID") %>" class=" btn btn-danger btn small">Sil</a></td>
                    <td style="vertical-align:middle;"><a href ="BlogGuncelle.aspx?blogid=<%# Eval("BLOGID") %>" class="btn btn-primary">Güncelle</a></td>                    
                </tr>
                        </ItemTemplate>
                </asp:Repeater>
            </tbody>
        
    </table>
</asp:Content>