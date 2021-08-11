<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ArtistDisplay.aspx.cs" Inherits="Ertist.ArtistDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Page Content -->
    <div class="container">
        <h3 style="font-size: clamp(26px,3vw,36px); text-align: center; padding-top: 20px; padding-bottom: 30px;">Artist </h3>
    
        <div class="row">

            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSourceArtists">

                <ItemTemplate>

                    <!-- Team Member -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-0 shadow">
                            <a href="ClientArtistProfile.aspx?artistID=<%# DataBinder.Eval(Container.DataItem, "UserID") %>">
                                <img src="<%# GetImage(Eval("picture")) %>" class="card-img-top" alt="artist">
                            </a>
                            &nbsp;<div class="card-body text-center">
                                <h5 class="card-title mb-0"><%# Eval("username") %></h5>
                                <div class="card-text text-black-50"><%# Eval("bio") %></div>
                            </div>
                        </div>
                    </div>

                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSourceArtists" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT * FROM [User] WHERE ([roleID] = @roleID)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="2" Name="roleID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
<!-- /.container -->

</asp:Content>
