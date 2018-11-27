﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerCreate.aspx.cs" Inherits="GRASSLY.CustomerCreate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- #Include virtual="/Includes/Header.aspx" -->
</head>
<body>
    <form id="form1" runat="server">
        <div id="navBar" runat="server">
            <!-- #Include virtual="/NavBar.aspx" -->
        </div>
        <div class="container">
            <br />
            <div>
                <h3 class="display-3" style="font-weight: bold">New Customer</h3>
                <table class="w-100">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtLast" runat="server" Width="220px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Phone:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Address:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="City:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Postal Code:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPostal" runat="server" Height="34px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="E-mail:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnCreateCust" class="btn btn-primary" runat="server" OnClick="btnCreateCust_Click" Text="Create" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
            <br />
            <br />
        </div>

        <footer class="footer page-footer font-small bg-dark">
            <div class="container text-center text-white">
                <span class="footer-copyright text-center p-3">© 2018 Copyright: BRIC</span>
            </div>
        </footer>
    </form>
</body>
</html>
