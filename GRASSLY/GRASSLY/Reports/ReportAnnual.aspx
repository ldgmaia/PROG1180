<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportAnnual.aspx.cs" Inherits="GRASSLY.ReportAnnual" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Annual Report</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="StickyFooter.css">
</head>
<body>
    <form id="form1" runat="server">

        <div id="navBar" runat="server">
            <!-- #Include virtual="/NavBar.aspx" -->
        </div>
        <div class="container">
            <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered dt-responsive" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="orlPrice" HeaderText="orlPrice" SortExpression="orlPrice" />
                    <asp:BoundField DataField="orlQuantity" HeaderText="orlQuantity" SortExpression="orlQuantity" />
                    <asp:CheckBoxField DataField="orlOrderReq" HeaderText="orlOrderReq" SortExpression="orlOrderReq" />
                </Columns>
            </asp:GridView>
        </div>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [orlPrice], [orlQuantity], [orlOrderReq] FROM [order_line]"></asp:SqlDataSource>
        <br />
    </form>
</body>
</html>
