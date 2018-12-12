<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalesDetail.aspx.cs" Inherits="GRASSLY.SalesDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer</title>

    <!-- #Include virtual="/Includes/Header.aspx" -->
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 49px;
        }
        .auto-style4 {
            width: 38px;
        }
        .auto-style5 {
            width: 92px;
        }
        .auto-style7 {
            width: 149px;
        }
        .auto-style8 {
            width: 240px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- #Include virtual="/Includes/NavBar.aspx" -->
        <div class="container">
            <div>
                <h1 class="display-3 text-center">Sale receipt</h1><br />

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8"><label>123 Grand Falcon Ave</label></td>
                    </tr>
                    <tr>
                        <td class="auto-style8"><label>Fonthill, ON W3E 4R5</label></td>
                    </tr>
                    <tr>
                        <td class="auto-style8"><label>Phone: (206) 555-1163</label></td>
                    </tr>
                    <tr>
                        <td class="auto-style8"><label>Fax: (206) 555-1164</label></td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Receipt Number:"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:Label ID="Label2" runat="server" Text="35"></asp:Label>
                        </td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Customer:"></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <asp:Label ID="Label4" runat="server" Text="Bob Underhill"></asp:Label>
                        </td>
                        <td colspan="2">
                            <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="Date:"></asp:Label>
&nbsp;
                            <asp:Label ID="Label16" runat="server" Text="12-12-2018"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Items"></asp:Label>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Quantity:"></asp:Label>
                        </td>
                        <td colspan="3">
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Description:"></asp:Label>
                        </td>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label7" runat="server" Text="01"></asp:Label>
                        </td>
                        <td colspan="3">
                            <asp:Label ID="Label11" runat="server" Text="Fuel Stabilizer"></asp:Label>
                        </td>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label8" runat="server" Text="02"></asp:Label>
                        </td>
                        <td colspan="3">
                            <asp:Label ID="Label12" runat="server" Text="Stroke Oil"></asp:Label>
                        </td>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Total:"></asp:Label>
                        </td>
                        <td colspan="3">$ 50.00</td>
                        <td colspan="2">
                            <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Payment Method:"></asp:Label>
&nbsp;<asp:Label ID="Label17" runat="server" Text="Visa"></asp:Label>
                        </td>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8"><p>Thank you for your&nbsp; business!</p></td>
                        <td colspan="3">&nbsp;</td>
                        <td colspan="2">&nbsp;</td>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Button ID="Button1"  class="btn btn-primary" runat="server" Text="Print receipt..." />
                        </td>
                        <td colspan="3">&nbsp;</td>
                        <td colspan="2">&nbsp;</td>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                </table>

                </div>
            
        </div>
    <!-- #Include virtual="/Includes/Footer.aspx" -->
    </form>
    </body>
</html>

