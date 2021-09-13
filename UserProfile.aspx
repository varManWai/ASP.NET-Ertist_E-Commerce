<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Ertist.UserProfile" %>
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
                                    <!-- image -->
                                    <asp:Image ID="user_picture" class="img-raised rounded-circle img-fluid" runat="server" Style="height:160px; width:160px;object-fit:cover;"/> 
	                                <div class="artist-username">
	                                    <h2 class="title username">
                                            <!-- username -->
                                            <asp:Label ID="lbl_username" runat="server" Text="Label"></asp:Label></h2>
	                                </div>
	                            </div>
                               <div class="description text-center artist-bio">
                                   <!-- bio -->
                                 <p>
                                     <asp:Label ID="lbl_bio" runat="server" Text="Label"></asp:Label></p>
                                    <div class="artist-profile-btn artist-btn btn-container ">
                                        <asp:Button ID="btnEditProfile" runat="server" Text="Edit Profile" 
                                            class="art-pg-btn edit-bio-btn"  OnClick="btnEditProfile_Click"/>
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
