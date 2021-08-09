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
	                            <div class="avatar">
	                                <img src="https://i.pinimg.com/originals/89/54/38/895438247efa788551d1919d44f176ca.png" alt="Circle Image" class="img-raised rounded-circle img-fluid">
	                            </div>
	                            <div class="name">
	                                <h3 class="title">Christiii</h3>
	                            </div>
                               <div class="description text-center artist-bio">
                                 <p>An artist of considerable range, Chet Faker — the name taken by Melbourne-raised, Brooklyn-based Nick Murphy — writes, performs and records all of his own music, giving it a warm, intimate feel with a solid groove structure. </p>
                                    <div class="artist-profile-btn artist-btn btn-container">
                                        <button class="art-pg-btn edit-bio-btn">Edit Bio</button>
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
                              <h3>Gallery Name</h3>
                              <a href="#"><img src="https://images.unsplash.com/photo-1521341057461-6eb5f40b07ab?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=72da2f550f8cbd0ec252ad6fb89c96b2&auto=format&fit=crop&w=334&q=80" class="rounded"></a>
                            </div>
                          </div>
                     </div>


              <%--<div class="tab-content tab-space">
                <div class="tab-pane active text-center gallery" id="studio">
  				    <div class="row">
  					    <div class="col-md-3 ml-auto">
  					        <img src="https://images.unsplash.com/photo-1524498250077-390f9e378fc0?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=83079913579babb9d2c94a5941b2e69d&auto=format&fit=crop&w=751&q=80" class="rounded">
  						    <img src="https://images.unsplash.com/photo-1528249227670-9ba48616014f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=66b8e7db17b83084f16fdeadfc93b95b&auto=format&fit=crop&w=357&q=80" class="rounded">
  					    </div>
  					    <div class="col-md-3 mr-auto">
  						    <img src="https://images.unsplash.com/photo-1521341057461-6eb5f40b07ab?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=72da2f550f8cbd0ec252ad6fb89c96b2&auto=format&fit=crop&w=334&q=80" class="rounded">
  						    <img src="https://images.unsplash.com/photo-1506667527953-22eca67dd919?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6326214b7ce18d74dde5e88db4a12dd5&auto=format&fit=crop&w=750&q=80" class="rounded">
  					    </div>
  				    </div>
  			    </div>
              </div>--%>


		    </div>
            </div>
	    </div>
   
	
      <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
      <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>

        </div>
        </div>
</asp:Content>
