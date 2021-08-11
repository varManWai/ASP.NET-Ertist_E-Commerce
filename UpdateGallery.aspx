<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateGallery.aspx.cs" Inherits="Ertist.UpdateGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/GalleryCRUD.css" rel="stylesheet" />

            <div style="font-size:14px; padding:2%" class="container">
            <div class="title-container">
                <h3 class="text-center">Update Gallery</h3><br />
            </div>
            <table class="gal-table">
                <tr>
                    <td class="gal-lbl auto-style3">Gallery Name&nbsp;</td>
                    <td class="auto-style4"><asp:TextBox ID="txtGalName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style3 gal-lbl" style="width: 140px">Cover Photo&nbsp;</td>
                    <td><asp:FileUpload ID="imgUpload" runat="server" CssClass="auto-style2"/></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblError" runat="server" Text="" CssClass="gal-err-lbl"></asp:Label>
                    </td>
                </tr>
                    
        </table>

           <div class="gal-con-btn-container">
            <asp:Button ID="btnUpGal" class="art-pg-btn gal-btn gal-con-btn" runat="server" 
                Text="Update Gallery" />
            <asp:Button ID="btnCancel" class="art-pg-btn gal-btn gal-con-btn" runat="server" 
                Text="Cancel" OnClick="btnCancel_Click" />
           </div>
            <br />
            <br />
    </div>

    <asp:SqlDataSource ID="SqlGallery" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT * FROM [Gallery]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlCategory" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
</asp:Content>

