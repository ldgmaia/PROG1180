<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportWarranty.aspx.cs" Inherits="GRASSLY.ReportWarranty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Warranty Report</title>
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

        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="mx-auto order-0">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#"><span class="font-italic">Emma's</span></a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">Sales <i class="fas fa-shopping-cart"></i>
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="Customer.aspx">Customer</a>
                            <a class="dropdown-item" href="PlaceOrder.aspx">Place Order</a>
                            <a class="dropdown-item" href="#">Repair Request</a>
                            <a class="dropdown-item" href="CustomerOrderSearch.aspx">Search Order</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">Management <i class="fas fa-tasks"></i>
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="Employee.aspx">Staff</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item disabled">Reports <i class="fas fa-book"></i></a>
                            <a class="dropdown-item" href="#"></a>
                            <a class="dropdown-item" href="ReportAnnual.aspx">Yearly (0.02%) Report</a>
                            <a class="dropdown-item" href="ReportWeekly.aspx">Weekly Report</a>
                            <a class="dropdown-item" href="ReportWarranty.aspx">Warranty Report</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Repair <i class="fas fa-wrench"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Inventory <i class="fas fa-box"></i></a>
                    </li>
                </ul>
            </div>

            <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link text-capitalize" href="#">Welcome </asp:Label><%=Request.QueryString["User"] %></a>
                        <%--<asp:Label ID="lblWelcome" runat="server" Text="Welcome "></asp:Label><%=Request.QueryString["User"] %>--%>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Login.aspx">Logout <i class="fas fa-sign-in-alt"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
        <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered dt-responsive" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="serordDateIn" HeaderText="serordDateIn" SortExpression="serordDateIn" />
                <asp:BoundField DataField="serordDateOut" HeaderText="serordDateOut" SortExpression="serordDateOut" />
                <asp:BoundField DataField="serordIssue" HeaderText="serordIssue" SortExpression="serordIssue" />
                <asp:CheckBoxField DataField="serordWarranty" HeaderText="serordWarranty" SortExpression="serordWarranty" />
            </Columns>
        </asp:GridView>
            </div>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [serordDateIn], [serordDateOut], [serordIssue], [serordWarranty] FROM [service_order]"></asp:SqlDataSource>
        <br />
    </form>
</body>
</html>
