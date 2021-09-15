<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateGallery.aspx.cs" Inherits="Ertist.UpdateGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../css/GalleryCRUD.css" rel="stylesheet" />

    <style>        
        .auto-style3 {
            width: 140px;
            height: 22px;
        }
        .auto-style4 {
            height: 22px;
        }
    #MainContent_ValidationSummary ul{
            list-style-type:none;
            text-align:center;
            margin:10px 0 20px 0;
        }
    </style>

    <div style="font-size:14px; padding:2%" class="container" >
        <asp:ValidationSummary ID="ValidationSummary" runat="server" ForeColor="Red" Width="1065px" />

            <div class="title-container">
                <h3 class="text-center">Update Gallery</h3><br />
            </div>


            <table class="gal-table">
                <tr>
                    <td class="gal-lbl auto-style3">Gallery Name&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtGalName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvtxtGalName" runat="server" ErrorMessage="Name is required" ForeColor="Red" ControlToValidate="txtGalName" >*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revtxtGalName" runat="server" ErrorMessage="Name should not be more than 50 characters " Text="*" ForeColor="Red" ControlToValidate="txtGalName" ValidationExpression="^[0-9a-zA-Z ]{0,50}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style3 gal-lbl" style="width: 140px">Cover Photo&nbsp;</td>
                    <td><asp:Image ID="cover" runat="server" Width="100" Height="100"/></td>
                </tr>
                <tr>
                    <td class="auto-style3 gal-lbl" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3 gal-lbl" style="width: 140px">&nbsp;</td>
                    <td>
                        <asp:FileUpload ID="imgUpload" runat="server" CssClass="auto-style2" Width="100px"/>
                        <asp:RequiredFieldValidator ID="rfvImgUpload" runat="server" ErrorMessage="Image is required"  Text="*" ForeColor="Red" ControlToValidate="imgUpload"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revImgUpload" runat="server" ErrorMessage="File must be in .PNG/.JPG/.JEPG " ControlToValidate="imgUpload" Text="*" ForeColor="Red" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.png|.PNG|.jpg|.JPG|.jpeg|.JPEG)$"></asp:RegularExpressionValidator>
                    </td>
                </tr>


                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
        </table>
           <div class="gal-con-btn-container">
            <asp:Button ID="btnAddGal" class="art-pg-btn gal-btn gal-con-btn" runat="server" 
                Text="Update Gallery" OnClick="btnUpGal_Click" />
            <asp:Button ID="btnCancel" class="art-pg-btn gal-btn gal-con-btn" runat="server" 
                Text="Cancel" OnClick="btnCancel_Click" />
           </div>
            <br />
            <br />
    </div>
    </asp:Content>

