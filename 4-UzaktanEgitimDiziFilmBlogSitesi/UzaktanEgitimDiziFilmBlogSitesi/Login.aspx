<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UzaktanEgitimDiziFilmBlogSitesi.Login" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Kullanıcı Giriş</title>

        <link href="AdminTema/dist/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class=" bg-danger">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5 ">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4"><b>Giriş Paneli</b></h3></div>
                                    <div class="card-body">
                                        <form runat="server">
                                            <div class="form-group">
                                                <label class="small mb-1"  for="TextBox2">E Mail</label>                                                
                                                <asp:TextBox ID="TextBox2" type="email" required="" placeholder="Email Adresini Giriniz" Cssclass="form-control py-4" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="TextBox1">Şifre</label>
                                                <br />
                                                <asp:TextBox ID="TextBox1" required="" type="password" placeholder="Şifre Giriniz" CssClass="form-control py-4" runat="server"></asp:TextBox>                                                                                      
                                                </div> 
                                              <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                            <asp:Button ID="Button1" runat="server"  class="btn btn-outline-primary" Text="Giriş Yap" OnClick="Button1_Click1" />       
                                                  
                                                  <a href="YeniÜye.aspx" class="btn    btn-outline-warning" type="text/html">Kayıt Ol</a>
                                                  </div>
                                        </form>
                                    </div>
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4  bg-dark mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                           
                           
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="AdminTema/dist/js/scripts.js"></script>
    </body>
</html>

