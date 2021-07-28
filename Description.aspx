<%@ Page Title="Ertist" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Description.aspx.cs" Inherits="Ertist.Description1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/description.css" rel="stylesheet" />
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">

     <div class="container" style="font-size:12px; font-family: 'Open Sans', sans-serif;">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card mb-10">
                                <!-- header !-->
                                <div class="card-header" style="background-color:white; ">
                                    <nav class="header-navigation" >
                                        <a href="#" class="btn btn-link">Back to the list</a>
                                    </nav>
                                </div>

                                <!-- image !-->
                                <div class="card-body store-body">
                                    <div class="product-info">
                                        <div class="product-gallery">    
                                            <div class="product-gallery-featured">
                                                <img class="zoom" src="Image/Brown.jpg" />
                                            </div>
                                        </div>

                                        <!--description items-->
                                       
                                        <div class="product-seller-recommended">                                                                        
                                            <div class="product-description mb-5">
                                                <br />
                                                <h5><b>Description</b></h5>
                                                <p><b>What it is:</b></p>
                                                <p>A lightweight, refreshing treatment lotion, with 2X pomegranate concentrate, that hydrates and helps reveal skin’s rosy glow.</p>
                                                <p><b>What it does:</b></p>
                                                <p>This treatment lotion detoxifies and infuses with energy for a rosy glow. Lightweight, refreshing hydration—supercharged, it helps hydrate and refresh skin. It has a precision-crafted super-pomegranate complex, with 2X pomegranate concentrate.</p>
                                                <p><b>What else you need to know:</b></p>
                                               
                                                <div style="border-bottom: 1px solid lightgray;  margin-top: 10%; margin-bottom: 5%"></div>

                                                <h5><b>Artist</b></h5>
                                                <p>

                                                    Water\Aqua\Eau, Glycerin, Propanediol, Butylene Glycol, Punica Granatum (Pomegranate) Extract, Sapindus Mukorossi Fruit Extract, Lycium Chinense (Wolfberry) Fruit Extract, Vaccinium Angustifolium (Blueberry) Fruit Extract, Vaccinium Macrocarpon (Cranberry) Fruit Extract, Glycine Soja (Soybean) Seed Extract, Hypnea Musciformis (Algae) Extract, Gelidiella Acerosa Extract, Tetrahexyldecyl Ascorbate, Ergothioneine, Tocopheryl Acetate, Cucumis Sativus (Cucumber) Fruit Extract, Paeonia Suffruticosa (Peony) Root Extract, Acetyl Glucosamine, Sodium Hyaluronate, Lens Esculenta (Lentil) Fruit Extract, Pyrus Malus (Apple) Fruit Extract, Sodium Lactate, Panax Ginseng (Ginseng) Root Extract, Citrullus Lanatus (Watermelon) Fruit Extract, Sucrose, Yeast Extract\Faex\Extrait De Levure, Caffeine, Sodium Pca, Trehalose, Caesalpinia Spinosa Gum, Caprylyl Glycol, 
                                                    Ppg-6-Decyltetradeceth-30, Hexylene Glycol, Sodium Hydroxide, Fragrance (Parfum), Citric Acid, Sodium Citrate, Trisodium Hedta, Potassium Sorbate, Sodium Benzoate, Phenoxyethanol, Red 4 (Ci 14700), Yellow 6 (Ci 15985).</p>

                                                <div style="border-bottom: 1px solid lightgray;  margin-top: 10%; margin-bottom: 5%"></div>
                                                                                                                                                                                                               
                                            </div>
                                        </div>
                                    </div>

                                    <!-- display price and some details !-->
                                    <div class="product-payment">
                                        <%--<p class="last-sold text-muted"><small>5 items sold</small></p>--%>
                                        <h3><strong>Product name</strong></h3><br />
                                        <h4 class="product-title mb-2">Artist name</h4><br />
                                        <p style="color: gray;">Description</p><br />
                                        
                                        <%--<p>Skin Type : All Types<br>Net Wt.&emsp;: 250ml</p><br />--%>
                                        <h5 class="product-price display-4" style="font-size:1.5em;">Price</h5>  <br />
                                        <!--<p class="text-success"><i class="fa fa-credit-card"></i> 12x or  5x $ 5.00</p> !-->
                                       <%-- <p class="mb-0"><i class="fa fa-truck"></i> Delivery in all territory</p><br><br />--%>
                                        
                                        <!-- quantity !-->
                                        <%--<label for="quant">Quantity</label>
                                        <input type="number" name="quantity" min="1" id="quant" value="quantity" class="form-control mb-5 input-lg" placeholder="Choose the quantity"/>--%>
                                       
                                        <!-- Wish List and Cart !-->
                                        <div class="add">                                           
                                            &emsp;&emsp;&emsp;
                                             <input type="submit" value="Add To Wishlist" name="addWishList"> &emsp;&emsp;
                                            <input type="submit" value="Add To Cart" name="addCart">
                                        </div>                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

</asp:Content>
