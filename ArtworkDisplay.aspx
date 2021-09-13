<%@ Page Title="Ertist" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ArtworkDisplay.aspx.cs" Inherits="Ertist.Description" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/ArtworkDisplay.css" rel="stylesheet" />
    <%--     <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>--%>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <style>
        .activeLink {
            color: black;
            text-decoration: none;
            margin: 10px;
        }



            .activeLink:hover {
                color: #ca3f49;
                text-decoration: none;
            }



        /*span:nth-of-type(1) {
            color: black !important;
        }

        span:nth-of-type(2) {
            background-color: #ca3f49 !important;
        }*/

        /*#MainContent_paging span{
            color:#ca3f49;
        }*/

        #MainContent_paging span element {
            background-color: #ca3f49;
        }
    </style>
    <br />
    <h3 style="font-size: clamp(26px,3vw,36px); text-align: center; padding-top: 20px; padding-bottom: 30px;">Artwork </h3>
    <div style="width: 100%; max-width: 1366px; margin: auto; padding: 0px 20px;">
        <div class="row">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="col-md-3 col-sm-6">
                        <div class="product-grid4">
                            <div class="product-image4">
                                <a href="#">
                                    <img class="pic-1" style="height: 300px;" src="<%# GetImage(Eval("picture")) %>" />
                                </a>
                                <ul class="social">
                                    <%--<li><a href="#" data-tip="Quick View"><i class="fa fa-eye"></i></a></li>--%>
                                    <li><a href="Description.aspx?artworkID=<%# DataBinder.Eval(Container.DataItem, "artworkID") %>" data-tip="Quick View"><i class="fa fa-eye"></i></a></li>
                                </ul>
                            </div>
                            <div class="product-content">
                                <h3 class="title">
                                    <asp:Label ID="lblName" runat="server"><%# Eval("name") %></asp:Label>
                                </h3>
                                <%-- <p style="color: gray; font-size:14px;">
                        <i><asp:Label ID="lblType" runat="server" Text='<%# Eval("description") %>'></asp:Label></i>
                    </p><br />--%>
                                <div class="price">
                                    <asp:Label ID="lblPrice" runat="server">$ <%# Eval("price") %></asp:Label>
                                </div>
                            </div>
                        </div>
                        <br />
                        <br />
                        <br />
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div id="paging" style="margin-left: 5px; font-size: 0.4cm; font-weight: bold; color: #ca3f49; padding: 15px; border-radius: 3px; text-align: center;" runat="server"></div>
    </div>
</asp:Content>
