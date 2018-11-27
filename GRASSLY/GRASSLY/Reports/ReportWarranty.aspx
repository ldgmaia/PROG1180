<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportWarranty.aspx.cs" Inherits="GRASSLY.ReportWarranty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Warranty Report</title>
    <!-- #Include virtual="/Includes/Header.aspx" -->
</head>
<body>
    <form id="form1" runat="server">

        <div id="navBar" runat="server">
            <!-- #Include virtual="/Includes/NavBar.aspx" -->
        </div>
        <div class="container">
            <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered dt-responsive" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="serordDateIn" HeaderText="serordDateIn" SortExpression="serordDateIn" />
                    <asp:BoundField DataField="serordDateOut" HeaderText="serordDateOut" SortExpression="serordDateOut" />
                    <asp:BoundField DataField="serordIssue" HeaderText="serordIssue" SortExpression="serordIssue" />
                    <asp:CheckBoxField DataField="serordWarranty" HeaderText="serordWarranty" SortExpression="serordWarranty" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [serordDateIn], [serordDateOut], [serordIssue], [serordWarranty] FROM [service_order]"></asp:SqlDataSource>
        </div>
        <!-- #Include virtual="/Includes/Footer.aspx" -->
    </form>
</body>
</html>
