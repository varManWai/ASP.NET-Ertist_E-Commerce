<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="PurchaseHistory.aspx.cs" Inherits="Ertist.PurchaseHistory1" %>
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
                                    <th width="10%" style="font-weight: 600;">Order ID</th>
                                    <th width="15%" style="font-weight: 600;">Date</th>
                                    <%--<th width="15%">Name</th>--%>
                                    <th width="15%" style="font-weight: 600;">Total Price</th>
                                    <th width="15%" style="font-weight: 600;">Status</th>
                                    <th width="15%"></th>
                                    <%--<%# Eval("orderID") %>--%>
                                </tr>
                            </thead>
                            <asp:Repeater ID="rptPurchase" runat="server" DataSourceID="SqlPurchase">
                                <ItemTemplate>
                                    <tbody>
                                        <tr>
                                            <td width="15%" class="price" style="font-size: 13px;">                 
                                                    <asp:Label ID="lblID" runat="server"><%# Eval("orderID") %></asp:Label>
                                                    <%--<asp:HyperLink ID="hylID" runat="server"><%# Eval("orderID") %></asp:HyperLink>--%>                                                 
                                            </td>
                                         
                                            <td width="15%" class="price" style="font-size: 13px; font-weight: 400;">
                                                <asp:Label ID="lblDate" runat="server"><%# Eval("date") %></asp:Label></td>

                                            <td width="15%" class="price" style="font-size: 13px; font-weight: 400;">
                                                <asp:Label ID="lblTotalPrice" runat="server">&emsp;$ <%# Eval("totalPrice") %></asp:Label></td>

                                            <td width="15%" class="price" style="font-size: 13px; font-weight: 400;">
                                                <asp:Label ID="Label1" runat="server">&emsp;<%# Eval("status") %></asp:Label></td>

                                            <td width="15%" style="font-size: 13px; font-weight: 400;">
                                                <a href="PurchaseDetails.aspx?orderID=<%# DataBinder.Eval(Container.DataItem, "orderID") %>">
                                                <input id="btnSeeMore" class="art-pg-btn" type="button" value="See More" style="background-color: #ca3f49; border-radius: 300px; width: 100%; max-width: 158px;height: 38px;color: white;font-size: clamp(10px, 1.5vw, 15px);letter-spacing: 0.12em;outline: none;border: none;" />
                                                    </a>
                                            </td>

                                        </tr>

                                    </tbody>
                                </ItemTemplate>
                            </asp:Repeater>
                        </table>
                    </div>
                </div>
                <asp:SqlDataSource ID="SqlPurchase" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT [Order].date, [Order].orderID, [Order].totalPrice, [Order].status FROM Order_Artwork INNER JOIN [Order] ON Order_Artwork.orderID = [Order].orderID INNER JOIN [User] ON [Order].userID = [User].UserID WHERE ([User].UserID = @userID)">
                    <SelectParameters>
                        <asp:SessionParameter SessionField="UserID" Name="userID"></asp:SessionParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </div>
        </div>
    </div>

</asp:Content>
