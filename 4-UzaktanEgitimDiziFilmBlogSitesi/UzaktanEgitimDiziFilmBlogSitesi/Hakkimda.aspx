<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Hakkimda.aspx.cs" Inherits="UzaktanEgitimDiziFilmBlogSitesi.web1.Hakkimda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="about-content">
        <div class="container">
            <h2>Ben ve Bloğum</h2>
            <div class="about-section">
                <div class="about-grid">
                    <h3>Ben Kimim?</h3>

                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <p>
                                <%# Eval("HAKKIMDA") %>
                            </p>
                        </ItemTemplate>
                    </asp:Repeater>



                </div>
                <img src="web1/images/man.jpg" alt="" />
            </div>
            <div class="clearfix"></div>

        </div>
    </div>
</asp:Content>
