<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Wishlist.aspx.cs" Inherits="Ertist.Wishlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <link rel="stylesheet" href=".\css\Wishlist.css">



    <section class="cart_section">
        <div class="page_header">
            <h1>Wishlist</h1>
        </div>



        <div class="cart_all">
            <div class="artwork_container_all">
                <div class="total_artwork_cart">
                    <span>3 Artwroks in Wishlist</span>
                </div>

                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <div class="artwork_container">
                            <div class="artwork_image">
                                <img src="<%# GetImage(Eval("picture")) %>" alt="An Artwork Picture">
                            </div>
                            <div class="artwork_details">
                                <span class="artwor_details_name"><%# Eval("name") %></span>
                                <div class="artist">
                                    <img src=" <%# GetImage(Eval("Expr1")) %>" alt="An Artist Picture">
                                    <span><%# Eval("username") %></span>
                                </div>
                                <div class="artwork_description">
                                    <%# Eval("description") %>
                                </div>
                                <div class="price_remove">
                                    <span class="price"><%# Eval("price") %></span>
                                    <button>REMOVE</button>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT Artwork.artworkID, Artwork.name, Artwork.price, Artwork.description, Artwork.picture, [User].username, [User].picture AS Expr1 FROM Artwork INNER JOIN Wishlist ON Artwork.artworkID = Wishlist.artworkID INNER JOIN [User] ON Wishlist.userID = [User].UserID AND [User].UserID = 6"></asp:SqlDataSource>
        </div>

    </section>


</asp:Content>
