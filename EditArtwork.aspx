<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditArtwork.aspx.cs" Inherits="Ertist.AddArtwork" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

            <!---Display Images-->

            
            <div style="padding:5%;">
                <asp:Button ID="btnAdd" runat="server" Text="Add Artwork" OnClick="btnAdd_Click" />
                <br />
                <br />
                <asp:GridView ID="Images" runat="server" AutoGenerateColumns="False" OnRowDataBound="OnRowDataBound" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" style="width: 100%; text-align:center;" GridLines="Vertical">
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
                        
                        <asp:BoundField DataField="available" HeaderText="Available" />
                        <asp:BoundField DataField="categoryID" HeaderText="Category" />
                        <%--<asp:BoundField DataField="galleryID" HeaderText="Gallery" />--%>
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
            </div>


</asp:Content>
