<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GRASSLY.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Bootstrap Template</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
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
    <li class="nav-item">
      <a class="nav-link" href="#">Link 1</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Link 2</a>
    </li>

    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Dropdown link
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#">Link 1</a>
        <a class="dropdown-item" href="#">Link 2</a>
        <a class="dropdown-item" href="#">Link 3</a>
      </div>
    </li>
  </ul>
</nav>
<br>
  
<div class="container">
  <h2 class="display-3 text-center" >Sales</h2> <!-- (Use for Titles) -->
<br />
  <div class="form-group row">
    <label for="email" class="col-sm-3 col-form-label">Email address:</label>   
    <div class="col-sm-9">
       <input type="email" class="form-control" id="email">
    </div>
  </div>

  <div class="form-group row">
    <label for="inputPassword" class="col-sm-3 col-form-label">Password</label>
    <div class="col-sm-9">
      <input type="password" class="form-control" id="inputPassword" placeholder="Password">
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
        <input type="checkbox" class="form-check-input" id="check1" name="option1" value="something" checked>Option 1
      </label>
    </div>
    <div class="form-check-inline">
      <label class="form-check-label" for="check2">
        <input type="checkbox" class="form-check-input" id="check2" name="option2" value="something">Option 2
      </label>
    </div>
    <div class="form-check-inline">
      <label class="form-check-label">
        <input type="checkbox" class="form-check-input" disabled>Option 3
      </label>
    </div>
</div>
<div class="form-group row">
     <label   class="col-sm-3 col-form-label">Select a Radio:</label>
    <div class="form-check-inline">
      <label class="form-check-label">
        <input type="radio" class="form-check-input" name="optradio">Option 1
      </label>
    </div>
    <div class="form-check-inline">
      <label class="form-check-label">
        <input type="radio" class="form-check-input" name="optradio">Option 2
      </label>
    </div>
    <div class="form-check-inline disabled">
      <label class="form-check-label">
        <input type="radio" class="form-check-input" name="optradio" disabled>Option 3
      </label>
    </div>
</div>

<div class="form-group row">
  <label for="example-number-input" class="col-sm-3 col-form-label">Number</label>
  <div class="col-sm-9">
    <input class="form-control" type="number" value="42" id="example-number-input">
  </div>
</div>

<div class="form-group row">
  <label for="example-datetime-local-input" class="col-sm-3 col-form-label">Date and time</label>
  <div class="col-sm-9">
    <input class="form-control" type="datetime-local" value="2018-08-19T13:45:00" id="example-datetime-local-input">
  </div>
</div>

<div class="form-group row">
  <label for="example-date-input" class="col-sm-3 col-form-label">Date</label>
  <div class="col-sm-9">
    <input class="form-control" type="date" value="2018-08-19" id="example-date-input">
  </div>
</div>

<div class="form-group row">
  <label for="example-month-input" class="col-sm-3 col-form-label">Month</label>
  <div class="col-sm-9">
    <input class="form-control" type="month" value="2018-08" id="example-month-input">
  </div>
</div>

<div class="form-group row">
  <label for="example-week-input" class="col-sm-3 col-form-label">Week</label>
  <div class="col-sm-9">
    <input class="form-control" type="week" value="2018-W33" id="example-week-input">
  </div>
</div>

<div class="form-group row">
  <label for="example-time-input" class="col-sm-3 col-form-label">Time</label>
  <div class="col-sm-9">
    <input class="form-control" type="time" value="13:45:00" id="example-time-input">
  </div>
</div>

     <button type="submit" class="btn btn-primary">Submit</button>
<br /><br />
<table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Garrett Winters</td>
                <td>Accountant</td>
                <td>Tokyo</td>
                <td>63</td>
                <td>2011/07/25</td>
                <td>$170,750</td>
            </tr>
            <tr>
                <td>Ashton Cox</td>
                <td>Junior Technical Author</td>
                <td>San Francisco</td>
                <td>66</td>
                <td>2009/01/12</td>
                <td>$86,000</td>
            </tr>
            <tr>
                <td>Cedric Kelly</td>
                <td>Senior Javascript Developer</td>
                <td>Edinburgh</td>
                <td>22</td>
                <td>2012/03/29</td>
                <td>$433,060</td>
            </tr>
            <tr>
                <td>Airi Satou</td>
                <td>Accountant</td>
                <td>Tokyo</td>
                <td>33</td>
                <td>2008/11/28</td>
                <td>$162,700</td>
            </tr>
            <tr>
                <td>Brielle Williamson</td>
                <td>Integration Specialist</td>
                <td>New York</td>
                <td>61</td>
                <td>2012/12/02</td>
                <td>$372,000</td>
            </tr>
            <tr>
                <td>Herrod Chandler</td>
                <td>Sales Assistant</td>
                <td>San Francisco</td>
                <td>59</td>
                <td>2012/08/06</td>
                <td>$137,500</td>
            </tr>
            <tr>
                <td>Rhona Davidson</td>
                <td>Integration Specialist</td>
                <td>Tokyo</td>
                <td>55</td>
                <td>2010/10/14</td>
                <td>$327,900</td>
            </tr>
            <tr>
                <td>Brielle Williamson</td>
                <td>Integration Specialist</td>
                <td>New York</td>
                <td>61</td>
                <td>2012/12/02</td>
                <td>$372,000</td>
            </tr>
            <tr>
                <td>Herrod Chandler</td>
                <td>Sales Assistant</td>
                <td>San Francisco</td>
                <td>59</td>
                <td>2012/08/06</td>
                <td>$137,500</td>
            </tr>
            <tr>
                <td>Rhona Davidson</td>
                <td>Integration Specialist</td>
                <td>Tokyo</td>
                <td>55</td>
                <td>2010/10/14</td>
                <td>$327,900</td>
            </tr>
        </tbody>

    </table>

    <br />
        <asp:GridView ID="GridView1" class="table table-striped table-bordered" style="width:100%" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="ObjectDataSource1">
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
