<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Ertist.Cart" %>

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

                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="artwork_container">
                            <div class="artwork_image">
                                <img src="<%# GetImage(Eval("picture")) %>" alt="">
                            </div>
                            <div class="artwork_details">
                                <span class="artwor_details_name"><%# Eval("name") %></span>
                                <div class="artist">
                                    <img src="<%# Eval("Expr1") %>" alt="">
                                    <span><%# Eval("username") %></span>
                                </div>
                                <div class="artwork_description">
                                    <%# Eval("description") %>
                                </div>
                                <div class="price_remove">
                                    <span class="price">$<%# Eval("price") %></span>
                                    <button>REMOVE</button>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

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
                                Total: <span style="padding-right: 10px">$<%# Eval("Expr1") %></span>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="checkout_button_container">
                    <a href="./MakeOrder.aspx" class="checkout_button" style="text-decoration: none; display: flex; justify-content: center; align-items: center;">Checkout</a>
                </div>
            </aside>
    </section>






</asp:Content>
