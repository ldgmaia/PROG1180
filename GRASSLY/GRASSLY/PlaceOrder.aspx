<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="GRASSLY.PlaceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Place Orders</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

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
        <a class="dropdown-item" href="PlaceOrder.aspx">Place Order</a>
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
            <br />
            <div>
            <h3 class="display-3" style="font-weight: bold" >Place Order</h3>
                <p class="display-3" style="font-weight: bold" >&nbsp;</p>
                <p <%--class="display-3"--%> style="font-weight: bold">Customer Name:
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="dsCustName" DataTextField="custFirst" DataValueField="id" Width="207px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </p>
                <p <%--class="display-3"--%> style="font-weight: bold" >Customer Details:
                    <asp:DetailsView ID="DetailsView1" class="table table-striped table-bordered" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="dsCustDetails" Height="50px" Width="329px">
                    <Fields>
                        <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="custFirst" HeaderText="First Name" SortExpression="custFirst" />
                        <asp:BoundField DataField="custLast" HeaderText="Last Name" SortExpression="custLast" />
                        <asp:BoundField DataField="custPhone" HeaderText="Phone" SortExpression="custPhone" />
                        <asp:BoundField DataField="custAddress" HeaderText="Address" SortExpression="custAddress" />
                        <asp:BoundField DataField="custCity" HeaderText="City" SortExpression="custCity" />
                        <asp:BoundField DataField="custPostal" HeaderText="Postal" SortExpression="custPostal" />
                        <asp:BoundField DataField="custEmail" HeaderText="Email" SortExpression="custEmail" />
                        <asp:CommandField ShowEditButton="True" />
                    </Fields>
                    </asp:DetailsView>
                </p>
                <p <%--class="display-3"--%> style="font-weight: bold" >Product Name: <asp:DropDownList ID="DropDownList2" runat="server" Width="225px" AutoPostBack="True" DataSourceID="dsProduct" DataTextField="prodName" DataValueField="id" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                </p>
                <p <%--class="display-3"--%> style="font-weight: bold" >Product Details:
                    <asp:FormView ID="FormView1" class="table table-striped table-bordered" runat="server" Width="426px" DataKeyNames="id" DataSourceID="dsProduct">
                        <EditItemTemplate>
                            id:
                            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            prodName:
                            <asp:TextBox ID="prodNameTextBox" runat="server" Text='<%# Bind("prodName") %>' />
                            <br />
                            prodDescription:
                            <asp:TextBox ID="prodDescriptionTextBox" runat="server" Text='<%# Bind("prodDescription") %>' />
                            <br />
                            prodBrand:
                            <asp:TextBox ID="prodBrandTextBox" runat="server" Text='<%# Bind("prodBrand") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            prodName:
                            <asp:TextBox ID="prodNameTextBox" runat="server" Text='<%# Bind("prodName") %>' />
                            <br />
                            prodDescription:
                            <asp:TextBox ID="prodDescriptionTextBox" runat="server" Text='<%# Bind("prodDescription") %>' />
                            <br />
                            prodBrand:
                            <asp:TextBox ID="prodBrandTextBox" runat="server" Text='<%# Bind("prodBrand") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            id:
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            prodName:
                            <asp:Label ID="prodNameLabel" runat="server" Text='<%# Bind("prodName") %>' />
                            <br />
                            prodDescription:
                            <asp:Label ID="prodDescriptionLabel" runat="server" Text='<%# Bind("prodDescription") %>' />
                            <br />
                            prodBrand:
                            <asp:Label ID="prodBrandLabel" runat="server" Text='<%# Bind("prodBrand") %>' />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>
                </p>
                <p <%--class="display-3"--%> style="font-weight: bold" >
                    <asp:Button ID="btnPlaceOrder" runat="server" Text="Place Order" Width="97px" />
                </p>
                <p class="display-3" style="font-weight: normal" >&nbsp;</p>
                <p class="display-3" style="font-weight: bold" >
                    <asp:ObjectDataSource ID="dsCustName" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.customerTableAdapter"></asp:ObjectDataSource>
                </p>
                <p class="display-3" style="font-weight: bold" >
                    <asp:ObjectDataSource ID="dsCustDetails" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.CustomerCRUDTableAdapter" UpdateMethod="Update">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_id" Type="Int32" />
                            <asp:Parameter Name="Original_custFirst" Type="String" />
                            <asp:Parameter Name="Original_custLast" Type="String" />
                            <asp:Parameter Name="Original_custPhone" Type="String" />
                            <asp:Parameter Name="Original_custAddress" Type="String" />
                            <asp:Parameter Name="Original_custCity" Type="String" />
                            <asp:Parameter Name="Original_custPostal" Type="String" />
                            <asp:Parameter Name="Original_custEmail" Type="String" />
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
                            <asp:Parameter Name="Original_id" Type="Int32" />
                            <asp:Parameter Name="Original_custFirst" Type="String" />
                            <asp:Parameter Name="Original_custLast" Type="String" />
                            <asp:Parameter Name="Original_custPhone" Type="String" />
                            <asp:Parameter Name="Original_custAddress" Type="String" />
                            <asp:Parameter Name="Original_custCity" Type="String" />
                            <asp:Parameter Name="Original_custPostal" Type="String" />
                            <asp:Parameter Name="Original_custEmail" Type="String" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                </p>
                <p class="display-3" style="font-weight: bold" >
                    <asp:SqlDataSource ID="dsProduct" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id], [prodName], [prodDescription], [prodBrand] FROM [product]"></asp:SqlDataSource>
                </p>
            </div>




 <footer class="page-footer font-small bg-dark ">
  <!-- Copyright -->
  <div class="footer-copyright text-center p-3 text-white">© 2018 Copyright: BRIC
  </div>
</footer>
    </form>

</body>
</html>
