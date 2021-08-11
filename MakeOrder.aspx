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
                                    <asp:Repeater ID="Repeater4" runat="server">
                                        <ItemTemplate>
                                            <li><a class="dropdown-item" href="#"><%# Eval("addressName") %></a></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
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
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <div class="artwork_container">
                                    <div class="artwork_image">
                                        <img src="<%# GetImage(Eval("picture")) %>" alt="An Artwork Picture">
                                    </div>
                                    <div class="artwork_details">
                                        <span class="artwor_details_name">Name of the Artwork</span>
                                        <div class="artist">
                                            <img src="<%# Eval("picture") %>" alt="An Artist Picture">
                                            <span><%# Eval("name") %></span>
                                        </div>
                                        <div class="artwork_description">
                                            <%# Eval("description") %>
                                        </div>
                                        <div class="price_remove">
                                            <span class="price">$<%# Eval("price") %></span>

                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>

                <aside class="summary">
                    <h2>Summary</h2>

                    <div class="artwork_each_price">
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <div class="each_artwork">
                                    <div class="artwork_quantity">
                                        <div class="quantity">1x</div>
                                        <div class="summary_artwork_name">
                                            <%# Eval("name") %>
                                        </div>
                                    </div>
                                    <div class="summary_each_price">
                                        $<%# Eval("price") %>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
                    <div class="total_price">
                        <asp:Repeater ID="Repeater3" runat="server">
                            <ItemTemplate>
                                <div>
                                    Total: <span style="padding-right: 10px;">$<%# Eval("Expr1") %></span>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="checkout_button_container">
                        <a href="./Payment.aspx?address='Home'" class="checkout_button" style="text-decoration: none; display: flex; justify-content: center; align-items: center;">Checkout</a>
                    </div>
                </aside>
            </div>
        </div>

    </section>


</asp:Content>
