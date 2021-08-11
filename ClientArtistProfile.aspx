<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientArtistProfile.aspx.cs" Inherits="Ertist.ClientArtistProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/ArtistProfile.css" rel="stylesheet" />
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    
    <div class="container">
    <div class="profile-page">
        <div class="main">
		    <div class="profile-content">
                <div class="container">
                    

                    <%-- Edit Gallery/Artwork --%>
                        <div class="profile">
	                            <div class="avatar text-center">
                                    <!--image-->
                                    <asp:Image ID="artist_picture" class="img-raised rounded-circle img-fluid" runat="server" />
                                    <div class="artist-username">
	                                    <h2 class="title username">
                                            <!--Username-->
                                            <asp:Label ID="lbl_artist_username" runat="server" Text="Label"></asp:Label></h2>
	                                </div>
	                            </div>
                               <div class="description text-center artist-bio">
                                 <p>
                                     <!--bio-->
                                     <asp:Label ID="lbl_bio" runat="server" Text="Label"></asp:Label>

                                 </p>
                                    <div class="artist-profile-btn artist-btn btn-container">
                                        <asp:Button ID="btnMoreDetails" runat="server" Text="More Details" 
                                            class="art-pg-btn more-details-btn" OnClick="btnMoreDetails_Click"/>
                                    </div>
                               </div>
	                        </div>


                    <hr class="profile-gallery-delimiter"/>

                    <%-- Display Gallery --%>
                     <div class="gal-row">
                         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                             <ItemTemplate>
                          <div class="gal-column">
                            <div class="gal-card">
                              <h3>Gallery Name</h3>
                              <a href="Description.aspx?artworkID=<%# DataBinder.Eval(Container.DataItem, "artworkID") %>"><img src="<%# GetImage(Eval("picture")) %>" class="rounded"></a>
                                
                                
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT * FROM [Gallery] WHERE ([userID] = @userID)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="userID" SessionField="UserID" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                          </div>
                                 </ItemTemplate>
                          </asp:Repeater>
                     </div>

		    </div>
            </div>
	    </div>
   
	
      <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
      <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>

        </div>
        </div>
</asp:Content>

