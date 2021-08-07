<%@ Page Title="Ertist" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ArtworkDisplay.aspx.cs" Inherits="Ertist.Description" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/ArtworkDisplay.css" rel="stylesheet" />
<%--     <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>--%>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
       
    <br />
    <h3 class="h3">Artwork </h3>    
        
    <div class="row">
        <asp:Repeater ID="Repeater1" runat="server">
      <ItemTemplate>
        <div class="col-md-3 col-sm-6">
            <div class="product-grid4">
                <div class="product-image4">
                    <a href="#">
                        <img class="pic-1" style="height:300px;" src="<%# GetImage(Eval("picture")) %>" />
                    </a>
                    <ul class="social">
                        <%--<li><a href="#" data-tip="Quick View"><i class="fa fa-eye"></i></a></li>--%>
                        <li><a href="Description.aspx?artworkID=<%# DataBinder.Eval(Container.DataItem, "artworkID") %>" data-tip="Quick View"><i class="fa fa-eye"></i></a></li>
                    </ul>
                </div>
                <div class="product-content">
                    <h3 class="title">
                        <asp:Label ID="lblName" runat="server"><%# Eval("name") %></asp:Label>
                    </h3>
                   <%-- <p style="color: gray; font-size:14px;">
                        <i><asp:Label ID="lblType" runat="server" Text='<%# Eval("description") %>'></asp:Label></i>
                    </p><br />--%>
                    <div class="price">
                        <asp:Label ID="lblPrice" runat="server">RM <%# Eval("price") %></asp:Label>
                    </div>                   
                </div>
            </div>
            <br /><br /><br />
        </div>   
            </ItemTemplate>
</asp:Repeater>
    </div>

        


</asp:Content>
