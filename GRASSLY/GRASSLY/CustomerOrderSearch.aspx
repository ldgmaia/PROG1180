<%-- 
    BRIC
    Vasco de Castro Ferraz Neto
    2018-25-11
--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerOrderSearch.aspx.cs" Inherits="GRASSLY.CustomerOrderSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Search</title>
    <!-- #Include virtual="/Includes/Header.aspx" -->

    <style type="text/css">
        .auto-style1 {
            width: 255px;
        }

        .auto-style2 {
            width: 1079px;
        }

        .auto-style3 {
            width: 338px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <!-- #Include virtual="/Includes/NavBar.aspx" -->

        <br />
        <div class="container">
            <h2 class="display-3 text-center" style="font-weight: bold">Search Oders / Services</h2>
            <!-- (Use for Titles) -->
            <br />

            <table class="w-100">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Text="Search by customer..." Font-Bold="True" ForeColor="Blue"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtLast" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnClient" class="btn btn-primary" runat="server" Text="Search Customer" OnClick="btnClient_Click" />
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
            </table>


            <br />
            <br />

            <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Blue" Text="Client Details..."></asp:Label>
            <br />
            <asp:ListBox ID="lstCustomer" runat="server" Width="900px"></asp:ListBox>
            <br />
            <br />
            <table class="w-100">
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btnService" class="btn btn-primary" runat="server" Text="Search Service" />
                    </td>
                    <td>
                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Search Order" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Service/Order List..." Font-Bold="True" ForeColor="Blue"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="ObjectDataSource1">
                <Columns>
                    <asp:BoundField DataField="ordNumber" HeaderText="ordNumber" SortExpression="ordNumber" />
                    <asp:BoundField DataField="ordDate" HeaderText="ordDate" SortExpression="ordDate" />
                    <asp:BoundField DataField="orlQuantity" HeaderText="orlQuantity" SortExpression="orlQuantity" />
                    <asp:BoundField DataField="prodName" HeaderText="prodName" SortExpression="prodName" />
                    <asp:BoundField DataField="invPrice" HeaderText="invPrice" SortExpression="invPrice" />
                    <asp:BoundField DataField="orlPrice" HeaderText="orlPrice" SortExpression="orlPrice" />
                    <asp:BoundField DataField="orlNote" HeaderText="orlNote" SortExpression="orlNote" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="ObjectDataSource2">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="ordNumber" HeaderText="ordNumber" SortExpression="ordNumber" />
                    <asp:BoundField DataField="ordDate" HeaderText="ordDate" SortExpression="ordDate" />
                    <asp:CheckBoxField DataField="ordPaid" HeaderText="ordPaid" SortExpression="ordPaid" />
                    <asp:BoundField DataField="serordDateIn" HeaderText="serordDateIn" SortExpression="serordDateIn" />
                    <asp:BoundField DataField="serordDateOut" HeaderText="serordDateOut" SortExpression="serordDateOut" />
                    <asp:BoundField DataField="serordIssue" HeaderText="serordIssue" SortExpression="serordIssue" />
                    <asp:CheckBoxField DataField="serordWarranty" HeaderText="serordWarranty" SortExpression="serordWarranty" />
                    <asp:BoundField DataField="serName" HeaderText="serName" SortExpression="serName" />
                    <asp:BoundField DataField="serDescription" HeaderText="serDescription" SortExpression="serDescription" />
                    <asp:BoundField DataField="serPrice" HeaderText="serPrice" SortExpression="serPrice" />
                </Columns>
            </asp:GridView>
        </div>

        <!-- #Include virtual="/Includes/Footer.aspx" -->

        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.CustomerOrderTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="lstCustomer" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.CustomerServiceTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="lstCustomer" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </form>
</body>
</html>
