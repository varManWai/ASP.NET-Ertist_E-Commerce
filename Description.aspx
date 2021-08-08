<%@ Page Title="Ertist" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Description.aspx.cs" Inherits="Ertist.Description1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/description.css" rel="stylesheet" />
<%--    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>--%>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    
    <div style="padding:5%">
     <div class="container" style="font-size:12px;">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card mb-10">
                                <!-- header !-->
                                <div class="card-header" style="background-color:white; ">
                                    <nav class="header-navigation" >
                                        <%--<a href="#" class="btn btn-link">Back to the list</a>--%>
                                        <br><br>
                                    </nav>
                                </div>
                                <br /><br /><br />
                                <!-- image !-->
                                <div class="card-body store-body">
                                    <div class="product-info">
                                        <div class="product-gallery">    
                                            <div class="product-gallery-featured">
                                                <%--<img src="GetImage("picture")" />--%>
                                                <asp:Image ID="picture" class="zoom" runat="server" />
                                            </div>
                                        </div>

                                        <!--description items-->
                                       
                                       <%-- <div class="product-seller-recommended">                                                                        
                                            <div class="product-description mb-5">
                                                <br />
                                                <h5><b>Description</b></h5>
                                                
                                               
                                                <div style="border-bottom: 1px solid lightgray;  margin-top: 10%; margin-bottom: 5%"></div>

                                                <h5><b>Artist</b></h5>
                                                <p><asp:Label ID="lblArtist" runat="server"></asp:Label></p>
                                            </div>
                                        </div>--%>
                                    </div>

                                    <!-- display price and some details !-->
                                    <div class="product-payment">
                                        
                                        <h3><strong><asp:Label ID="lblName" runat="server"></asp:Label></strong></h3>

                                        <p style="color:#ce2b2b;"><i><asp:Label ID="lblCategory" runat="server"></asp:Label></i></p><br />

                                        <h4 class="product-title mb-2"><asp:Label ID="lblDesc" runat="server"></asp:Label></h4><br />

                                        <%--<p style="color: gray;">Published Date: <asp:Label ID="lblDate" runat="server"></asp:Label></p>--%>
                                        <p style="color: gray;"><asp:Label ID="lblStatus" runat="server"></asp:Label></p>

                                        <%--<input type="submit" value="Add To Wishlist" name="addWishList">--%>
                                        <h5 class="product-price display-4" style="font-size:1.5em;"><asp:Label ID="lblPrice" runat="server"></asp:Label></h5>  <br /><br /><br />
                                       
                                        
                                        <!-- quantity !-->
                                        <%--<input type="submit" value="Add To Cart" name="addCart">--%>
                                       
                                        <!-- Wish List and Cart !-->
                                        <div class="add">                                           
                                            &emsp;&emsp;&emsp;
                                             <asp:Button ID="btnAddCart" runat="server" Text="Add To Cart" /> &emsp;&emsp;
                                            <asp:Button ID="btnAddWish" runat="server" Text="Add To Wishlist" />
                                        </div>                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
</asp:Content>
