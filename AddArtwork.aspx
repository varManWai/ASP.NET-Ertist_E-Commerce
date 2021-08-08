<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddArtwork.aspx.cs" Inherits="Ertist.AddArtwork1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="font-size:14px; padding:5%">
            <h3>Add Artwork</h3><br />
            <table class="auto-style5">
                <tr>
                    <td class="auto-style3" style="width: 140px">Image</td>
                    <td><asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style2" /></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">Artwork ID</td>
                    <td><asp:TextBox ID="artid" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="height: 22px; width: 140px">Artwork Name</td>
                    <td style="height: 22px"><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style1" style="width: 140px">Artwork Price</td>
                    <td><asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                </tr>
                 <tr>
                    <td class="auto-style1" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">Artwork Description</td>
                    <td> <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox></td>
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
                    <td style="height: 22px"><asp:DropDownList ID="ddlAvailable" runat="server">
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
                        <asp:DropDownList ID="ddlCategory" runat="server" DataSourceID="SqlCategory" DataTextField="name" DataValueField="categoryID">
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
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
               
                <tr>
                    <td class="auto-style1" style="width: 140px"><asp:Button ID="btnAdd" runat="server" Text="Add Artwork" OnClick="btnAdd_Click" /></td>
                    <td class="auto-style4"><asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click"  /></td>
                </tr>
               
            </table>

        <asp:SqlDataSource ID="SqlGallery" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT * FROM [Gallery]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlCategory" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            <br />
    </div>
</asp:Content>
