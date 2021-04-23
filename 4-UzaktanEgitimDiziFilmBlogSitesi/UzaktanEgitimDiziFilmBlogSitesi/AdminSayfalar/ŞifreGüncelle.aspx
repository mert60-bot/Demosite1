<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ŞifreGüncelle.aspx.cs" Inherits="UzaktanEgitimDiziFilmBlogSitesi.AdminSayfalar.ŞifreGüncelle" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Password Update</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
 
    <form runat="server">
  <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Şifre Güncelle</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Şifre:"></asp:Label>
                <asp:TextBox ID="txtsifre1" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <br />

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Şifre Tekrar:"></asp:Label>
                <asp:TextBox ID="txtsifre2" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <br />

            <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="Red" Font-Bold="True"></asp:Label>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">

          <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Kaydet" OnClick="Button1_Click"   />

          <asp:Button ID="Button2" CssClass="btn btn-danger" runat="server" Text="Vazgeç" OnClick="Button2_Click"  />

        </div>
        
      </div>
    </div>
  </div>
  </form>
</div>

</body>
    <script>
        $(function () {
            $("#myModal").modal("show");
        });
    </script>
</html>

