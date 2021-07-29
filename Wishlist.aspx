<%@ Page Title="Ertist" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Wishlist.aspx.cs" Inherits="Ertist.Wishlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/wishlist.css" rel="stylesheet" />
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <div class="cart-wrap">
		<div class="container">
	        <div class="row">
			    <div class="col-md-12">
			        <div class="main-heading mb-10">My wishlist</div>
			        <div class="table-wishlist">
				        <table cellpadding="0" cellspacing="0" border="0" width="100%">
				        	<thead>
					        	<tr>
					        		<th width="45%">Product Name</th>
					        		<th width="15%">Unit Price</th>
					        		<th width="15%"></th>
					        		<th width="15%"></th>
					        	</tr>
					        </thead>
					        <tbody>
					        	<tr>
					        		<td width="45%">
					        			<div class="display-flex align-center">
		                                    <div class="img-product" style="width:30%;">
		                                        <%--<img src="Image/Brown.jpg" />--%><asp:Image ID="imgArtwork" runat="server" />
		                                    </div>
		                                    <div class="name-product">
		                                        &emsp;<asp:Label ID="lblName" runat="server"></asp:Label>
		                                    </div>
	                                    </div>
	                                </td>
					        		<td width="15%" class="price">
                                        <asp:Label ID="lblPrice" runat="server"></asp:Label>
                                    </td>
					        		<td width="15%">
                                        <asp:Button ID="btnAddCart" class="round-black-btn small-btn" runat="server" Text="Add To Cart" />
                                    </td>
					        		<td width="15%">
                                        <asp:Button ID="btnRemove" class="round-red-btn small-btn" runat="server" Text="Remove"  />
                                    </td>				        		
					        	</tr>					        				        	
				        	</tbody>
				        </table>
				    </div>
			    </div>
			</div>
		</div>
	</div>
</asp:Content>
