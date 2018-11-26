<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeCreate.aspx.cs" Inherits="GRASSLY.EmployeeCreate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Bootstrap Template</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<script>
    $(document).ready(function() {
        $('#example').DataTable();
    } );
</script>
</head>

<body>
   
    <form id="form1" runat="server">
   
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="#">Logo</a>

  <!-- Links -->
  <ul class="navbar-nav">
    
    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Sales
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="Customer.aspx">Customer</a>
        <a class="dropdown-item" href="#">Place Order</a>
          <a class="dropdown-item" href="#">Repair Request</a>
        <a class="dropdown-item" href="Management.aspx">Search Order</a>
      </div>
    </li>
      <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Management
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="Employee.aspx">Staff</a>
        <a class="dropdown-item" href="#">Report</a>
          <a class="dropdown-item" href="#"> </a>
              
              <ul>
                  <li>Yearly (0.02%)</li>
                  <li>Weekly</li>
                  <li>Warranty</li>
              </ul>
         
      </div>
    </li>
      <li class="nav-item">
      <a class="nav-link" href="#">Repair</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Inventory</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Welcome </asp:Label><%=Request.QueryString["User"] %></a>
      <%--<asp:Label ID="lblWelcome" runat="server" Text="Welcome "></asp:Label><%=Request.QueryString["User"] %>--%>
    </li>
  </ul>
</nav>
<br />
        <div>
            <br />
            <h1 class="display-3 text-center" style="font-weight: bold" >Create an Employee</h1>
            <br />
            First Name:
            <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox>
        </div>
        <br />
        Last Name:
        <asp:TextBox ID="txtLast" runat="server"></asp:TextBox>
        <br />
        <br />
        Position:
        <asp:DropDownList ID="ddlPosition" runat="server" DataSourceID="dsPosCreate" DataTextField="posName" DataValueField="id">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btnCreateEmp" runat="server" OnClick="Button1_Click" Text="Create" />
        <asp:ObjectDataSource ID="dsPosCreate" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.positionTableAdapter"></asp:ObjectDataSource>

        <br />
        <br />
        <br />

<footer class="page-footer font-small bg-dark ">
  <!-- Copyright -->
  <div class="footer-copyright text-center p-3 text-white">© 2018 Copyright: BRIC
  </div>

</footer>
   
    </form>
   
</body>
</html>
