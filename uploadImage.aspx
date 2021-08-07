<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uploadImage.aspx.cs" Inherits="Ertist.uploadImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <asp:TextBox ID="artid" runat="server"></asp:TextBox>
            art id<br />
            <br />
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            name<br />
            <br />
            <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            price<br />
            <br />
            <%--<asp:Calendar ID="cldDate" ReadOnly="True" placeHolder="DateTime.Now.ToString()"  runat="server"></asp:Calendar>
            <br />
            <asp:Label ID="lblDate" runat="server"></asp:Label>--%>
            <br />
            <br />
            <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="txtStock" ReadOnly="True" placeHolder="1" runat="server"></asp:TextBox>
            Stock<br />
            <br />
            <asp:DropDownList ID="ddlAvailable" runat="server">
                <asp:ListItem>Available</asp:ListItem>
                <asp:ListItem>Not Available</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="custID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="custID" HeaderText="custID" ReadOnly="True" SortExpression="custID" />
                    <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                    <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                    <asp:BoundField DataField="birthDate" HeaderText="birthDate" SortExpression="birthDate" />
                    <asp:BoundField DataField="phoneNo" HeaderText="phoneNo" SortExpression="phoneNo" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                </Columns>
            </asp:GridView>--%><%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>--%>
            <br />
            
            <!---Display Images-->
            <br />
            <div style="width: 900px;">
            <asp:GridView ID="Images" runat="server" AutoGenerateColumns="false" OnRowDataBound="OnRowDataBound">
                <Columns>
                    <asp:BoundField DataField="artID" HeaderText="artID" />
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" width="200" height="300"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
                <br />
                </div>
        </div>
    </form>
</body>
</html>
