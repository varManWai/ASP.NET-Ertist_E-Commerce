<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ArtistDisplay.aspx.cs" Inherits="Ertist.ArtistDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .activeLink {
            color: black;
            text-decoration: none;
            margin: 10px;
        }

            .activeLink:hover {
                color: #ca3f49;
                text-decoration: none;
            }

       #MainContent_paging span element {
            background-color: #ca3f49;
        }

       .page_header {
            background-color: #1b1b1b;
            height: 150px;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
            -webkit-box-align: end;
            -ms-flex-align: end;
            align-items: flex-end;
            width: 100%;
       }

        .page_header h1 {
        color: #ffffff;
        padding-bottom: 35px;
        font-size: clamp(26px,4vw,36px);
        }

    </style>

   <div class="page_header">
       <h1>Artist</h1>
   </div>

    <!-- Page Content -->
    <div class="container" style="margin-top:5%">

        <div class="row">

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <!-- Team Member -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-0 shadow">
                            <a href="ClientArtistProfile.aspx?artistID=<%# DataBinder.Eval(Container.DataItem, "UserID") %>">
                                <img src="<%# GetImage(Eval("picture")) %>" class="card-img-top" alt="artist" style="height:236px; width:315px; object-fit:cover;">
                            </a>
                            &nbsp;&nbsp;&nbsp;<div class="card-body text-center">
                                <h5 class="card-title mb-0"><%# Eval("username") %></h5>
                                <div class="card-text text-black-50"><%# Eval("bio") %></div>
                            </div>
                        </div>
                    </div>

                </ItemTemplate>
            </asp:Repeater>
            <%--<asp:SqlDataSource ID="SqlDataSourceArtists" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT * FROM [User] WHERE ([roleID] = @roleID)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="2" Name="roleID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>--%>
        </div>

        <div id="paging2" style="margin-left: 5px; font-size: 0.4cm; font-weight: bold; color: #ca3f49; padding: 15px; border-radius: 3px; text-align: center;" runat="server"></div>
    
    </div>
<!-- /.container -->

</asp:Content>
