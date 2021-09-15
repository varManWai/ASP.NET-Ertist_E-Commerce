<%@ Page Title="Ertist" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ArtworkDisplay.aspx.cs" Inherits="Ertist.Description" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/ArtworkDisplay.css" rel="stylesheet" />
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

        .page_header {
            background-color: #1b1b1b;
            height: 150px;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
            -webkit-box-align: end;
            -ms-flex-align: end;
            align-items: flex-end;
            width: 100%;
       }

        .page_header h1 {
        color: #ffffff;
        padding-bottom: 35px;
        font-size: clamp(26px,4vw,36px);
        }

    </style>
    <br />
    
    <section class="filters-primary">
        <div class="filter-row">
            <div class="filter-title"><p class="content">Filter</p></div>
            
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="byCategoryMenu"
                    data-bs-toggle="dropdown" aria-expanded="false">By Category</button>
                <ul class="dropdown-menu" aria-labelledby="byCategoryMenu">
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?categoryID=">All</a></li>
                    <asp:Repeater ID="Repeater2" runat="server">
                         <ItemTemplate>
                            <li><a class="dropdown-item" href="ArtworkDisplay.aspx?categoryID=<%# DataBinder.Eval(Container.DataItem, "categoryID") %>"><%# Eval("name") %></a></li>
                        </ItemTemplate>        
                    </asp:Repeater>
                </ul>
            </div>
            
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="byAlphabetMenu"
                    data-bs-toggle="dropdown" aria-expanded="false">By Alphabet</button>
                <ul class="dropdown-menu" aria-labelledby="byAlphabetMenu">
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=">#</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=A">A</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=B">B</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=C">C</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=D">D</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=E">E</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=F">F</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=G">G</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=H">H</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=I">I</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=J">J</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=K">K</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=L">L</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=M">M</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=N">N</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=O">O</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=P">P</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=Q">Q</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=R">R</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=S">S</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=T">T</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=U">U</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=V">V</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=W">W</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=X">X</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=Y">Y</a></li>
                    <li><a class="dropdown-item" href="ArtworkDisplay.aspx?alphabet=Z">Z</a></li>
                </ul>
            </div>
            <div class="search-form">
                <asp:TextBox ID="searchByName" runat="server" CssClass="search_input" placeholder="Search By Name" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                <asp:ImageButton ID="btnSearch" runat="server" ImageUrl="./Image/search.svg" OnClick="btnSearch_Click"/>
            </div>
        </div>
        </section>
    <div class="page_header">
      <h1>Artwork</h1>
    </div>
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