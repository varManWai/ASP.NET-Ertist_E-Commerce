<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MakeOrder.aspx.cs" Inherits="Ertist.MakeOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <link rel="stylesheet" href="./css/MakeOrder.css">

    <section class="cart_section">
        <div class="page_header">
            <h1>Make Order</h1>
        </div>


        <% if (Session["UserID"] == null)
            {

        %>
        <div style="display: flex; justify-content: center; align-items: center;">
            <div style="font-size: 50px; padding-top: 50px">Please login first</div>
        </div>




        <% 
            }
            else
            {
        %>
        <div class="cart_all">
            <div class="makeOrder_container_all">
                <div class="artwork_container_all">
                    <div class="address">
                        <span>Address</span>
                    </div>
                    <div class="address_container" style="display: flex">

                        <div class="address_dropdownlist" style="height: 47px !important; position: relative; bottom: 10px; background-color: white; text-decoration: none; color: black; padding-top: 30px;">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT addressID, addressName, userID FROM Address WHERE (userID = @UserID)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="UserID" SessionField="UserID" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="addressName" DataValueField="addressName" Style="font-size: 18px; display: flex; align-items: flex-end; justify-content: flex-end; height: 47px; width: 736px !important; padding-top: 10px; padding-bottom: 10px; text-align: center; background-color: transparent; text-decoration: none; color: black; display: block;"></asp:DropDownList>
                        </div>
                        <div class="address_detail">
                            <a href="./AddAddress.aspx" style="width: 100%; padding-top: 10px; padding-bottom: 10px; text-align: center; background-color: #ca3f49; text-decoration: none; color: white; display: block;">Add Address</a>
                        </div>
                    </div>

                    <div class="total_artwork_cart">
                        <span>Order Product</span>
                    </div>
                    <div class="artworks_container_all">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT [User].UserID, [User].username, [User].picture, Cart.userID AS UserID2, Cart.artworkID, Artwork.artworkID AS ArtworkID2, Artwork.price, Artwork.name, Artwork.picture AS picture2, Artwork.description FROM [User] INNER JOIN Cart ON [User].UserID = Cart.userID INNER JOIN Artwork ON Cart.artworkID = Artwork.artworkID WHERE ([User].UserID = @UserID)">
                            <SelectParameters>
                                <asp:SessionParameter Name="UserID" SessionField="UserID" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                        <asp:Repeater ID="Repeater2" runat="server" OnItemDataBound="rpt2_ItemDataBound">
                            <ItemTemplate>
                                <div class="artwork_container">
                                    <asp:HiddenField ID="hdfUserId" runat="server" Value='<%# Eval("artworkID") %>' />
                                    <div class="artwork_image">
                                        <img src="<%# GetImage(Eval("picture")) %>" alt="An Artwork Picture">
                                    </div>
                                    <div class="artwork_details" style="width: 614px;">
                                        <span class="artwor_details_name"><%# Eval("name") %></span>
                                        <div class="artist">
                                            <asp:Repeater ID="Repeater3" runat="server">
                                                <ItemTemplate>
                                                    <img src="<%# GetImage(Eval("picture")) %>" alt="An Artist Picture">
                                                    <span><%# Eval("username") %></span>
                                                </ItemTemplate>
                                            </asp:Repeater>
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
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT Artwork.price, Artwork.name FROM [User] INNER JOIN Cart ON [User].UserID = Cart.userID INNER JOIN Artwork ON Cart.artworkID = Artwork.artworkID WHERE ([User].UserID = @UserID)">
                            <SelectParameters>
                                <asp:SessionParameter Name="UserID" SessionField="UserID" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:Repeater ID="Repeater5" runat="server" DataSourceID="SqlDataSource3">
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
                    <div class="total_price" style="display: flex; flex-direction: column; border-top: 2px grey solid; margin-top: 20px">
                        <div style="display: flex; flex-direction: row; justify-content: space-between; font-size: 18px;">
                            Shipping Fee: <span style="padding-right: 10px; font-size: 18px; color: black; font-weight: 500; text-align: right;">$4.99</span>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString='<%$ ConnectionStrings:ertistDB %>' SelectCommand="SELECT SUM(Artwork.price) AS Expr1 FROM Artwork INNER JOIN Cart ON Artwork.artworkID = Cart.artworkID INNER JOIN [User] ON Cart.userID = [User].UserID WHERE ([User].UserID = @userID)">
                            <SelectParameters>
                                <asp:SessionParameter SessionField="UserID" Name="userID"></asp:SessionParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:Repeater ID="Repeater3" DataSourceID="SqlDataSource4" runat="server">
                            <ItemTemplate>
                                <div style="display: flex; flex-direction: row; justify-content: space-between; font-size: 18px;">
                                    Subtotal: <span style="padding-right: 10px; color: black; font-weight: 500; font-size: 18px;">$<%# Eval("Expr1") %></span>
                                </div>
                                <div style="display: flex; flex-direction: row; justify-content: space-between; font-weight: 700; border-top: 2px grey solid; margin-top: 10px; padding: 10px 0px">
                                    Total: <span style="padding-right: 10px; color: black; font-weight: 700;">$<%# getTotal(Eval("Expr1"))  %></span>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="checkout_button_container">

                        <asp:Button ID="Button2" runat="server" Text="Checkout" CssClass="checkout_button" Style="text-decoration: none; display: flex; justify-content: center; align-items: center;" OnClick="Button2_Click" />

                    </div>
                </aside>
            </div>
        </div>

    </section>
    <%}
    %>
</asp:Content>
