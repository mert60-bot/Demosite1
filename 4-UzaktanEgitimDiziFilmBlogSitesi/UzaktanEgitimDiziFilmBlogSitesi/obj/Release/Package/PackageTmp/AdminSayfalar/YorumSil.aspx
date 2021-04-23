<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YorumSil.aspx.cs" Inherits="UzaktanEgitimDiziFilmBlogSitesi.AdminSayfalar.YorumSil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            

<div class="container mt-3"> 
  <!-- The Modal -->
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
          Bu Yorumu Silmek İstediginize Emin Misiniz?
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">          
            <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" Text="Evet" OnClick="Button1_Click1" />

            <asp:Button ID="Button2" class="btn btn-warning" runat="server" Text="Vazgeç" OnClick="Button2_Click1" />
        </div>
        
      </div>
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
</body>
</html>
