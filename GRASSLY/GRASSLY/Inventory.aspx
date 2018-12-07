<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="GRASSLY.Inventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inventory Report</title>
    <!-- #Include virtual="/Includes/Header.aspx" -->
<script>
    $(document).ready(function () {
        $('#GridView1').DataTable({});
    });
</script>
<style>
    #GridView1 th {
      color: #FFFFFF;
      background-color : #5D7B9D;
    } 
</style>
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
           
            <asp:GridView ID="GridView1" class="table table-striped table-bordered dt-responsive" Style="width: 100%" runat="server" AutoGenerateColumns="False" DataSourceID="dsInventoryMgt">
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
        <br />       
        <!-- #Include virtual="/Includes/Footer.aspx" -->
    </form>
</body>
</html>
