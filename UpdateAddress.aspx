<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateAddress.aspx.cs" Inherits="Ertist.UpdateAddress" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <link href="css/button.css" rel="stylesheet" />
    <div style="font-size:14px; padding:5%; margin-left:32%;">
    <h3>Update Address</h3><br />
        
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Width="400px" />
            <table class="auto-style5">    
                
                <tr>                   
                    <td class="auto-style3" style="height: 22px; width: 140px">Address Name</td>
                    <td style="width: 36px">&nbsp;</td>
                    <td style="height: 22px">
                        <asp:TextBox ID="txtAddressID" runat="server" Visible="False"></asp:TextBox>
                        <asp:TextBox ID="txtAddressName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAddressName" runat="server" ErrorMessage="Address Name is required" Text="*" ControlToValidate="txtAddressName" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revAddressName" runat="server" ErrorMessage="Address Name should not be more than 50 characters " Text="*" ForeColor="Red" ControlToValidate="txtAddressName" ValidationExpression="^[0-9a-zA-Z ]{0,50}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td style="width: 36px">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" style="width: 140px">Address</td>
                    <td style="width: 36px">&nbsp;</td>
                    <td> 
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Address is required" Text="*" ForeColor="Red" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revAddress" runat="server" ErrorMessage="Address should not be more than 50 characters" Text="*" ForeColor="Red" ControlToValidate="txtAddress" ValidationExpression="^[0-9a-zA-Z ]{0,50}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style1" style="width: 140px">&nbsp;</td>
                    <td style="width: 36px">&nbsp;</tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">State</td>
                     <td style="width: 36px">&nbsp;</td>

                    <td> <asp:TextBox ID="txtState" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="State is required" ControlToValidate="txtState" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revState" runat="server" ErrorMessage="State should not be more than 50 characters " Text="*" ForeColor="Red" ControlToValidate="txtState" ValidationExpression="^[a-zA-Z ]{0,50}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td style="width: 36px"> &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">City</td>
                    <td style="width: 36px">&nbsp;</td>
                    <td><asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="City is required" ControlToValidate="txtCity" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rgvCity" runat="server" ErrorMessage="City must in characters and should not be more than 50 characters" ControlToValidate="txtCity" Text="*" ForeColor="Red" ValidationExpression="^[a-zA-Z ]{0,50}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td style="width: 36px"> &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">PostCode</td>
                    <td style="width: 36px">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtPostCode" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPostCode" runat="server" ErrorMessage="PostCode is required" ControlToValidate="txtPostCode" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rgvPostCode" runat="server" ErrorMessage="PostCode must in number and must 5 numbers" ControlToValidate="txtPostCode" Text="*" ForeColor="Red" ValidationExpression="\d{5}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td style="width: 36px"> &nbsp;</td>
                </tr>                 
                <tr>
                    <td class="auto-style1" style="width: 140px"><asp:Button ID="btnUpdate" class="art-pg-btn" runat="server" Text="Update Address" OnClick="btnUpdate_Click"/></td>
                    <td style="width: 36px">&nbsp;</td>
                    <td class="auto-style4"><asp:Button ID="btnCancel" class="art-pg-btn" runat="server" Text="Cancel" CausesValidation="False" OnClick="btnCancel_Click" /></td>
                </tr>             
            </table>
        </div>

</asp:Content>
