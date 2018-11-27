<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportWeekly.aspx.cs" Inherits="GRASSLY.ReportWeekly" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Weekly Report</title>
    <!-- #Include virtual="/Includes/Header.aspx" -->
</head>
<body>
    <form id="form1" runat="server">

        <!-- #Include virtual="/Includes/NavBar.aspx" -->

        <div class="container">
            <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered dt-responsive" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="orlPrice" HeaderText="orlPrice" SortExpression="orlPrice" />
                    <asp:BoundField DataField="orlQuantity" HeaderText="orlQuantity" SortExpression="orlQuantity" />
                    <asp:CheckBoxField DataField="orlOrderReq" HeaderText="orlOrderReq" SortExpression="orlOrderReq" />
                    <asp:BoundField DataField="orlNote" HeaderText="orlNote" SortExpression="orlNote" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [orlPrice], [orlQuantity], [orlOrderReq], [orlNote] FROM [order_line]"></asp:SqlDataSource>        
        </div>
        <!-- #Include virtual="/Includes/Footer.aspx" -->        
    </form>

</body>
</html>
