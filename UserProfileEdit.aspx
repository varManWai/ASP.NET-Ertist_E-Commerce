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
        .auto-style3 {
            width: 145px;
        }
        .auto-style4 {
            height: 22px;
            width: 145px;
        }
        .auto-style5 {
            height: 21px;
            width: 145px;
        }
    </style>

    <div style="font-size:14px; padding:5%;">
            <h3>Edit Profile</h3><br />
            <table class="auto-style5">
                <tr>
                    <td class="auto-style3" style="width: 140px">Profile Picture</td>
                    <td class="auto-style3"><asp:Image ID="user_picture" class="img-raised rounded-circle img-fluid" runat="server" /></td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px"></td>
                    <td class="auto-style3"><asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style2" /></td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="height: 22px; width: 140px">Username</td>
                    <td class="auto-style4"><asp:TextBox ID="txtUsername" ReadOnly="true" runat="server"></asp:TextBox></td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style3" style="height: 22px; width: 140px">Created date</td>
                    <td class="auto-style4"><asp:TextBox ID="txtDate" ReadOnly="true" runat="server"></asp:TextBox></td>
                    <td class="auto-style3">&nbsp;</td>
                 </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="height: 22px; width: 140px">First Name</td>
                    <td class="auto-style4"><asp:TextBox ID="txtFName" runat="server"></asp:TextBox></td>
                    <td class="auto-style3"><asp:RegularExpressionValidator ID="REfname" runat="server" Text="Only characters are accepted, not more than 30 characters." Display="Dynamic" ControlToValidate="txtFName" ValidationExpression="^[a-zA-Z]{1,30}$" ForeColor="Red"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="height: 22px; width: 140px">Last Name</td>
                    <td class="auto-style4"><asp:TextBox ID="txtLName" runat="server"></asp:TextBox></td>
                    <td class="auto-style3"><asp:RegularExpressionValidator ID="RElname" runat="server" Text="Only characters are accepted, not more than 30 characters." Display="Dynamic" ControlToValidate="txtLName" ValidationExpression="^[a-zA-Z]{1,30}$" ForeColor="Red"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style1" style="width: 140px">Bio</td>
                    <td class="auto-style3"><asp:TextBox ID="txtBio" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <td class="auto-style3"><asp:RegularExpressionValidator ID="REBio" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="txtBio" ValidationExpression="^[a-zA-Z0-9.-_+= ]{0,1000}$" Text="Maximum 1000 characters."></asp:RegularExpressionValidator></td>
                </tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">Phone No</td>
                    <td class="auto-style3"> <asp:TextBox ID="txtNo" runat="server"></asp:TextBox></td>
                    <td class="auto-style3"><asp:RegularExpressionValidator ID="REphone" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="txtNo" ValidationExpression="^\(?\d{3}\)?-? *\d{3}-? *-?\d{4}$" Text="Invalid phone numbers."></asp:RegularExpressionValidator></td>
                </tr>
                 <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td class="auto-style3"> &nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                  <tr>
                    <td class="auto-style3" style="width: 140px">Email</td>
                    <td class="auto-style3"><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                    <td class="auto-style3"><asp:RequiredFieldValidator ID="RequiredEmail" runat="server" Display="Dynamic" Text="Please enter your email." ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REemail" runat="server" Text="Email address invalid." ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator></td>
                 </tr>
                  <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Gender</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlGender" runat="server">
                            <asp:ListItem>No gender</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
               <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style5"></td>
                </tr>
               
                <tr>
                    <td class="auto-style1" style="width: 140px"><asp:Button ID="btnEdit" class="art-pg-btn" runat="server" Text="Edit" OnClick="btnEdit_Click"/></td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4"><asp:Button ID="btnCancel" class="art-pg-btn" runat="server" Text="Cancel" OnClick="btnCancel_Click"  /></td>
                </tr>             
            </table>

    </div>
</asp:Content>
