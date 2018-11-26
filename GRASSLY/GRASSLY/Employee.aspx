<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="GRASSLY.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Employee </title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" />
  <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css" />
   <link rel="stylesheet" type="text/css" href="StickyFooter.css" />  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous" />


<script>
    $(document).ready(function() {
        $('#GridView1').DataTable({});     
    } );
</script>
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
                <a class="nav-link" href="#"> <span class="font-italic">Emma's</span></a>
            </li>

            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                Sales <i class="fas fa-shopping-cart"></i>
              </a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="Customer.aspx">Customer</a>
                <a class="dropdown-item" href="PlaceOrder.aspx">Place Order</a>
                  <a class="dropdown-item" href="#">Repair Request</a>
                <a class="dropdown-item" href="CustomerOrderSearch.aspx">Search Order</a>
              </div>
            </li>
      <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
        Management <i class="fas fa-tasks"></i>
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="Employee.aspx">Staff</a>
          <div class="dropdown-divider"></div>
        <a class="dropdown-item disabled" >Reports <i class="fas fa-book"></i></a>
          <a class="dropdown-item" href="#"> </a>          
                 <a class="dropdown-item" href="#">Yearly (0.02%) Report</a>
                  <a class="dropdown-item" href="#">Weekly Report</a>
                 <a class="dropdown-item" href="#">Warranty Report</a>        
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

<br />

        <div class="container">
            <br />
            <div >
            <h3 class="display-3" style="font-weight: bold" >Employees</h3>
                <p class="display-3" style="font-weight: bold" >&nbsp;</p>
            </div>
            <div>
            <asp:GridView ID="GridView1" class="table table-striped table-bordered" style="width:100%" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="dsEmployees" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="custFirst" HeaderText="First Name" SortExpression="custFirst" />
                    <asp:BoundField DataField="custLast" HeaderText="Last Name" SortExpression="custLast" />
                    <asp:BoundField DataField="custPhone" HeaderText="Phone" SortExpression="custPhone" />
                    <asp:BoundField DataField="custAddress" HeaderText="Address" SortExpression="custAddress" />
                    <asp:BoundField DataField="custCity" HeaderText="City" SortExpression="custCity" />
                    <asp:BoundField DataField="custPostal" HeaderText="Postal" SortExpression="custPostal" />
                    <asp:BoundField DataField="custEmail" HeaderText="Email" SortExpression="custEmail" />
                    <asp:TemplateField HeaderText="Position" SortExpression="posName">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlPosition" runat="server" DataSourceID="dsPosition" DataTextField="posName" DataValueField="id">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("posName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
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
            </div>
            <br />
&nbsp;<asp:Button ID="btnCreateEmp" runat="server" class="btn btn-primary" OnClick="btnCreateEmp_Click" Text="Create Employee" />
            <br />
            <br />
            <asp:SqlDataSource ID="dsEmployees" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [customer] WHERE [id] = @original_id AND (([custFirst] = @original_custFirst) OR ([custFirst] IS NULL AND @original_custFirst IS NULL)) AND (([custLast] = @original_custLast) OR ([custLast] IS NULL AND @original_custLast IS NULL)) AND (([custPhone] = @original_custPhone) OR ([custPhone] IS NULL AND @original_custPhone IS NULL)) AND (([custAddress] = @original_custAddress) OR ([custAddress] IS NULL AND @original_custAddress IS NULL)) AND (([custCity] = @original_custCity) OR ([custCity] IS NULL AND @original_custCity IS NULL)) AND (([custPostal] = @original_custPostal) OR ([custPostal] IS NULL AND @original_custPostal IS NULL)) AND (([custEmail] = @original_custEmail) OR ([custEmail] IS NULL AND @original_custEmail IS NULL))" InsertCommand="INSERT INTO [customer] ([custFirst], [custLast], [custPhone], [custAddress], [custCity], [custPostal], [custEmail]) VALUES (@custFirst, @custLast, @custPhone, @custAddress, @custCity, @custPostal, @custEmail)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT customer.id, customer.custFirst, customer.custLast, customer.custPhone, customer.custAddress, customer.custCity, customer.custPostal, customer.custEmail, position.posName FROM customer INNER JOIN position ON customer.id = position.id ORDER BY customer.custFirst, customer.custLast" UpdateCommand="UPDATE [customer] SET [custFirst] = @custFirst, [custLast] = @custLast, [custPhone] = @custPhone, [custAddress] = @custAddress, [custCity] = @custCity, [custPostal] = @custPostal, [custEmail] = @custEmail WHERE [id] = @original_id AND (([custFirst] = @original_custFirst) OR ([custFirst] IS NULL AND @original_custFirst IS NULL)) AND (([custLast] = @original_custLast) OR ([custLast] IS NULL AND @original_custLast IS NULL)) AND (([custPhone] = @original_custPhone) OR ([custPhone] IS NULL AND @original_custPhone IS NULL)) AND (([custAddress] = @original_custAddress) OR ([custAddress] IS NULL AND @original_custAddress IS NULL)) AND (([custCity] = @original_custCity) OR ([custCity] IS NULL AND @original_custCity IS NULL)) AND (([custPostal] = @original_custPostal) OR ([custPostal] IS NULL AND @original_custPostal IS NULL)) AND (([custEmail] = @original_custEmail) OR ([custEmail] IS NULL AND @original_custEmail IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_custFirst" Type="String" />
                    <asp:Parameter Name="original_custLast" Type="String" />
                    <asp:Parameter Name="original_custPhone" Type="String" />
                    <asp:Parameter Name="original_custAddress" Type="String" />
                    <asp:Parameter Name="original_custCity" Type="String" />
                    <asp:Parameter Name="original_custPostal" Type="String" />
                    <asp:Parameter Name="original_custEmail" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="custFirst" Type="String" />
                    <asp:Parameter Name="custLast" Type="String" />
                    <asp:Parameter Name="custPhone" Type="String" />
                    <asp:Parameter Name="custAddress" Type="String" />
                    <asp:Parameter Name="custCity" Type="String" />
                    <asp:Parameter Name="custPostal" Type="String" />
                    <asp:Parameter Name="custEmail" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="custFirst" Type="String" />
                    <asp:Parameter Name="custLast" Type="String" />
                    <asp:Parameter Name="custPhone" Type="String" />
                    <asp:Parameter Name="custAddress" Type="String" />
                    <asp:Parameter Name="custCity" Type="String" />
                    <asp:Parameter Name="custPostal" Type="String" />
                    <asp:Parameter Name="custEmail" Type="String" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_custFirst" Type="String" />
                    <asp:Parameter Name="original_custLast" Type="String" />
                    <asp:Parameter Name="original_custPhone" Type="String" />
                    <asp:Parameter Name="original_custAddress" Type="String" />
                    <asp:Parameter Name="original_custCity" Type="String" />
                    <asp:Parameter Name="original_custPostal" Type="String" />
                    <asp:Parameter Name="original_custEmail" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
&nbsp;<asp:ObjectDataSource ID="dsEmpCrud" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.EmployeeCRUDTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_empFirst" Type="String" />
                    <asp:Parameter Name="Original_empLast" Type="String" />
                    <asp:Parameter Name="Original_posID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="empFirst" Type="String" />
                    <asp:Parameter Name="empLast" Type="String" />
                    <asp:Parameter Name="posID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="empFirst" Type="String" />
                    <asp:Parameter Name="empLast" Type="String" />
                    <asp:Parameter Name="posID" Type="Int32" />
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_empFirst" Type="String" />
                    <asp:Parameter Name="Original_empLast" Type="String" />
                    <asp:Parameter Name="Original_posID" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="dsPosition" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.positionTableAdapter"></asp:ObjectDataSource>
            <br />
            <br />
            <br />
        </div>


    <footer class="footer page-footer font-small bg-dark">
      <div class="container text-center text-white">
        <span class= "footer-copyright text-center p-3">© 2018 Copyright: BRIC</span>
      </div>
    </footer>
    </form>
</body>
</html>
