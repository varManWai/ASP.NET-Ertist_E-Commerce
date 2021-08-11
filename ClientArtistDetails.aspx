<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientArtistDetails.aspx.cs" Inherits="Ertist.ClientArtistDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/ArtistProfile.css" rel="stylesheet" />
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    

    <div class="container">
    <div class="profile-page">
        <div class="main">
		    <div class="profile-content">
                <div class="container">


                    <div class="page-content page-container" id="page-content">
                        <div class="padding">
                            <div class="row container d-flex justify-content-center">
                                <div class="col-md-12">
                                    <div class="user-card-full">
                                        <div class="row m-l-0 m-r-0">
                                            <div class="col-sm-4 user-profile">
                                                <div class="card-block text-center">
                                                    <!--Image-->
                                                    <div class="m-b-25"> <asp:Image ID="artist_picture" class="img-raised rounded-circle img-fluid" runat="server" /> </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-8">
                                                <div class="card-block">
                                                    <h3 class="m-b-20 m-t-40 p-b-5 b-b-default">Information</h3>
                                                    <div class="artist-info">
                                                        <div class="details-username-container">
	                                                        <h2 class="title username details-username">
                                                                <!--Username-->
                                                                <asp:Label ID="lbl_username" runat="server" Text="Label"></asp:Label></h2>
	                                                    </div>
                                                        <div class="description artist-name">
                                                            <p> <!--Fn ln-->
                                                                <asp:Label ID="lbl_fn" runat="server" Text="Label"></asp:Label><asp:Label ID="lbl_ln" runat="server" Text="Label"></asp:Label></p>
                                                        </div>
                                                        <div class="description artist-gender">
                                                            <p> <!--Gender-->
                                                                <asp:Label ID="lbl_gender" runat="server" Text="Label"></asp:Label></p>
                                                        </div>
                                                        <div class="description artist-bio">
                                                            <p> <!--Bio-->
                                                                <asp:Label ID="lbl_bio" runat="server" Text="Label"></asp:Label></p>
                                                        </div>

                                                        <div class="joined-date">
                                                            <!--created date-->
                                                            <p class="artist-contact"><i style="font-size:16px" class="fa">&#xf073;</i> <asp:Label ID="lbl_date" runat="server" Text="Label"></asp:Label></p>
                                                        </div>
                                                    </div>
                                                    <h3 class="m-b-20 m-t-40 p-b-5 b-b-default">Contact</h3>
                                                    <div class="artist-contact">
                                                        <div class="row">
                                                            <div class="col-sm-6">
                                                                <!--phoneNo-->
                                                                <p class="artist-contact"><i style="font-size:16px" class="fa">&#xf098;</i> <asp:Label ID="lbl_no" runat="server" Text="Label"></asp:Label></p>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <!--email-->
                                                                <p class="artist-contact"><i class="fa fa-envelope" aria-hidden="true"></i>
                                                                     <asp:Label ID="lbl_mail" runat="server" Text="Label"></asp:Label></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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


