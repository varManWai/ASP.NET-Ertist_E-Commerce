<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ClientArtistDetails.aspx.cs" Inherits="Ertist.ClientArtistDetails" %>
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
	                            <div class="artist-username">
	                             <h5 class="title">Christiii</h5>
	                            </div>
                                <div class="description text-center artist-name">
                                    <p>(Christine Rose)</p>
                                </div>
                                <div class="description text-center artist-gender">
                                    <p>Female</p>
                                </div>
                                <div class="description text-center artist-bio">
                                     <p>An artist of considerable range, Chet Faker — the name taken by Melbourne-raised, 
                                         Brooklyn-based Nick Murphy — writes, performs and records all of his own music, giving it a warm, intimate feel with a solid groove structure. </p>
                                   </div>
	                            </div>


                                <div class="info-contact text-center">
                                    <p><i style="font-size:16px" class="fa">&#xf098;</i> 012-20000000</p>
                                    <p><i style="font-size:16px" class="fa">&#xf073;</i> Joined 05 May 2021</p>
                                    <p><i class="fa fa-envelope" aria-hidden="true"></i> christinerose@gmail.com</p>
                                </div>


		    </div>
            </div>
	    </div>
   
	
      <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
      <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>

        </div>
        </div>
</asp:Content>


