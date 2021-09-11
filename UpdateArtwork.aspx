<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateArtwork.aspx.cs" Inherits="Ertist.UpdateArtwork" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="css/button.css" rel="stylesheet" />
    <div style="padding:5%;">
    <h3>Update Artwork</h3><br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Width="500px" />
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
                    <td style="height: 22px">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Artwork Name is Required" Text="*" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" style="width: 140px">Artwork Price</td>
                    <td>
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPrice" runat="server" ErrorMessage="Artwork Price is Required" Text="*" ForeColor="Red" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revPrice" runat="server" ErrorMessage="Price must in Number" Text="*" ForeColor="Red" ControlToValidate="txtPrice" ValidationExpression="^(\d+)?$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style1" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">Artwork Description</td>
                    <td> <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDesc" runat="server" ErrorMessage="Artwork Description is Required" ControlToValidate="txtDesc" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>

                </tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td> &nbsp;</td>
                </tr>
               <tr>
                    <td class="auto-style3" style="width: 140px">Artwork Height(cm)</td>
                    <td><asp:TextBox ID="txtHeight" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvHeight" runat="server" ErrorMessage="Artwork Height is Required" ControlToValidate="txtHeight" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <%--<asp:RegularExpressionValidator ID="rgvSize" runat="server" ErrorMessage="Invalid Format" ControlToValidate="txtSize" Text="*" ForeColor="Red" ValidationExpression="^\d+(\.\d+)+(cm\s)+(x|X)"></asp:RegularExpressionValidator>--%>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td> &nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">Artwork Width(cm)</td>
                    <td><asp:TextBox ID="txtWidth" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvWidth" runat="server" ErrorMessage="Artwork Width is Required" ControlToValidate="txtWidth" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <%--<asp:RegularExpressionValidator ID="rgvSize" runat="server" ErrorMessage="Invalid Format" ControlToValidate="txtSize" Text="*" ForeColor="Red" ValidationExpression="^\d+(\.\d+)+(cm\s)+(x|X)"></asp:RegularExpressionValidator>--%>
                    </td>
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
                    <td class="auto-style3" style="height: 22px">Gallery</td>
                    <td style="height: 22px">
                        <asp:DropDownList ID="ddlGallery" runat="server" DataSourceID="SqlGallery" DataTextField="name" DataValueField="galleryID"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="height: 22px">&nbsp;</td>
                    <td style="height: 22px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">
                         <asp:Button ID="btnUpdate" class="art-pg-btn" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                    </td>
                    <td>
                       
                        <asp:Button ID="btnCancel" class="art-pg-btn" runat="server" OnClick="btnCancel_Click" Text="Cancel" />
                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style1" style="width: 140px"></td>
                    <td class="auto-style4"></td>
                </tr>
               
            </table>
        </div>

    <asp:SqlDataSource ID="SqlGallery" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT * FROM [Gallery] WHERE ([userID] = @userID)">
        <SelectParameters>
            <asp:SessionParameter Name="userID" SessionField="UserID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlCategory" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
</asp:Content>
