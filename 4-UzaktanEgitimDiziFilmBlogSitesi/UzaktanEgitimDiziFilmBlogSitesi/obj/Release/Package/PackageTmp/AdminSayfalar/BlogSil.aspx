<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSayfalar/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BlogSil.aspx.cs" Inherits="UzaktanEgitimDiziFilmBlogSitesi.AdminSayfalar.BlogSil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- The Modal -->
    <form runat="server">
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Yorum Sil</h4>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          Bu Blogu Silmek İstediginize Emin Misiniz?
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">                     
            <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" Text="Evet" OnClick="Button1_Click"  />
            <asp:Button ID="Button2" CssClass="btn btn-warning" runat="server" Text="Vazgeç" OnClick="Button2_Click" />
        </div>
        
      </div>
    </div>
  </div>
        </form>
    <script>
        $(function () {
            $("#myModal").modal("show");
        })
    </script>
</asp:Content>
 