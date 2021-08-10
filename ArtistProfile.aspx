<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ArtistProfile.aspx.cs" Inherits="Ertist.ArtistProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/ArtistProfile.css" rel="stylesheet" />
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    

    <div class="container">
    <div class="profile-page">
        <div class="main">
		    <div class="profile-content">
                <div class="container">
                    

                    <%-- Artist Profile --%>
                        <div class="profile">
	                            <div class="avatar text-center">
	                                <img src="https://i.pinimg.com/originals/89/54/38/895438247efa788551d1919d44f176ca.png" alt="Circle Image" class="img-raised rounded-circle img-fluid">
                                    <div class="artist-username">
	                                    <h2 class="title username">Christiii</h2>
	                                </div>
	                            </div>
                               <div class="description text-center artist-bio">
                                 <p>An artist of considerable range, Chet Faker — the name taken by Melbourne-raised, Brooklyn-based Nick Murphy — writes, performs and records all of his own music, giving it a warm, intimate feel with a solid groove structure. </p>
                                    <div class="artist-profile-btn artist-btn btn-container">
                                        <asp:Button ID="btnEditProfile" runat="server" Text="Edit Profile" 
                                            class="art-pg-btn edit-bio-btn"/>
                                    </div>
                               </div>
	                        </div>


                    <hr class="profile-gallery-delimiter"/>


                    <%-- Edit Gallery/Artwork --%>
                    <div class="dropdown artist-dropdown-container ddl-container">
                      <button class="art-pg-btn dropbtn edit-gal-dropbtn" disabled>Edit <i style='font-size:15px' class='fas'>&#xf107;</i></button>
                      <div class="dropdown-content edit-content">
                        <a href="#">Gallery</a>
                        <a href="#">Artwork</a>
                      </div>
                    </div>

                    <%-- Display Gallery --%>
                     <div class="gal-row">
                          <div class="gal-column">
                            <div class="gal-card">
                              <a href="#"><img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.soPKqPf6PI4-NnarSP-HgAHaJ3%26pid%3DApi&f=1" class="rounded"></a>
                              <h3>Gallery Name</h3>
                            </div>
                          </div>
                     </div>
		    </div>
            </div>
	    </div>
   
	
      <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
      <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>

        </div>
        </div>
</asp:Content>
