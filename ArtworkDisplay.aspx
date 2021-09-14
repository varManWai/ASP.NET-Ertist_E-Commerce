<%@ Page Title="Ertist" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ArtworkDisplay.aspx.cs" Inherits="Ertist.Description" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/ArtworkDisplay.css" rel="stylesheet" />
    <link href="css/Banner.css" rel="stylesheet" />
    <link href="css/Filter.css" rel="stylesheet" />
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

        .dropbtn {
            background-color: #04AA6D;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }

        .dropbtn:hover, .dropbtn:focus {
            background-color: #3e8e41;
        }

        #myInput {
            box-sizing: border-box;
            background-image: url('searchicon.png');
            background-position: 14px 12px;
            background-repeat: no-repeat;
            font-size: 16px;
            padding: 14px 20px 12px 45px;
            border: none;
            border-bottom: 1px solid #ddd;
        }

        #myInput:focus {outline: 3px solid #ddd;}

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f6f6f6;
            min-width: 230px;
            overflow: scroll;
            border: 1px solid #ddd;
            min-height:200px
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown a:hover {background-color: #ddd;}

        .show {display: block;}

    </style>
    <br />
    <div class="page-banner">
        <div class="content">
            <h3 style="font-size: clamp(26px,3vw,36px); text-align: center; padding-top: 20px; padding-bottom: 30px;">Artwork </h3>
        </div>
    </div>
    <section class="filters-primary">
        <div class="filter-row">
            <div class="filter-title"><p class="content">Filter</p></div>
            
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="byCategoryMenu"
                    data-bs-toggle="dropdown" aria-expanded="false">By Category</button>
                <ul class="dropdown-menu" aria-labelledby="byCategoryMenu">
                    <li><a class="dropdown-item" href="#">All</a></li>
                    <asp:Repeater ID="Repeater2" runat="server">
                         <ItemTemplate>
                            <li><a class="dropdown-item" href="ArtworkDisplay.aspx?categoryID=<%# DataBinder.Eval(Container.DataItem, "categoryID") %>"><%# Eval("name") %></a></li>
                            <%--<asp:Label ID="lblCatName" runat="server"><%# Eval("name") %></asp:Label>--%>
                        </ItemTemplate>        
                    </asp:Repeater>
                </ul>
            </div>
            
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="byAlphabetMenu"
                    data-bs-toggle="dropdown" aria-expanded="false">By Alphabet</button>
                <ul class="dropdown-menu" aria-labelledby="byAlphabetMenu">
                    <li><a class="dropdown-item" href="#">#</a></li>
                    <li><a class="dropdown-item" href="#">A</a></li>
                    <li><a class="dropdown-item" href="#">B</a></li>
                    <li><a class="dropdown-item" href="#">C</a></li>
                    <li><a class="dropdown-item" href="#">D</a></li>
                    <li><a class="dropdown-item" href="#">E</a></li>
                    <li><a class="dropdown-item" href="#">F</a></li>
                    <li><a class="dropdown-item" href="#">G</a></li>
                    <li><a class="dropdown-item" href="#">H</a></li>
                    <li><a class="dropdown-item" href="#">I</a></li>
                    <li><a class="dropdown-item" href="#">J</a></li>
                    <li><a class="dropdown-item" href="#">K</a></li>
                    <li><a class="dropdown-item" href="#">L</a></li>
                    <li><a class="dropdown-item" href="#">M</a></li>
                    <li><a class="dropdown-item" href="#">N</a></li>
                    <li><a class="dropdown-item" href="#">O</a></li>
                    <li><a class="dropdown-item" href="#">P</a></li>
                    <li><a class="dropdown-item" href="#">Q</a></li>
                    <li><a class="dropdown-item" href="#">R</a></li>
                    <li><a class="dropdown-item" href="#">S</a></li>
                    <li><a class="dropdown-item" href="#">T</a></li>
                    <li><a class="dropdown-item" href="#">U</a></li>
                    <li><a class="dropdown-item" href="#">V</a></li>
                    <li><a class="dropdown-item" href="#">W</a></li>
                    <li><a class="dropdown-item" href="#">X</a></li>
                    <li><a class="dropdown-item" href="#">Y</a></li>
                    <li><a class="dropdown-item" href="#">Z</a></li>
                </ul>
            </div>
            <div class="search-form">
                <asp:TextBox ID="txtSearch" runat="server" CssClass="search_input" placeholder="Search By Name"></asp:TextBox>
                <asp:ImageButton ID="btnSearch" runat="server" ImageUrl="./Image/search.svg" />
            </div>
        </div>
        </section>
    <div style="width: 100%; max-width: 1366px; margin: auto; padding: 70px;">
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
                                <div class="size">
<p>Dimensions:                      <asp:Label ID="lblHeight" runat="server"><%# Eval("height") %></asp:Label>cm (H) x <asp:Label ID="lblWidth" runat="server"><%# Eval("width") %></asp:Label>cm (W)</p><br />                                </div>
                            </div>
                        </div>
                        <br />
                        <br />
                        <br />
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div id="paging" style="margin-left: 5px; font-size: 0.4cm; font-weight: bold; color: #ca3f49; padding: 15px; border-radius: 3px; text-align: center;" runat="server">
        </div>
    </div>
    </asp:Content>