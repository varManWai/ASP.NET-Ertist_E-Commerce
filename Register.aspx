<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Ertist.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/register.css" rel="stylesheet" />

    <div class="back">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-xl-9 mx-auto">
                    <div class="card flex-row my-5 border-0 shadow rounded-3 overflow-hidden">
                        <div class="card-img-left d-none d-md-flex">
                            <!-- Background image for card set in CSS! -->
                        </div>
                        <div class="card-body p-4 p-sm-5" style="margin:3%;">
                            <h3 style="padding-bottom:20px;"><strong class="title">Sign Up Here !</strong></h3>

                            <div class="mb-3">
                                <span class="title">Username :</span> 
                                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>

                            <div class="mb-3">
                                <span class="title">Email address :</span> 
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>

                            <div class="mb-3">
                                <span class="title">Password :</span> 
                                <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                            </div>

                            <div class="mb-3">
                                <span class="title">Confirm password :</span> 
                                <asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                            </div>

                            <hr class="my-4">

                            <div class="d-grid mb-2">
                                <asp:Button ID="submitReg" runat="server" Text="Register" CssClass="btn-reg" />
                            </div>

                            <hr class="my-4">

                                <a class="d-block mt-2 small" href="Login.aspx">Have an account? Sign In</a>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
