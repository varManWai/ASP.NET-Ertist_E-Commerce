<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Ertist.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/register.css" rel="stylesheet" />
    <link href="css/ArtistProfile.css" rel="stylesheet" />

    <div class="container">
    <div class="profile-page">
    <div class="main" style="margin-top:5%;">
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

                            <asp:Label ID="message" runat="server" ForeColor="Red"></asp:Label>

                            <div class="mb-3">
                                <span class="title">Username :</span> 
                                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredUsername" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="txtUsername">Please enter username.</asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="REusername" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ForeColor="Red" ValidationExpression="^[a-zA-Z][a-zA-Z0-9]{1,25}$">Maximum 25 characters, only letters and numbers are accepted.</asp:RegularExpressionValidator>
                                </div>

                            <div class="mb-3">
                                <span class="title">Email address :</span> 
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ForeColor="Red" ControlToValidate="txtEmail">Please enter email.</asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="REemail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$">Email address is not valid.</asp:RegularExpressionValidator>
                            </div>

                            <div class="mb-3">
                                <span class="title">Password :</span> 
                                <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredPwd" runat="server" ForeColor="Red" ControlToValidate="txtPwd" Display="Dynamic">Please enter password.</asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="REpwd" runat="server" ControlToValidate="txtPwd" Display="Dynamic" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{5,15}$">At least 5 to 15 characters, must contain at least 1 uppercase,1 lower case and 1 digit.</asp:RegularExpressionValidator>
                            </div>

                            <div class="mb-3">
                                <span class="title">Confirm password :</span> 
                                <asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredCPwd" runat="server" ForeColor="Red" ControlToValidate="txtConfirmPwd" Display="Dynamic">Please confirm your password.</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="ComparePassword" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtConfirmPwd" Display="Dynamic" ForeColor="Red">Password is not the same.</asp:CompareValidator>
                            </div>

                            <hr class="my-4">

                            <div class="d-grid mb-2">
                                <asp:Button ID="submitReg" Style="color: white;" runat="server" Text="Register" CssClass="btn-reg" OnClick="submitReg_Click" />
                            </div>

                            <hr class="my-4">

                                <a class="d-block mt-2 small" href="Login.aspx">Have an account? Sign In</a>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 </div>
 </div>
 </div>
</asp:Content>
