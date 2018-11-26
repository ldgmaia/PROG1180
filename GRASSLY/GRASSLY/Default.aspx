<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GRASSLY.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Bootstrap Template</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" />
  <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css" />
   <link rel="stylesheet" type="text/css" href="StickyFooter.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
   

<script>
    $(document).ready(function() {
        $('#GridView1').DataTable({});
       
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
  
<div class="container">
  <h2 class="display-3 text-center" style="font-weight: bold" >Sales</h2> <!-- (Use for Titles) -->
<br />
  <div class="form-group row">
    <label for="email" class="col-sm-3 col-form-label">Email address:</label>   
    <div class="col-sm-9">
       <input type="email" class="form-control" id="email" />
    </div>
  </div>

  <div class="form-group row">
    <label for="inputPassword" class="col-sm-3 col-form-label">Password</label>
    <div class="col-sm-9">
      <input type="password" class="form-control" id="inputPassword" placeholder="Password" />
    </div>
  </div>

  <div class="form-group row">
    <label for="exampleFormControlTextarea1" class="col-sm-3 col-form-label">Example textarea</label>
     <div class="col-sm-9">
    <textarea class="form-control col-sm-9" id="exampleFormControlTextarea1" rows="3"></textarea>
    </div>
  </div>

  <div class="form-group row">
      <label for="sel1"  class="col-sm-3 col-form-label">Select list (select one):</label>
      <div class="col-sm-9">
          <select class="form-control" id="sel1" name="sellist1">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
          </select>
      </div>
  </div>

  <div class="form-group row">
       <label   class="col-sm-3 col-form-label">Select Checkbox:</label>
    <div class="form-check-inline">
      <label class="form-check-label" for="check1">
        <input type="checkbox" class="form-check-input" id="check1" name="option1" value="something" checked />Option 1
      </label>
    </div>
    <div class="form-check-inline">
      <label class="form-check-label" for="check2">
        <input type="checkbox" class="form-check-input" id="check2" name="option2" value="something" />Option 2
      </label>
    </div>
    <div class="form-check-inline">
      <label class="form-check-label">
        <input type="checkbox" class="form-check-input" disabled />Option 3
      </label>
    </div>
</div>
<div class="form-group row">
     <label   class="col-sm-3 col-form-label">Select a Radio:</label>
    <div class="form-check-inline">
      <label class="form-check-label">
        <input type="radio" class="form-check-input" name="optradio" />Option 1
      </label>
    </div>
    <div class="form-check-inline">
      <label class="form-check-label">
        <input type="radio" class="form-check-input" name="optradio" />Option 2
      </label>
    </div>
    <div class="form-check-inline disabled">
      <label class="form-check-label">
        <input type="radio" class="form-check-input" name="optradio" disabled />Option 3
      </label>
    </div>
</div>

<div class="form-group row">
  <label for="example-number-input" class="col-sm-3 col-form-label">Number</label>
  <div class="col-sm-9">
    <input class="form-control" type="number" value="42" id="example-number-input" />
  </div>
</div>

<div class="form-group row">
  <label for="example-datetime-local-input" class="col-sm-3 col-form-label">Date and time</label>
  <div class="col-sm-9">
    <input class="form-control" type="datetime-local" value="2018-08-19T13:45:00" id="example-datetime-local-input" />
  </div>
</div>

<div class="form-group row">
  <label for="example-date-input" class="col-sm-3 col-form-label">Date</label>
  <div class="col-sm-9">
    <input class="form-control" type="date" value="2018-08-19" id="example-date-input" />
  </div>
</div>

<div class="form-group row">
  <label for="example-month-input" class="col-sm-3 col-form-label">Month</label>
  <div class="col-sm-9">
    <input class="form-control" type="month" value="2018-08" id="example-month-input" />
  </div>
</div>

<div class="form-group row">
  <label for="example-week-input" class="col-sm-3 col-form-label">Week</label>
  <div class="col-sm-9">
    <input class="form-control" type="week" value="2018-W33" id="example-week-input" />
  </div>
</div>

<div class="form-group row">
  <label for="example-time-input" class="col-sm-3 col-form-label">Time</label>
  <div class="col-sm-9">
    <input class="form-control" type="time" value="13:45:00" id="example-time-input" />
  </div>
</div>

     <button type="submit" class="btn btn-primary">Submit</button>
<br /><br />


    <br />
        <asp:GridView ID="GridView1" class="table table-striped table-bordered dt-responsive" style="width:100%" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="ObjectDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="custFirst" HeaderText="custFirst" SortExpression="custFirst" />
                <asp:BoundField DataField="custLast" HeaderText="custLast" SortExpression="custLast" />
                <asp:BoundField DataField="custPhone" HeaderText="custPhone" SortExpression="custPhone" />
                <asp:BoundField DataField="custAddress" HeaderText="custAddress" SortExpression="custAddress" />
                <asp:BoundField DataField="custCity" HeaderText="custCity" SortExpression="custCity" />
                <asp:BoundField DataField="custPostal" HeaderText="custPostal" SortExpression="custPostal" />
                <asp:BoundField DataField="custEmail" HeaderText="custEmail" SortExpression="custEmail" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.customerTableAdapter"></asp:ObjectDataSource>
    <br /><br />
</div>
        

<footer class="page-footer font-small bg-dark ">
  <!-- Copyright -->
  <div class="footer-copyright text-center p-3 text-white">© 2018 Copyright: BRIC
  </div>

</footer>
   
    </form>
   
</body>
</html>
