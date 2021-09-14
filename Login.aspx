<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ertist.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/ArtistProfile.css" rel="stylesheet" />
    <link href="css/login.css" rel="stylesheet" />

    <div class="container">
    <div class="profile-page">
    <div class="main" style="margin-top:5%;">
                <div class="box">
                    <div class="text-center">
                        <asp:Label ID="message" runat="server" Font-Bold="False" Font-Size="Large" ForeColor="#000099" Font-Strikeout="False"></asp:Label>
                    </div>
                    <br />
                    <br />
                    <div class="login-form">
                        <div class="avatar" style="background-color: firebrick"><i class="glyphicon">&#xe008;</i></div>
                        <h4 class="modal-title">Login to Your Account</h4>
                        <div style="margin: 10%;">
                            <div class="form-group">
                                Username
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredUsername" runat="server" Text="Please enter your username." ControlToValidate="txtUsername" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                Password
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" Text="Please enter your password." ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <asp:Label ID="errorMsg" runat="server" ForeColor="Red"></asp:Label>
                            <asp:Button ID="submitLogin" Style="color: white;" runat="server" Text="Login" CssClass="btn-login" OnClick="submitLogin_Click" />
                            <br />
                            <br />
                            <br />
                            <br />
                            <div class="text-center small">
                                Don't have an account? <a href="RegisterPick.aspx">Sign up</a>
                                <br />
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
    </div>
    </div>
    </div>


</asp:Content>
