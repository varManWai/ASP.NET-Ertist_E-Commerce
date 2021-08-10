<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ArtistsDisplay.aspx.cs" Inherits="Ertist.ArtistsDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <h1 class="fw-light text-center text-lg-start mt-4 mb-0">Artists</h1>

        <hr class="mt-2 mb-5">

        <div class="row text-center text-lg-start">

            <div class="col-lg-3 col-md-4 col-6">
                My super text.
                    <a href="#" class="d-block mb-4 h-100">
                        <img class="img-fluid img-thumbnail" src="https://source.unsplash.com/pWkk7iiCoDM/400x300" alt="">
                    </a>
            </div>

            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

        </div>
    </div>
</asp:Content>
