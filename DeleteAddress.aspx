<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteAddress.aspx.cs" Inherits="Ertist.DeleteAddress" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <link href="css/button.css" rel="stylesheet" />

     <div style="padding:5%;">
    <h3>Delete Address</h3><br />
            <table class="auto-style5" style="font-size:14px">
                <tr>
                    <asp:TextBox ID="txtAddressID" runat="server" Visible="False"></asp:TextBox>
                    <td class="auto-style3" style="height: 22px; width: 140px">Address Name</td>
                    <td style="height: 22px"><asp:TextBox ID="txtAddressName" runat="server" ReadOnly="true"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style1" style="width: 140px">Address</td>
                    <td><asp:TextBox ID="txtAddress" runat="server" ReadOnly="true" TextMode="MultiLine"></asp:TextBox>
                </tr>
                 <tr>
                    <td class="auto-style1" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">State</td>
                    <td> <asp:TextBox ID="txtState" runat="server" ReadOnly="true" ></asp:TextBox></td>
                </tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td> &nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">City</td>
                    <td><asp:TextBox ID="txtCity" runat="server" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td> &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">PostCode</td>
                    <td><asp:TextBox ID="txtPostCode" runat="server" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td> &nbsp;</td>
                </tr>               
                <tr>
                    <td class="auto-style3" style="width: 140px">

                        <asp:Button ID="btnDelete" class="art-pg-btn" runat="server"  Text="Delete" OnClick="btnDelete_Click" />
                    </td>
                    <td>
                         <asp:Button ID="btnCancel" class="art-pg-btn" runat="server" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="False" />
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1" style="width: 140px"></td>
                    <td class="auto-style4"></td>
                </tr>

            </table>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
