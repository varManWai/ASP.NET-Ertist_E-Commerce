<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditArtwork.aspx.cs" Inherits="Ertist.AddArtwork" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/button.css" rel="stylesheet" />
    <!---Display Images-->
    <div style="padding: 5%;">
        <div>
            <asp:Button ID="btnAdd" runat="server" class="art-pg-btn" Text="Add Artwork" OnClick="btnAdd_Click" />
        </div>
        <br />
        <br />
        <asp:GridView ID="Images" runat="server" AutoGenerateColumns="False" OnRowDataBound="OnRowDataBound" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" Style="width: 100%; text-align: center;" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="artworkID" HeaderText="Artwork ID" />
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Width="200" Height="200" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="price" HeaderText="Price" />
                <asp:BoundField DataField="stock" HeaderText="Stock" />
                <asp:BoundField DataField="date" HeaderText="Date" />
                <asp:BoundField DataField="available" HeaderText="Available" />
                <asp:BoundField DataField="Expr1" HeaderText="Category" />
                <asp:BoundField DataField="Expr2" HeaderText="Gallery" />
                <asp:HyperLinkField Text="Update" DataNavigateUrlFields="artworkID" DataNavigateUrlFormatString="UpdateArtwork.aspx?artworkID={0}" />
                <asp:HyperLinkField Text="Detele" DataNavigateUrlFields="artworkID" DataNavigateUrlFormatString="DeleteArtwork.aspx?artworkID={0}" />
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

        <asp:SqlDataSource ID="SqlEditArtwork" runat="server" ConnectionString='<%$ ConnectionStrings:ertistDB %>' SelectCommand="SELECT Artwork.artworkID, Artwork.name, Artwork.price, Artwork.description, Artwork.picture, Artwork.date, Artwork.stock, Artwork.available, Artwork.categoryID, Artwork.galleryID, Category.name AS Expr1, Gallery.name AS Expr2 FROM Artwork INNER JOIN Category ON Artwork.categoryID = Category.categoryID INNER JOIN Gallery ON Artwork.galleryID = Gallery.galleryID INNER JOIN [User] ON Gallery.userID = [User].UserID WHERE [User].UserID = @userID">
            <SelectParameters>
                <asp:SessionParameter SessionField="UserID" Name="userID" DefaultValue="3"></asp:SessionParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>


</asp:Content>
