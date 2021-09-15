<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditGallery.aspx.cs" Inherits="Ertist.EditGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../css/GalleryCRUD.css" rel="stylesheet" />
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
        <asp:GridView ID="GridView1" runat="server" OnRowDataBound="OnRowDataBound" 
            AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="galleryID" DataSourceID="SqlDataSource1" 
            ForeColor="Black" GridLines="Vertical" Height="197px" Width="1225px" 
            Font-Size="Medium" BackColor="White" BorderColor="#DEDFDE" 
            BorderStyle="None" BorderWidth="1px" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Gallery Name" SortExpression="name" />
                <asp:TemplateField HeaderText="Cover Photo">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Width="100" Height="100" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="date" HeaderText="Created Date" SortExpression="date" />
                <asp:HyperLinkField NavigateUrl="UpdateGallery.aspx" Text="Update" DataNavigateUrlFields="galleryID" DataNavigateUrlFormatString="UpdateGallery.aspx?galleryID={0}"/>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" ForeColor="White"/>
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" 
            SelectCommand="SELECT * FROM [Gallery] WHERE ([userID] = @userID)">
            <SelectParameters>
                <asp:SessionParameter Name="userID" SessionField="userid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>


</asp:Content>
