<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Ertist.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    


    <link rel="stylesheet" href="./css/Cart.css">




    <section class="cart_section">
        <div class="page_header">
            <h1>Shopping Cart</h1>
        </div>



        <div class="cart_all">
            <div class="artwork_container_all">
                <div class="total_artwork_cart">
                    <span>3 Artwroks in Cart</span>
                </div>
                <div class="artwork_container">
                    <div class="artwork_image">
                        <img src="./Image/reg_user.jpg" alt="">
                    </div>
                    <div class="artwork_details">
                        <span class="artwor_details_name">Name of the Artwork</span>
                        <div class="artist">
                            <img src="./Image/reg.jpg" alt="">
                            <span>Lai Man Wai</span>
                        </div>
                        <div class="artwork_description">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam nec amet, scelerisque pharetra
                            facilisis ultricies. Bibendum massa mus ornare enim ullamcorper nec. Enim sed id pretium
                            suscipit
                            feugiat id morbi mauris. Ut neque id a, gravida consequat. Nullam sagittis sed quam nulla
                            enim
                            .....
                        </div>
                        <div class="price_remove">
                            <span class="price">$50.00</span>
                            <button>REMOVE</button>
                        </div>
                    </div>
                </div>
                <div class="artwork_container">
                    <div class="artwork_image">
                        <img src="./Image/reg_artist.jpg" alt="">
                    </div>
                    <div class="artwork_details">
                        <span class="artwor_details_name">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam
                            nec amet, scelerisque pharetra
                            facilisis ultricies. Bibendum massa mus ornare enim ullamcorper nec. Enim sed id pretium
                            suscipit
                            feugiat id morbi mauris. Ut neque id a, gravida consequat. Nullam sagittis sed quam nulla
                            enim
                            .....</span>
                        <div class="artist">
                            <img src="./Image/reg.jpg" alt="">
                            <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam nec amet, scelerisque
                                pharetra
                                facilisis ultricies. Bibendum massa mus ornare enim ullamcorper nec. Enim sed id pretium
                                suscipit
                                feugiat id morbi mauris. Ut neque id a, gravida consequat. Nullam sagittis sed quam
                                nulla
                                enim
                                .....</span>
                        </div>
                        <div class="artwork_description">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam nec amet, scelerisque pharetra
                            facilisis ultricies. Bibendum massa mus ornare enim ullamcorper nec. Enim sed id pretium
                            suscipit
                            feugiat id morbi mauris. Ut neque id a, gravida consequat. Nullam sagittis sed quam nulla
                            enim
                            .....
                        </div>
                        <div class="price_remove">
                            <span class="price">$50.00</span>
                            <button>REMOVE</button>
                        </div>
                    </div>
                </div>
                <div class="artwork_container">
                    <div class="artwork_image">
                        <img src="./Image/reg.jpg" alt="">
                    </div>
                    <div class="artwork_details">
                        <span class="artwor_details_name">Name of the Artwork</span>
                        <div class="artist">
                            <img src="./Image/reg.jpg" alt="">
                            <span>Lai Man Wai</span>
                        </div>
                        <div class="artwork_description">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam nec amet, scelerisque pharetra
                            facilisis ultricies. Bibendum massa mus ornare enim ullamcorper nec. Enim sed id pretium
                            suscipit
                            feugiat id morbi mauris. Ut neque id a, gravida consequat. Nullam sagittis sed quam nulla
                            enim
                            .....
                        </div>
                        <div class="price_remove">
                            <span class="price">$50.00</span>
                            <button>REMOVE</button>
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
                                facilisis ultricies. Bibendum massa mus ornare enim ullamcorper nec. Enim sed id pretium
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

    </section>






</asp:Content>
