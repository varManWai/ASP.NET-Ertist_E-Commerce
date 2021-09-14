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
                                    <div class="artist-profile-btn artist-btn btn-container ">
                                        <asp:Button ID="btnAddAddress" runat="server" Text="Add Address" 
                                            class="art-pg-btn edit-bio-btn" OnClick="btnAddAddress_Click" />
                                    </div>
                               </div>
	                        </div>
                    <br /><br /><br /><br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="OnRowDataBound" DataSourceID="sqlAddress" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Style="width: 100%; text-align: center;" AllowPaging="True">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="addressID" HeaderText="Address ID" Visible="False" />
                            <asp:BoundField DataField="addressName" HeaderText="Address Name" />
                            <asp:BoundField DataField="address" HeaderText="Address" />
                            <asp:BoundField DataField="state" HeaderText="State" />
                            <asp:BoundField DataField="city" HeaderText="City" />
                            <asp:BoundField DataField="postCode" HeaderText="Post Code" />
                            <asp:HyperLinkField Text="Update" DataNavigateUrlFields="addressID" DataNavigateUrlFormatString="UpdateAddress.aspx?addressID={0}" />
                            <asp:HyperLinkField Text="Detele" DataNavigateUrlFields="addressID" DataNavigateUrlFormatString="DeleteAddress.aspx?addressID={0}" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                        <asp:SqlDataSource ID="sqlAddress" runat="server" ConnectionString='<%$ ConnectionStrings:ertistDB %>' SelectCommand="SELECT Address.addressID, Address.addressName, Address.address, Address.state, Address.city, Address.postCode FROM Address INNER JOIN User_Address ON Address.addressID = User_Address.addressID INNER JOIN [User] ON User_Address.userID = [User].UserID WHERE ([User].UserID = @userID)">
                            <SelectParameters>
                                <asp:SessionParameter SessionField="UserID" Name="userID"></asp:SessionParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>

		    </div>
            </div>
	    </div>
   
	
      <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
      <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>

        </div>
        </div>

    
</asp:Content>
