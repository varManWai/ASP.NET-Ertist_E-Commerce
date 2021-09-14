﻿<%@ Page Title="Ertist" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ArtworkDisplay.aspx.cs" Inherits="Ertist.Description" %>

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
                    <p class="filter-title">Filter</p>
                    <div class="filter-row">
                        <div class="dropdown">
                          <button onclick="myFunction()" class="dropbtn">Dropdown</button>
                          <div id="myDropdown" class="dropdown-content">
                            <input type="text" placeholder="Search.." id="myInput" onkeyup="filterFunction()">
                            <a href="#about">About</a>
                            <a href="#base">Base</a>
                            <a href="#blog">Blog</a>
                            <a href="#contact">Contact</a>
                            <a href="#custom">Custom</a>
                            <a href="#support">Support</a>
                            <a href="#tools">Tools</a>
                          </div>
                        </div>
                        <div class="form">
                            <asp:TextBox ID="TxtSearch2" runat="server" CssClass="search_input" placeholder="Search"></asp:TextBox>
                            <asp:ImageButton ID="btnSearch2" runat="server" ImageUrl="./Image/search.svg" />
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6">
                            <%--<div class="select-primary selected">
                                <span class="title">Medium</span>
                                <span class="checked "><i class="icon icon-ico-check"></i></span>
                                <form action="post">
                                <div class="dropdown bootstrap-select sm_meds" data-t="sm_meds">
                                    <div class="dropdown-menu" role="combobox">
                                        <div class="inner open" role="listbox" aria-expanded="false" tabindex="-1">
                                            <ul class="dropdown-menu inner">
                                                <li>
                                                    <a href="/en/our-artworks" role="option" aria-disabled="false" tabindex="0" aria-selected="false"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">-</span></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <button type="button" class="btn dropdown-toggle btn-default" data-toggle="dropdown" role="button" aria-label="Medium">
                                        <div class="filter-option">
                                            <div class="filter-option-inner">
                                                <div class="filter-option-inner-inner">Painting</div>
                                            </div>
                                        </div>
                                        <span class="bs-caret"><span class="caret"></span></span>
                                    </button>
                                </div>
                                </form>
                            </div>--%>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6">
                            <%--<div class="select-primary not-selected">
                                <span class="title">
                                    Painting categories <i class="arrow down"></i>
                                </span>
                                <span class="checked hidden"><i class="icon icon-ico-check"></i></span>
                                      
                                <form action="post">
                                <div class="dropdown bootstrap-select sm_categories" data-t="sm_categories">
                                    <div class="dropdown-menu" role="combobox">
                                        <div class="inner open" role="listbox" aria-expanded="false" tabindex="-1">
                                            <ul class="dropdown-menu inner">
                                                <li>
                                                    <a href="/en/painting" role="option" aria-disabled="false" tabindex="0" aria-selected="false"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">-</span></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <button type="button" class="btn dropdown-toggle btn-default" data-toggle="dropdown" role="button" aria-label="Painting categories">
                                        <div class="filter-option">
                                            <div class="filter-option-inner">
                                                <div class="filter-option-inner-inner">Painting categories</div>
                                            </div>
                                        </div>
                                        <span class="bs-caret"><span class="caret"></span></span>
                                    </button>
                                </div>
                                </form>
                            </div>--%>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6">
                            <%--<div class="select-primary not-selected">
                                <span class="title">Painting styles<i class="arrow down"></i>
                                </span>
                                <span class="checked hidden"><i class="icon icon-ico-check"></i></span>
                                <form action="post">
                                <div class="dropdown bootstrap-select sm_styles" data-t="sm_styles">
                                    <div class="dropdown-menu" role="combobox">
                                        <div class="inner open" role="listbox" aria-expanded="false" tabindex="-1">
                                            <ul class="dropdown-menu inner">
                                                <li>
                                                    <a href="/en/painting" role="option" aria-disabled="false" tabindex="0" aria-selected="false"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">-</span></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <button type="button" class="btn dropdown-toggle btn-default" data-toggle="dropdown" role="button" aria-label="Painting styles">
                                        <div class="filter-option">
                                            <div class="filter-option-inner">
                                                <div class="filter-option-inner-inner">Painting styles</div>
                                            </div>
                                        </div>
                                        <span class="bs-caret"><span class="caret"></span></span>
                                    </button>
                                </div>
                                </form>
                            </div>--%>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6">
                            <%--<div class="select-primary not-selected">
                                <span class="title">Painting techniques<i class="arrow down"></i>
                                </span>
                                <span class="checked hidden"><i class="icon icon-ico-check"></i></span>
                                <form action="post">
                                <div class="dropdown bootstrap-select sm_materials" data-t="sm_materials">
                                    <div class="dropdown-menu" role="combobox">
                                        <div class="inner open" role="listbox" aria-expanded="false" tabindex="-1">
                                            <ul class="dropdown-menu inner">
                                                <li>
                                                    <a href="/en/painting" role="option" aria-disabled="false" tabindex="0" aria-selected="false"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">-</span></a>
                                                </li></ul>
                                        </div>
                                    </div>
                                    <button type="button" class="btn dropdown-toggle btn-default" data-toggle="dropdown" role="button" aria-label="Painting techniques">
                                        <div class="filter-option">
                                            <div class="filter-option-inner">
                                                <div class="filter-option-inner-inner">Painting techniques</div>
                                            </div>
                                        </div>
                                        <span class="bs-caret"><span class="caret"></span></span>
                                    </button>
                                </div>
                                </form>
                            </div>--%>
                        </div>
                    </div>
            <%--<div class="filters-primary-my-search hidden">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="title">My search</div>
                            <div class="search-bar hidden">
                                <div class="bootstrap-tagsinput"><input type="text" placeholder=""></div><input type="text" autocomplete="off" class="ac-tags" style="display: none;">
                                <button class="submit-search" type="submit"><i class="icon icon-ico-search"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>--%>
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
        <div id="paging" style="margin-left: 5px; font-size: 0.4cm; font-weight: bold; color: #ca3f49; padding: 15px; border-radius: 3px; text-align: center;" runat="server"></div>
    </div>
    <script>
        function myFunction() {
          document.getElementById("myDropdown").classList.toggle("show");
        }

        function filterFunction() {
          var input, filter, ul, li, a, i;
          input = document.getElementById("myInput");
          filter = input.value.toUpperCase();
          div = document.getElementById("myDropdown");
          a = div.getElementsByTagName("a");
          for (i = 0; i < a.length; i++) {
            txtValue = a[i].textContent || a[i].innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
              a[i].style.display = "";
            } else {
              a[i].style.display = "none";
            }
          }
        }
    </script>
</asp:Content>