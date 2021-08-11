<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientArtistArtwork.aspx.cs" Inherits="Ertist.ClientArtistArtwork" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <link href="css/ArtistArtwork.css" rel="stylesheet" />
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

    <div class="main">
        <div class="container">
            <div class="artwork-container">

            <%-- Gallery Info --%>
            <div class="gal-info text-center">
                <h3 class="title">
                    <asp:Label ID="gallery_name" runat="server" Text="Label"></asp:Label></h3>
                <p class="description">Created: <asp:Label ID="gallery_date" runat="server" Text="Label"></asp:Label></p>
            </div>

            <hr class="artwork-delimiter"/>

            <div class="artwork-section">

                <%-- Gallery Cover Picture --%>
                <div class="gal-cover-pic">
                    <asp:Image ID="gallery_cover" class="rounded" runat="server" />
                </div>

                <%-- Artwork --%>
                <div class="artwork-grid-container">
                    <div class="art-row">
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="artworkINgallery">
                            <ItemTemplate>
                                <div class="art-column">
                                    <div class="art-card">
                                        <a href="Description.aspx?artworkID=<%# DataBinder.Eval(Container.DataItem, "artworkID") %>">
                                            <img src="<%# GetImage(Eval("picture")) %>" class="rounded"></a>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="artworkINgallery" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT * FROM [Artwork] WHERE ([galleryID] = @galleryID)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="galleryID" QueryStringField="galleryID" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>

            </div>
            </div>
        </div>
    </div>




</asp:Content>
