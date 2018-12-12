<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepairDetails.aspx.cs" Inherits="GRASSLY.RepairDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Repair Receipt</title>
        <!-- #Include virtual="/Includes/Header.aspx" -->
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 159px;
        }
        .auto-style22 {
            width: 300px;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- #Include virtual="/Includes/NavBar.aspx" -->
        <div class="container">
            <div>
                <h1 class="display-3 text-center">Repair receipt</h1><br />

                <table class="auto-style1">
                    <tr>
                        <td><label>123 Grand Falcon Ave</label></td>
                    </tr>
                    <tr>
                        <td><label>Fonthill, ON W3E 4R5</label></td>
                    </tr>
                    <tr>
                        <td><label>Phone: (206) 555-1163</label></td>
                    </tr>
                    <tr>
                        <td><label>Fax: (206) 555-1164</label></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
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
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Repair Description"></asp:Label>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>

                        <td colspan="3">
                            
                        </td>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style22">
                            <asp:Label ID="Label7" runat="server" Text="Change oil and sharpen blade."></asp:Label>
                        </td>
                        <td colspan="3">
                            
                        </td>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            
                        </td>
                        <td colspan="3">
                           
                        </td>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Total:"></asp:Label>
                        </td>
                        <td colspan="3">$ 12.00</td>
                        <td colspan="2">
                            <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Payment Method:"></asp:Label>
&nbsp;<asp:Label ID="Label17" runat="server" Text="Visa"></asp:Label>
                        </td>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><p>Thank you for your business!</p></td>
                        <td colspan="3">&nbsp;</td>
                        <td colspan="2">&nbsp;</td>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
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
