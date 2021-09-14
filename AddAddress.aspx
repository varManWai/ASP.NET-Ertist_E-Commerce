<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddAddress.aspx.cs" Inherits="Ertist.AddAddress" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <link href="css/button.css" rel="stylesheet" />
    <style>        
        .auto-style1 {
            width: 140px;
            height: 21px;
        }
        .auto-style2 {
            height: 21px;
        }
    </style>

    <div style="font-size:14px; padding:5%;">
            <h3>Add Address</h3><br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Width="500px" />
            <table class="auto-style5">            
                <tr>

                    <td class="auto-style3" style="height: 22px; width: 140px">Address Name</td>
                    <td style="height: 22px">
                        <asp:TextBox ID="txtAddressName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAddressName" runat="server" ErrorMessage="Address Name is required" Text="*" ControlToValidate="txtAddressName" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revAddressName" runat="server" ErrorMessage="Address Name should not be more than 50 words " Text="*" ForeColor="Red" ControlToValidate="txtAddressName" ValidationExpression="^[0-9a-zA-Z ]{0,50}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" style="width: 140px">Address</td>
                    <td> 
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Address is required" Text="*" ForeColor="Red" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revAddress" runat="server" ErrorMessage="Address should not be more than 50 words" Text="*" ForeColor="Red" ControlToValidate="txtAddress" ValidationExpression="^[0-9a-zA-Z ]{0,50}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style1" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">State</td>

                    <td> <asp:TextBox ID="txtState" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="State is required" ControlToValidate="txtState" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revState" runat="server" ErrorMessage="State should not be more than 50 words " Text="*" ForeColor="Red" ControlToValidate="txtState" ValidationExpression="^[0-9a-zA-Z ]{0,50}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td> &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">City</td>
                    <td><asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="City is required" ControlToValidate="txtCity" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rgvCity" runat="server" ErrorMessage="City should not be more than 50 words" ControlToValidate="txtCity" Text="*" ForeColor="Red" ValidationExpression="^[0-9a-zA-Z ]{0,50}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td> &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">PostCode</td>
                    <td>
                        <asp:TextBox ID="txtPostCode" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPostCode" runat="server" ErrorMessage="PostCode is required" ControlToValidate="txtPostCode" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rgvPostCode" runat="server" ErrorMessage="PostCode must in number and must 5 numbers" ControlToValidate="txtPostCode" Text="*" ForeColor="Red" ValidationExpression="\d{5}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td> &nbsp;</td>
                </tr>                 
                <tr>
                    <td class="auto-style1" style="width: 140px"><asp:Button ID="btnAdd" class="art-pg-btn" runat="server" Text="Add Address" OnClick="btnAdd_Click"/></td>
                    <td class="auto-style4"><asp:Button ID="btnCancel" class="art-pg-btn" runat="server" Text="Cancel" CausesValidation="False" OnClick="btnCancel_Click" /></td>
                </tr>             
            </table>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
