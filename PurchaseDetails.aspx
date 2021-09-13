<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PurchaseDetails.aspx.cs" Inherits="Ertist.PurchaseDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <link href="css/PurchaseDetails.css" rel="stylesheet" />
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
                                <tr style="font-weight: 600;">
                                    <%--<th width="10%"></th>--%>
                                    <th width="10%">Order ID</th>
                                    <th width="15%">Artwork</th>
                                    <%--<th width="15%">Date</th>--%>
                                    <th width="15%">Address</th>
                                    <th width="15%">Shipping Fee</th>
                                    <th width="15%">Total Price</th>
                                    <th width="15%">Status</th>
                                    <%--<%# Eval("orderID") %>--%>
                                </tr>
                            </thead>
                                    <tbody>
                                        <tr>
                                            <td width="15%" class="price" style="font-size: 13px; font-weight: 600; ">
                                                <asp:Label ID="lblID" runat="server"></asp:Label></td>
                                            <td width="15%">
                                                <div class="display-flex align-center">
                                                    <%--<div class="img-product">
                                                        <img src="<%# GetImage(Eval("picture")) %>">
                                                    </div>--%>
                                                    <div class="name-product">
                                                        <asp:Label ID="lblName" runat="server"></asp:Label>
                                                    </div>
                                                </div>
                                            </td>
                                           <%-- <td width="15%" class="price" style="font-size: 13px">
                                                <asp:Label ID="lblDate" runat="server"></asp:Label></td>--%>

                                            <td width="15%" class="address" style="font-size: 13px">
                                                <asp:Label ID="lblAddress" runat="server"></asp:Label>
                                                <asp:Label ID="lblPostCode" runat="server"></asp:Label></td> 
                                            
                                             <td width="15%" class="price" style="font-size: 13px">
                                                 <asp:Label ID="lblShippingFee" runat="server">&emsp;</asp:Label></td>

                                            <td width="15%" class="price" style="font-size: 13px">
                                                <asp:Label ID="lblTotalPrice" runat="server">&emsp;</asp:Label></td>

                                            <td width="15%" class="price" style="font-size: 13px">
                                                <asp:Label ID="lblStatus" runat="server">&emsp;</asp:Label></td>
                                        </tr>
                                    </tbody>
                        </table>
                    </div>

                    <div>
                        <asp:Button ID="btnAdd" runat="server" class="art-pg-btn" Text="Back" OnClick="btnAdd_Click" />
                    </div>

                </div>
                <br />
            </div>
        </div>
    </div>

</asp:Content>
