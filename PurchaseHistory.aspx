<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PurchaseHistory.aspx.cs" Inherits="Ertist.PurchaseHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/PurchaseHistory.css" rel="stylesheet" />
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <div class="cart-wrap">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="main-heading mb-10">Purchase History</div>
                    <div class="table-wishlist">
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                            <thead>
                                <tr>
                                    <%--<th width="10%"></th>--%>
                                    <th width="15%">Order ID</th>
                                    <th width="15%">Name</th>
                                    <th width="15%">Date</th>
                                    <th width="15%">Total Price</th>
                                    <th width="15%"></th>
                                    <%--<%# Eval("orderID") %>--%>
                                </tr>
                            </thead>
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <tbody>
                                        <tr>
                                            <td width="15%" class="price">
                                                <asp:Label ID="lblID" runat="server"><%# Eval("orderID") %></asp:Label></td>
                                            <%--<td width="15%" class="price"><asp:Label ID="lblName" runat="server"><%# Eval("name") %></asp:Label></td>--%>
                                            <td width="15%" class="price">
                                                <asp:Label ID="lblDate" runat="server"><%# Eval("date") %></asp:Label></td>
                                            <td width="15%" class="price">
                                                <asp:Label ID="lblTotalPrice" runat="server">RM <%# Eval("totalPrice") %>.00</asp:Label></td>
                                        </tr>
                                    </tbody>
                                </ItemTemplate>
                            </asp:Repeater>
                        </table>
                    </div>
                </div>
                <%--<asp:SqlDataSource ID="SqlPurchase" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT Artwork.name, Artwork.picture, [Order].date, [Order].orderID FROM Artwork INNER JOIN Order_Artwork ON Artwork.artworkID = Order_Artwork.artworkID INNER JOIN [Order] ON Order_Artwork.orderID = [Order].orderID WHERE (Artwork.artworkID = @artworkID)">
                <SelectParameters>
                    <asp:SessionParameter Name="artworkID" SessionField="userID" />
                </SelectParameters>
            </asp:SqlDataSource>--%>
                <br />
            </div>
        </div>
    </div>
	
</asp:Content>
