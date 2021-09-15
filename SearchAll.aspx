<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchAll.aspx.cs" Inherits="Ertist.SearchAll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="./css/Filter.css">

    <style>
        .artwork-name{
            text-align:center;
            margin-top:10px;
        }
        .artist-name{
            width:fit-content;
            margin:20px;
        }
        .search-title{
            color:grey;
            font-size:large
        }
        .no-results{
            text-align:center;
        }
    </style>
    <div class="container">
    <h3 class="search-title">Artists</h3>
    
    <div class="search-row">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="search-column">
                <div class="artist-card">
                    <a href="ClientArtistProfile.aspx?artistID=<%# DataBinder.Eval(Container.DataItem, "UserID") %>"><img src="<%# GetImage(Eval("picture")) %>" class="search-artist"></a>
                    <h3 class="artist-name"><asp:Label ID="lblArtistName" runat="server"><%# Eval("username") %></asp:Label></h3>
                </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <h3 class="no-results"><asp:Label ID="lblArtistNotFound" runat="server"></asp:Label></h3>
    </div>

    <hr />
    <h3 class="search-title">Artworks</h3>

    <div class="search-row">
        <asp:Repeater ID="Repeater2" runat="server">
            <ItemTemplate>
                <div class="search-column">
                <div class="artwork-card">
                    <a href="../Description.aspx?artworkID=<%# DataBinder.Eval(Container.DataItem, "artworkID") %>"><img src="<%# GetImage(Eval("picture")) %>" class="search-artwork"></a>
                    <h3 class="artwork-name"><asp:Label ID="lblArtworkName" runat="server"><%# Eval("name") %></asp:Label></h3>
                </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <h3 class="no-results"><asp:Label ID="lblArtworkNotFound" runat="server"></asp:Label></h3>
    </div>
        </div>

</asp:Content>
