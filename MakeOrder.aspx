<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MakeOrder.aspx.cs" Inherits="Ertist.MakeOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <link rel="stylesheet" href="./css/MakeOrder.css">

    <section class="cart_section">
        <div class="page_header">
            <h1>Make Order</h1>
        </div>



        <div class="cart_all">
            <div class="makeOrder_container_all">
                <div class="artwork_container_all">
                    <div class="address">
                        <span>Address</span>
                    </div>
                    <div class="address_container">
                        <div class="address_dropdownlist">
                            <div class="dropdown">
                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1"
                                    data-bs-toggle="dropdown" aria-expanded="false">
                                    Select an Address for Delivery
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                    <li><a class="dropdown-item" href="#">Action</a></li>
                                    <li><a class="dropdown-item" href="#">Another action</a></li>
                                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="address_detail">
                        </div>
                    </div>

                    <div class="total_artwork_cart">
                        <span>Order Product</span>
                    </div>
                    <div class="artworks_container_all">
                        <div class="artwork_container">
                            <div class="artwork_image">
                                <img src="./Image/reg_artist.jpg" alt="">
                            </div>
                            <div class="artwork_details">
                                <span class="artwor_details_name">Name of the Artwork</span>
                                <div class="artist">
                                    <img src="./Image/reg.jpg" alt="">
                                    <span>Lai Man Wai</span>
                                </div>
                                <div class="artwork_description">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam nec amet, scelerisque
                                    pharetra
                                    facilisis ultricies. Bibendum massa mus ornare enim ullamcorper nec. Enim sed id
                                    pretium
                                    suscipit
                                    feugiat id morbi mauris. Ut neque id a, gravida consequat. Nullam sagittis sed quam
                                    nulla
                                    enim
                                    .....
                                </div>
                                <div class="price_remove">
                                    <span class="price">$50.00</span>

                                </div>
                            </div>
                        </div>
                        <div class="artwork_container">
                            <div class="artwork_image">
                                <img src="./pexels-tom-balabaud-1579708.jpg" alt="">
                            </div>
                            <div class="artwork_details">
                                <span class="artwor_details_name">Name of the Artwork</span>
                                <div class="artist">
                                    <img src="./user_picture.jpg" alt="">
                                    <span>Lai Man Wai</span>
                                </div>
                                <div class="artwork_description">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam nec amet, scelerisque
                                    pharetra
                                    facilisis ultricies. Bibendum massa mus ornare enim ullamcorper nec. Enim sed id
                                    pretium
                                    suscipit
                                    feugiat id morbi mauris. Ut neque id a, gravida consequat. Nullam sagittis sed quam
                                    nulla
                                    enim
                                    .....
                                </div>
                                <div class="price_remove">
                                    <span class="price">$50.00</span>

                                </div>
                            </div>
                        </div>
                        <div class="artwork_container">
                            <div class="artwork_image">
                                <img src="./pexels-tom-balabaud-1579708.jpg" alt="">
                            </div>
                            <div class="artwork_details">
                                <span class="artwor_details_name">Name of the Artwork</span>
                                <div class="artist">
                                    <img src="./user_picture.jpg" alt="">
                                    <span>Lai Man Wai</span>
                                </div>
                                <div class="artwork_description">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam nec amet, scelerisque
                                    pharetra
                                    facilisis ultricies. Bibendum massa mus ornare enim ullamcorper nec. Enim sed id
                                    pretium
                                    suscipit
                                    feugiat id morbi mauris. Ut neque id a, gravida consequat. Nullam sagittis sed quam
                                    nulla
                                    enim
                                    .....
                                </div>
                                <div class="price_remove">
                                    <span class="price">$50.00</span>

                                </div>
                            </div>
                        </div>
                        <div class="artwork_container">
                            <div class="artwork_image">
                                <img src="./pexels-tom-balabaud-1579708.jpg" alt="">
                            </div>
                            <div class="artwork_details">
                                <span class="artwor_details_name">Name of the Artwork</span>
                                <div class="artist">
                                    <img src="./user_picture.jpg" alt="">
                                    <span>Lai Man Wai</span>
                                </div>
                                <div class="artwork_description">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam nec amet, scelerisque
                                    pharetra
                                    facilisis ultricies. Bibendum massa mus ornare enim ullamcorper nec. Enim sed id
                                    pretium
                                    suscipit
                                    feugiat id morbi mauris. Ut neque id a, gravida consequat. Nullam sagittis sed quam
                                    nulla
                                    enim
                                    .....
                                </div>
                                <div class="price_remove">
                                    <span class="price">$50.00</span>

                                </div>
                            </div>
                        </div>
                        <div class="artwork_container">
                            <div class="artwork_image">
                                <img src="./pexels-tom-balabaud-1579708.jpg" alt="">
                            </div>
                            <div class="artwork_details">
                                <span class="artwor_details_name">Name of the Artwork</span>
                                <div class="artist">
                                    <img src="./user_picture.jpg" alt="">
                                    <span>Lai Man Wai</span>
                                </div>
                                <div class="artwork_description">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam nec amet, scelerisque
                                    pharetra
                                    facilisis ultricies. Bibendum massa mus ornare enim ullamcorper nec. Enim sed id
                                    pretium
                                    suscipit
                                    feugiat id morbi mauris. Ut neque id a, gravida consequat. Nullam sagittis sed quam
                                    nulla
                                    enim
                                    .....
                                </div>
                                <div class="price_remove">
                                    <span class="price">$50.00</span>

                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <aside class="summary">
                    <h2>Summary</h2>
                    <div class="artwork_each_price">
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam nec amet, scelerisque
                                    pharetra
                                    facilisis ultricies. Bibendum massa mus ornare enim ullamcorper nec. Enim sed id
                                    pretium
                                    suscipit
                                    feugiat id morbi mauris. Ut neque id a, gravida consequat. Nullam sagittis sed quam
                                    nulla
                                    enim
                                    .....
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>

                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>
                        <div class="each_artwork">
                            <div class="artwork_quantity">
                                <div class="quantity">1x</div>
                                <div class="summary_artwork_name">
                                    name
                                </div>
                            </div>
                            <div class="summary_each_price">
                                $50.00
                            </div>
                        </div>

                    </div>
                    <div class="total_price">
                        <div>
                            Total: <span>$250</span>
                        </div>
                    </div>
                    <div class="checkout_button_container">
                        <button class="checkout_button">Checkout</button>
                    </div>
                </aside>

            </div>
        </div>

    </section>


</asp:Content>
