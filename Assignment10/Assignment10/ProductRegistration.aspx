<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductRegistration.aspx.cs" Inherits="Assignment10.ProductRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 372px;
        }
        .auto-style3 {
            width: 372px;
            height: 33px;
        }
        .auto-style4 {
            height: 33px;
        }
        .auto-style5 {
            width: 747px;
        }
        .auto-style6 {
            height: 33px;
            width: 747px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <img src="D:\SQL Server\day10\Assignment10\Assignment10\Image\P1img.jpeg" alt="Product Image" />
        <td colspan="3"><h2 style="text-align:center">Product</h2></td>
        
                    
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Product Name</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" ErrorMessage="Name required" ForeColor="#6600FF"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Category</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DdlCategory" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DdlCategory" ErrorMessage="Category is required" ForeColor="#6600FF"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Price</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtPrice" ErrorMessage="Price is Required" ForeColor="#6600FF"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TxtPrice" ErrorMessage="Price must ne integer" ForeColor="#6600FF" MaximumValue="1000000" MinimumValue="0"></asp:RangeValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Description</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TxtDes" runat="server" Height="129px" Width="278px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtDes" ErrorMessage="Description is required" ForeColor="#6600FF"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Release Date</td>
                    <td class="auto-style5">
                        <asp:Calendar ID="CalDate" runat="server" BackColor="White" BorderColor="#FF33CC" BorderWidth="1px" SelectedDate="08/24/2023 18:46:59" VisibleDate="2023-08-15"></asp:Calendar>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style6">
                        <asp:Button ID="BtnRegister" runat="server" OnClick="BtnRegister_Click" Text="Register" />
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="LblInfo" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
