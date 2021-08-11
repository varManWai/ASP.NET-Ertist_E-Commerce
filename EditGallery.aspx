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
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" OnRowDataBound="OnRowDataBound" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="galleryID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="197px" Width="1065px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="name" HeaderText="Gallery Name" SortExpression="name" />
                <asp:TemplateField HeaderText="Cover Photo">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Width="200" Height="200" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="date" HeaderText="Created Date" SortExpression="date" />
                <asp:HyperLinkField NavigateUrl="UpdateGallery.aspx" Text="Update" />
                <asp:HyperLinkField NavigateUrl="DeleteGallery.aspx" Text="Delete" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" 
            SelectCommand="SELECT * FROM [Gallery] WHERE ([userID] = @userID)">
            <SelectParameters>
                <asp:SessionParameter Name="userID" SessionField="userid" Type="Int32" DefaultValue="19" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>


</asp:Content>
