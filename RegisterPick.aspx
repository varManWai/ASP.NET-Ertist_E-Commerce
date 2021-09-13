<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="RegisterPick.aspx.cs" Inherits="Ertist.RegisterPick" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .font_design{
            font-family: "Roboto Slab","Times New Roman",serif;
        }
        .btn-reg {
            background-color: beige;
            outline: none;
            border: none;
            border-radius: 300px;
            width: 100%;
            max-width: 158px;
            height: 38px;
            color: white;
            font-size: clamp(10px, 1.5vw, 15px);
            margin-left: 20px;
            letter-spacing: 0.12em;
            margin: 3px;
            outline: none;
            letter-spacing: 0.12em;
            color: #000;
            font-size: 15px;
            font-weight: 400;
        }
    </style>
    
        <div class="col" style="text-align: center; padding:30px;">
            <h1 class="font_design">Register as:</h1>
        </div>
     
        <div class="row justify-content-lg-center" style="margin:0 5% 7% 6%; padding-top:20px">
            <div class="col-sm-6" style="max-width:400px !important">
                <div class="card text-center">
                    <div class="card-header" style="background-color:firebrick; padding:10px;color:white;">
                        <h2 class="font_design">User</h2>
                    </div>
                    <div class="card-body">
                        <img src="Image/reg_user.jpg" alt="user" class="card-title" height="200px" width="350px" style="object-fit:cover"/>
                        <br /><br />
                        <asp:Button ID="btn_user" runat="server" Text="Register" class="btn-reg" OnClick="btn_user_Click"/>
                    </div>
                </div>
            </div>
            <div class="col-sm-6" style="max-width:400px !important;max-height:400px !important">
                <div class="card text-center">
                    <div class="card-header" style="background-color:firebrick; padding:10px; color:white;">
                        <h2 class="font_design">Artist</h2>
                    </div>
                    <div class="card-body">
                        <img src="Image/reg_artist.jpg" class="card-title" alt="artist" height="200px" width="350px" style="object-fit:cover" />
                        <br /><br />
                        <asp:Button ID="btn_artist" runat="server" Text="Register" CssClass="btn-reg" OnClick="btn_artist_Click" />
                    </div>
                </div>
            </div>
        </div>

</asp:Content>
