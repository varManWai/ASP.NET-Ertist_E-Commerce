<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditGallery.aspx.cs" Inherits="Ertist.EditGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/GalleryCRUD.css" rel="stylesheet" />
    <!---Display Images-->           
    <div style="padding: 5%;">
        <div>
        <asp:Button ID="btnAddGallery" runat="server" class="art-pg-btn gal-btn" 
                Text="Add Gallery" OnClick="btnAddGallery_Click"/>
            </div>
        <br />
        <br />
        <asp:GridView ID="Images" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
            Style="width: 100%; text-align: center;" GridLines="Vertical" 
            AllowPaging="True" AllowSorting="True" DataKeyNames="galleryID" 
            DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <%--<asp:BoundField DataField="categoryID" HeaderText="Category" />
                        <asp:BoundField DataField="galleryID" HeaderText="Gallery" />--%>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="galleryID" HeaderText="galleryID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="galleryID" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="userID" HeaderText="userID" 
                    SortExpression="userID" />
                <asp:HyperLinkField NavigateUrl="UpdateGallery.aspx" Text="Update" />
                <asp:HyperLinkField NavigateUrl="DeleteGallery.aspx" Text="Delete" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ertistDB %>" 
            SelectCommand="SELECT [galleryID], [name], [date], [cover], [userID] FROM [Gallery]">
        </asp:SqlDataSource>
    </div>


</asp:Content>
