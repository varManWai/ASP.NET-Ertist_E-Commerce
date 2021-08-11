<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProfileEdit.aspx.cs" Inherits="Ertist.UserProfileEdit" %>
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
            <h3>Edit Profile</h3><br />
            <table class="auto-style5">
                <tr>
                    <td class="auto-style3" style="width: 140px">Profile Picture</td>
                    <td><asp:Image ID="user_picture" class="img-raised rounded-circle img-fluid" runat="server" /></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px"></td>
                    <td><asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style2" /></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="height: 22px; width: 140px">Username</td>
                    <td style="height: 22px"><asp:TextBox ID="txtUsername" ReadOnly="true" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style3" style="height: 22px; width: 140px">Created date</td>
                    <td style="height: 22px"><asp:TextBox ID="txtDate" ReadOnly="true" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="height: 22px; width: 140px">First Name</td>
                    <td style="height: 22px"><asp:TextBox ID="txtFName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="height: 22px; width: 140px">Last Name</td>
                    <td style="height: 22px"><asp:TextBox ID="txtLName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style1" style="width: 140px">Bio</td>
                    <td><asp:TextBox ID="txtBio" runat="server"></asp:TextBox>
                </tr>
                 <tr>
                    <td class="auto-style1" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">Phone No</td>
                    <td> <asp:TextBox ID="txtNo" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td> &nbsp;</td>
                </tr>
                  <tr>
                    <td class="auto-style3" style="width: 140px">Email</td>
                    <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                </tr>
                  <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Gender</td>
                    <td>
                        <asp:DropDownList ID="ddlGender" runat="server">
                            <asp:ListItem>No gender</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
               <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style2"></td>
                </tr>
               
                <tr>
                    <td class="auto-style1" style="width: 140px"><asp:Button ID="btnEdit" class="art-pg-btn" runat="server" Text="Edit" OnClick="btnEdit_Click"/></td>
                    <td class="auto-style4"><asp:Button ID="btnCancel" class="art-pg-btn" runat="server" Text="Cancel" OnClick="btnCancel_Click"  /></td>
                </tr>             
            </table>

    </div>
</asp:Content>
