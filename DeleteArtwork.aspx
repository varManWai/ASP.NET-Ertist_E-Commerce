<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteArtwork.aspx.cs" Inherits="Ertist.DeleteArtwork" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/button.css" rel="stylesheet" />

     <div style="padding:5%;">
    <h3>Delete Artwork</h3><br />
            <table class="auto-style5" style="font-size:14px">
                <tr>
                    <td class="auto-style3" style="width: 140px">Image</td>
                    <td>
                        <asp:Image ID="picture" runat="server" Width="200" Height="200"/></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px; height: 21px;"></td>
                    <td style="height: 21px"></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">Artwork ID</td>
                    <td><asp:TextBox ID="artid" runat="server" ReadOnly="true"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="height: 22px; width: 140px">Artwork Name</td>
                    <td style="height: 22px"><asp:TextBox ID="txtName" runat="server" ReadOnly="true"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style1" style="width: 140px">Artwork Price</td>
                    <td><asp:TextBox ID="txtPrice" runat="server" ReadOnly="true"></asp:TextBox>
                </tr>
                 <tr>
                    <td class="auto-style1" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">Artwork Description</td>
                    <td> <asp:TextBox ID="txtDesc" runat="server" ReadOnly="true"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td> &nbsp;</td>
                </tr>
                  <tr>
                    <td class="auto-style3" style="width: 140px">Stock</td>
                    <td><asp:TextBox ID="txtStock" ReadOnly="True" placeHolder="1" runat="server"></asp:TextBox></td>
                </tr>
                  <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px; height: 22px;">Available</td>
                    <td style="height: 22px"><asp:DropDownList ID="ddlAvailable" runat="server" ReadOnly="true">
                <asp:ListItem>Available</asp:ListItem>
                <asp:ListItem>Not Available</asp:ListItem>
            </asp:DropDownList></td>
                </tr>
               
                <tr>
                    <td class="auto-style3" style="width: 140px; height: 22px;">&nbsp;</td>
                    <td style="height: 22px">&nbsp;</td>
                </tr>
               
                <tr>
                    <td class="auto-style3">Category</td>
                    <td>
                        <asp:DropDownList ID="ddlCategory" runat="server" DataSourceID="SqlCategory" DataTextField="name" DataValueField="categoryID" ReadOnly="true">
                        </asp:DropDownList>
                    </td>
                </tr>
               <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Gallery</td>
                    <td>
                        <asp:DropDownList ID="ddlGallery" runat="server" DataSourceID="SqlGallery" DataTextField="name" DataValueField="galleryID"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">
                       
                        <asp:Button ID="btnDelete" class="art-pg-btn" runat="server"  Text="Delete" OnClick="btnDelete_Click" />
                    </td>
                    <td>
                         <asp:Button ID="btnCancel" class="art-pg-btn" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style1" style="width: 140px"></td>
                    <td class="auto-style4"></td>
                </tr>
               
            </table>
        </div>

    <asp:SqlDataSource ID="SqlGallery" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT * FROM [Gallery]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlCategory" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
</asp:Content>
