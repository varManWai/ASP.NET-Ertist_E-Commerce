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
                <h3 class="title">
                    <asp:Label ID="lblGalName" runat="server" Text=""></asp:Label>
                </h3>
                <p class="description">Created: <asp:Label ID="lblGalDate" runat="server" Text=""></asp:Label></p>
            </div>

            <hr class="artwork-delimiter"/>

            <div class="artwork-section">

                <%-- Gallery Cover Picture --%>
                <div class="gal-cover-pic">
                    <asp:Image ID="cover" runat="server" />
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
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                              <div class="art-column">
                                <div class="art-card">
                                  <img src="<%# GetImage(Eval("picture")) %>" class="rounded">
                                  <h3><asp:Label ID="lblName" runat="server"><%# Eval("name") %></asp:Label></h3>
                                </div>
                              </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                </div>
            </div>
            </div>
        </div>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" 
        SelectCommand="SELECT [name], [picture] FROM [Artwork] WHERE ([galleryID] = @galleryID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="galleryID" 
                QueryStringField="[&quot;galleryID&quot;] ??" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
