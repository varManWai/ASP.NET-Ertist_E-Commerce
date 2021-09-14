<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EmailControl.ascx.cs" Inherits="Ertist.EmailControl" %>

<style>
    /* Add a background color and some padding around the form */
    .container {
      border-radius: 5px;
      background-color: #f2f2f2;
      padding: 50px;
    }

    .container:after {
      content: "";
      display: table;
      clear: both;
    }

    .auto-style1 {
        width: 41px;
    }
    .auto-style2 {
        width: 48%;
    }
</style>

<div class="container">

        <table class="auto-style2">
        <tr>
            <td colspan="2">Name :
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="txtName" runat="server" Width="843px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:RequiredFieldValidator ID="RequiredName" runat="server" ControlToValidate="txtName" Display="Dynamic" ForeColor="#FF3300">Must enter name.</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">Email : </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="txtFrom" runat="server" Width="844px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="txtFrom" Display="Dynamic" ForeColor="#FF3300">Must enter email.</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:RegularExpressionValidator ID="REEmail" runat="server" ControlToValidate="txtFrom" Display="Dynamic" ForeColor="#FF3300" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$">Email invalid.</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">Subject :</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="txtSubjext" runat="server" Width="842px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:RequiredFieldValidator ID="RequiredSubject" runat="server" ControlToValidate="txtSubjext" Display="Dynamic" ForeColor="Red">Must enter subject.</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">Body :</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Height="169px" Width="846px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:RequiredFieldValidator ID="RequiredBody" runat="server" ControlToValidate="txtBody" Display="Dynamic" ForeColor="#FF3300">Must enter your message.</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="BtnSend" runat="server" Text="Send" OnClick="BtnSend_Click" />
            </td>
            <td>
                <asp:Label ID="lblResult" runat="server" ForeColor="Blue"></asp:Label>
            </td>
        </tr>
    </table>
</div>
