<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ArtistArtwork.aspx.cs" Inherits="Ertist.ArtistArtwork" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/ArtistArtwork.css" rel="stylesheet" />
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

    <div class="main">
        <div class="container">
            <div class="artwork-container">
            <%-- Back to Gallery --%>
            <div class="view-gal-btn-container artist-btn btn-container">
                <asp:Button ID="btnBackGallery" runat="server" Text="Gallery" 
                    class="art-pg-btn view-gal-btn" OnClick="btnBackGallery_Click"/>
            </div>

            <%-- Gallery Info --%>
            <div class="gal-info text-center">
                <h3 class="title">Gallery Name</h3>
                <p class="description">Created: 05 May 2021</p>
            </div>

            <hr class="artwork-delimiter"/>

            <div class="artwork-section">

                <%-- Gallery Cover Picture --%>
                <div class="gal-cover-pic">
                    <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.MHBvFpGuSDyVT1y-gWyDFAHaFT%26pid%3DApi&f=1" class="rounded">
                </div>


                <%-- Filter --%>
                <%--<div class="dropdown artist-dropdown-container ddl-container">
                    <button class="art-pg-btn dropbtn cat-dropbtn" disabled>Categories <i style='font-size:15px' class='fas'>&#xf107;</i></button>
                    <div class="dropdown-content cat-content">
                        <a href="#">Painting</a>
                        <a href="#">Ink</a>
                        <a href="#">Watercolour</a>
                    </div>
                </div>--%>
                

                <%-- Artwork --%>
                <div class="artwork-grid-container">
                <div class="art-row">
                    <div class="art-column">
                    <div class="art-card">
                        <a href="#"><img src="https://images.unsplash.com/photo-1521341057461-6eb5f40b07ab?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=72da2f550f8cbd0ec252ad6fb89c96b2&auto=format&fit=crop&w=334&q=80" class="rounded"></a>
                    </div>
                    </div>
                    
                </div>
                </div>

            </div>
            </div>
        </div>
    </div>





</asp:Content>
