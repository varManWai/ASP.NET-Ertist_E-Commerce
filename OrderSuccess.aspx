<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderSuccess.aspx.cs" Inherits="Ertist.OrderSuccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="display: flex; justify-content: center; align-items: center; flex-direction: column">
        <div style="font-size: 50px; padding-top: 50px">Ordered Succesfully. </div>
        <a href="./Homepage.aspx">Back to Home</a>
    </div>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT[User].UserID, [User].email, [User].username, [User].picture, Cart.userID AS UserID2, Cart.artworkID, Artwork.artworkID AS ArtworkID2, Artwork.price, Artwork.name, Artwork.picture AS picture2, Artwork.description FROM[User] INNER JOIN Cart ON[User].UserID = Cart.userID INNER JOIN Artwork ON Cart.artworkID = Artwork.artworkID WHERE([User].UserID = @UserID)">
        <SelectParameters>
            <asp:SessionParameter Name="UserID" SessionField="UserID" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div style="display: none"><%# Session["artworkId"] = Convert.ToInt32(Eval("artworkID")) %></div>

            <% UpdateArtwork(Convert.ToInt32(Session["artworkId"])); %>
        </ItemTemplate>
    </asp:Repeater>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT TOP (1) * FROM [Order] WHERE (userID = @userID) ORDER BY orderID DESC">
        <SelectParameters>
            <asp:SessionParameter Name="UserID" SessionField="UserID" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            <div style="display: none"><%# Session["orderId"] = Convert.ToInt32(Eval("orderID"))  %>

            <%# Session["orderDate"] = (Eval("date"))  %></div>
        </ItemTemplate>
    </asp:Repeater>


    <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div style="display: none">
                <%# Session["artworkId2"] = Convert.ToInt32(Eval("artworkID")) %>
            </div>

            <% insertOrderArtwork(Convert.ToInt32(Session["artworkId2"])); %>
            <% clearCart(Convert.ToInt32(Session["artworkId2"])); %>
        </ItemTemplate>
    </asp:Repeater>


</asp:Content>
