<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ArtistProfileClient.aspx.cs" Inherits="Ertist.ArtistProfileClient" %>
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
	                            <div class="avatar">
	                                <img src="https://i.pinimg.com/originals/89/54/38/895438247efa788551d1919d44f176ca.png" alt="Circle Image" class="img-raised rounded-circle img-fluid">
	                            </div>
	                            <div class="name">
	                                <h3 class="title">Christian Louboutin</h3>
	                            </div>
                               <div class="description text-center artist-bio">
                                 <p>An artist of considerable range, Chet Faker — the name taken by Melbourne-raised, Brooklyn-based Nick Murphy — writes, performs and records all of his own music, giving it a warm, intimate feel with a solid groove structure. </p>
                                    <div class="artist-profile-btn artist-btn btn-container">
                                        <button class="art-pg-btn more-details-btn">More Details</button>
                                    </div>
                               </div>
	                        </div>


                    <hr class="profile-gallery-delimiter"/>


                    <%-- Edit Gallery/Artwork --%>
                      <div class="ddl-container artist-dropdown-container">
                        <%--<button class="art-pg-btn dropbtn" disabled>Edit <i style='font-size:15px' class='fas'>&#xf107;</i></button>
                        <div class="edit-content">
                          <a href="#">Gallery</a>
                          <a href="#">Artwork</a>
                        </div>--%>
                      </div> 


                    <%-- Display Gallery --%>
                     <div class="gal-row">
                          <div class="gal-column">
                            <div class="gal-card">
                              <h3>Gallery Name</h3>
                              <a href="#"><img src="https://images.unsplash.com/photo-1521341057461-6eb5f40b07ab?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=72da2f550f8cbd0ec252ad6fb89c96b2&auto=format&fit=crop&w=334&q=80" class="rounded"></a>
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


