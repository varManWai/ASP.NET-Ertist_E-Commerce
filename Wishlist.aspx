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

                <script>
                    console.log("<%# Session["UserID"] %>");
                    console.log("<%# Session["roles"] %>"); 
                </script>


                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <div class="artwork_container">
                            <div class="artwork_image">
                                <img src="<%# GetImage(Eval("picture")) %>" alt="An Artwork Picture">
                            </div>
                            <div class="artwork_details">
                                <span class="artwor_details_name"><%# Eval("name") %></span>
                                <div class="artist">
                                    <img src=" <%# Eval("Expr1") %>" alt="An Artist Picture">
                                    <span><%# Eval("username") %></span>
                                </div>
                                <div class="artwork_description">
                                    <%# Eval("description") %>
                                </div>
                                <div class="price_remove">
                                    <span class="price">$<%# Eval("price") %></span><asp:TextBox runat="server" ID="txtWishlistID" Text='<%# Eval("wishlistID")%>'></asp:TextBox>
                                    <asp:Button ID="Button1" runat="server" OnClick="btnRemove_Click" CustomParameter='<%# Eval("wishlistID") %>' Text="Remove" Style="background-color: #ca3f49; outline: none; border: none; border-radius: 300px; width: 100%; max-width: 158px; height: 38px; color: white; font-size: clamp(10px, 1.5vw, 15px); margin-left: 20px; letter-spacing: 0.12em;" />

                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT Artwork.artworkID, Artwork.name, Artwork.price, Artwork.description, Artwork.picture, [User].username, [User].picture AS Expr1, Wishlist.wishlistID FROM Artwork INNER JOIN Wishlist ON Artwork.artworkID = Wishlist.artworkID INNER JOIN [User] ON Wishlist.userID = [User].UserID AND [User].UserID = '20'"></asp:SqlDataSource>
        </div>

        <%--<asp:Button ID="Button1" runat="server" Text="Button" Width="156px" />--%>
    </section>


</asp:Content>
