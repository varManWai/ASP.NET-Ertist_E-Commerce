<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ArtistDisplay.aspx.cs" Inherits="Ertist.ArtistDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="css/Filter.css" rel="stylesheet" />
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

       #MainContent_paging span element {
            background-color: #ca3f49;
        }

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

   
    <section class="filters-primary">
        <div class="filter-row">
            <div class="filter-title"><p class="content">Filter</p></div>
            
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="artistAlphabetMenu"
                    data-bs-toggle="dropdown" aria-expanded="false">By Alphabet</button>
                <ul class="dropdown-menu" aria-labelledby="artistAlphabetMenu">
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=">#</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=A">A</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=B">B</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=C">C</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=D">D</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=E">E</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=F">F</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=G">G</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=H">H</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=I">I</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=J">J</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=K">K</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=L">L</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=M">M</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=N">N</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=O">O</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=P">P</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=Q">Q</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=R">R</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=S">S</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=T">T</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=U">U</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=V">V</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=W">W</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=X">X</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=Y">Y</a></li>
                    <li><a class="dropdown-item" href="ArtistDisplay.aspx?alphabet=Z">Z</a></li>
                </ul>
            </div>
            <div class="search-form">
                <asp:TextBox ID="searchByArtist" runat="server" CssClass="search_input" placeholder="Search By Name" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                <asp:ImageButton ID="btnSearchArtist" runat="server" ImageUrl="./Image/search.svg" OnClick="btnSearchArtist_Click"/>
            </div>
        </div>
        </section>
    <div class="page_header">
       <h1>Artist</h1>
   </div>
    <!-- Page Content -->
    <div class="container" style="margin-top:5%">

        <div class="row">

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <!-- Team Member -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-0 shadow">
                            <a href="ClientArtistProfile.aspx?artistID=<%# DataBinder.Eval(Container.DataItem, "UserID") %>">
                                <img src="<%# GetImage(Eval("picture")) %>" class="card-img-top" alt="artist" style="height:236px; width:315px; object-fit:cover;">
                            </a>
                            &nbsp;&nbsp;&nbsp;<div class="card-body text-center">
                                <h5 class="card-title mb-0"><%# Eval("username") %></h5>
                                <div class="card-text text-black-50"><%# Eval("bio") %></div>
                            </div>
                        </div>
                    </div>

                </ItemTemplate>
            </asp:Repeater>
            <%--<asp:SqlDataSource ID="SqlDataSourceArtists" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT * FROM [User] WHERE ([roleID] = @roleID)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="2" Name="roleID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>--%>
        </div>

        <div id="paging2" style="margin-left: 5px; font-size: 0.4cm; font-weight: bold; color: #ca3f49; padding: 15px; border-radius: 3px; text-align: center;" runat="server"></div>
    
    </div>
<!-- /.container -->

</asp:Content>
