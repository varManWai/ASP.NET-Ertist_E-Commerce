<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GalleryDisplay.aspx.cs" Inherits="Ertist.GalleryDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/ArtistProfile.css" rel="stylesheet" />
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    

    <div class="container">
    <div class="profile-page">
        <div class="main">
		    <div class="profile-content">
                <div class="container">
                    

                    <%-- Artist Profile --%>
                        <%--<div class="profile">
	                            <div class="avatar text-center">
	                                <img src="https://i.pinimg.com/originals/89/54/38/895438247efa788551d1919d44f176ca.png" alt="Circle Image" class="img-raised rounded-circle img-fluid">
                                    
	                            </div>
                               <div class="description text-center artist-bio">
                                 <p>An artist of considerable range, Chet Faker — the name taken by Melbourne-raised, Brooklyn-based Nick Murphy — writes, performs and records all of his own music, giving it a warm, intimate feel with a solid groove structure. </p>
                                    <div class="artist-profile-btn artist-btn btn-container">
                                        <asp:Button ID="btnEditProfile" runat="server" Text="Edit Profile" 
                                            class="art-pg-btn edit-bio-btn"/>
                                    </div>
                               </div>
	                        </div>--%>

                    <div class="art-info-container text-center">
                        <h3 class="title">
                            <asp:LoginName ID="LoginName1" runat="server" />
                        </h3>
                    </div>

                    <hr class="profile-gallery-delimiter"/>


                    <%-- Edit Gallery/Artwork --%>
                    <div class="dropdown artist-dropdown-container ddl-container">
                      <button class="art-pg-btn dropbtn edit-gal-dropbtn" disabled>Edit <i style='font-size:15px' class='fas'>&#xf107;</i></button>
                      <div class="dropdown-content edit-content">
                        <a href="EditGallery.aspx">Gallery</a>
                        <a href="EditArtwork.aspx">Artwork</a>
                      </div>
                    </div>

                    <%-- Display Gallery --%>
                    <div class="gal-row">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <div class="gal-column">
                                <div class="gal-card">
                                    <a href="ArtistArtwork.aspx?galleryID=<%# DataBinder.Eval(Container.DataItem, "galleryID") %>"><img src="<%# GetImage(Eval("cover")) %>" class="rounded"></a>
                                    <h3><asp:Label ID="lblName" runat="server"><%# Eval("name") %></asp:Label></h3>
                                </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
		    </div>
            </div>
	    </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ertistDB %>" 
            
            SelectCommand="SELECT [name], [cover] FROM [Gallery] WHERE ([userID] = @userID)" >
            <SelectParameters>
                <asp:SessionParameter Name="userID" SessionField="userid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
	
      <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
      <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>

        </div>
        </div>
</asp:Content>
