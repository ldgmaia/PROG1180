<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="GRASSLY.Inventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inventory Report</title>
    <!-- #Include virtual="/Includes/Header.aspx" -->
</head>
<body>
    <form id="form1" runat="server">
        <div id="navBar" runat="server">
            <!-- #Include virtual="/Includes/NavBar.aspx" -->
        </div>
        <div class="container">
            <div>
                <h1 class="display-3 text-center">Inventory</h1><br />
            </div>
            <asp:GridView ID="GridView1" class="table table-striped table-bordered dt-responsive" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="dsInventoryMgt" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                    <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:Button ID="btnAddProduct" runat="server" class="btn btn-primary" Text="Add Product" />
            <asp:ObjectDataSource ID="dsInventoryMgt" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.InventoryMgtTableAdapter"></asp:ObjectDataSource>

        </div>
        <!-- #Include virtual="/Includes/Footer.aspx" -->
    </form>
</body>
</html>
