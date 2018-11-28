<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceSales.aspx.cs" Inherits="GRASSLY.PlaceSales" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer</title>
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 197px;
    }
        .auto-style3 {
            width: 219px;
        }
        .auto-style4 {
            width: 196px;
        }
        .auto-style8 {
            width: 605px;
        }
        .auto-style10 {
            width: 223px;
        }
        .auto-style11 {
            width: 253px;
        }
        .auto-style12 {
            width: 110px;
        }
    </style>
    <!-- #Include virtual="/Includes/Header.aspx" -->
</head>
<body>
    <form id="form1" runat="server">
        <!-- #Include virtual="/Includes/NavBar.aspx" -->
        <div class="container">
            <div>
                <h1 class="display-3 text-center">Place a sale</h1>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text="Search Customer..." Font-Bold="True"></asp:Label>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                        <td rowspan="4">
                            <asp:ListBox ID="lstCustomer" runat="server" Width="659px"></asp:ListBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label2" runat="server" Text="Customer Name:"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtCustomer" runat="server" Width="196px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="btnCustSearch" runat="server" Text="Search" OnClick="btnCustSearch_Click" />
                        </td>
                        <td class="auto-style3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                </table>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label3" runat="server" Text="Sales Employee:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlSalesEmp" runat="server" Width="203px" AppendDataBoundItems="True" DataSourceID="dsEmpList" DataTextField="Vendor" DataValueField="id">
                                <asp:ListItem Value="-1">Select Employee</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label4" runat="server" Text="Date:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtDate" type="date" runat="server" Width="194px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Search inventory..."></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label6" runat="server" Text="Product name:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtProdName" runat="server" Width="189px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            <asp:Button ID="btnSearchProd" runat="server" OnClick="btnSearchProd_Click" Text="Search Product" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:ListBox ID="lstProduct" runat="server" Width="1091px"></asp:ListBox>
                        </td>
                    </tr>
                </table>
                <br />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label8" runat="server" Text="Quantity:"></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <asp:TextBox ID="txtQt" type="number" min="1" max="100" runat="server" Width="188px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnAddCart" runat="server" Text="Add to cart" OnClick="btnAddCart_Click" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Cart details"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Total"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:ListBox ID="lstCart" runat="server" Width="599px"></asp:ListBox>
                        </td>
                        <td>
                            <asp:Label ID="lblTotal" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Button ID="btnSale" runat="server" Text="Place a Sale" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:ObjectDataSource ID="dsEmpList" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.EmployeeListTableAdapter"></asp:ObjectDataSource>
                <br />
            </div>
            
        </div>
    </form>
    <!-- #Include virtual="/Includes/Footer.aspx" -->
</body>
</html>
