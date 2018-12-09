<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderSearch.aspx.cs" Inherits="GRASSLY.OrderSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Search</title>
    <!-- #Include virtual="/Includes/Header.aspx" -->
    <style>
    #grvOrderDetail th {
      color: #FFFFFF;
      background-color : #5D7B9D;
    } 
    #grvOrderDetail2 th {
      color: #FFFFFF;
      background-color : #5D7B9D;
    } 
    <style type="text/css">
        .auto-style12 {
            width: 100%;
        }
        .auto-style13 {
            width: 721px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        

        <!-- #Include virtual="/Includes/NavBar.aspx" -->

        <div class="container" aria-atomic="False">
            <h1 class="display-3 text-center">Search Orders</h1>
            <!-- (Use for Titles) -->
            <br />


     <div class="form-horizontal">
        <button class="btn" type="button" data-toggle="collapse" id="filterToggle" data-target="#collapseFilter" aria-expanded="true" aria-controls="collapseFilter">
            Search by order...
        </button>
         <button class="btn" type="button" data-toggle="collapse" id="filterToggle2" data-target="#collapseFilter2" aria-expanded="false" aria-controls="collapseFilter2">
            Search by Customer...
         </button>
          <button class="btn" type="button" data-toggle="collapse" id="filterToggle3" data-target="#collapseFilter3" aria-expanded="false" aria-controls="collapseFilter3">
            Search by sales...
        </button>
      </div><br />

 <div class="form-horizontal">
        <div class="<%=Session["OrderSearchClass"] %>" id="collapseFilter">
            <div class="form-group row">
              <asp:Label ID="Label1" Class="col-sm-3 col-form-label" runat="server" Text="Order Number:"></asp:Label>
                <div class="col-sm-5">                
                        <asp:TextBox ID="txtSearchOrder" class="form-control" runat="server"></asp:TextBox>  
                </div>
                <div class="col-sm-5">
                    <asp:Label ID="lblOrderError" runat="server" ForeColor="Red"></asp:Label>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-1">
                    <asp:Button ID="Button1" class="btn btn-primary" UseSubmitBehavior="false" runat="server" Text="Search" OnClick="btnSearchOrder_Click" />             
                 </div>                
            </div>
            </div>
     </div>
            <div class="form-horizontal">
        
        <div class="<%=Session["CustomerSearchClass"] %>" id="collapseFilter2">
            <div class="form-group row">
                <asp:Label ID="Label2" Class="col-sm-3 col-form-label" runat="server" Text="First Name:"></asp:Label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtSearchCustFirst" class="form-control" runat="server"></asp:TextBox>
                </div>                 
            </div>
            <div class="form-group row">
                <asp:Label ID="Label3" Class="col-sm-3 col-form-label" runat="server" Text="Last Name:"></asp:Label>
                <div class="col-sm-5">
                     <asp:TextBox ID="txtSearchCustLast" class="form-control" runat="server"></asp:TextBox>
                </div>                 
            </div>
            <div class="form-group row">
                <div class="col-sm-1">
                    <asp:Button ID="btnSearchCustomer" class="btn btn-primary" UseSubmitBehavior="false" runat="server" Text="Search" OnClick="btnSearchCustomer_Click" />            
                </div> 
            </div>
        </div>

       </div>

            <div class="form-horizontal">
        <div class="<%=Session["VendorSearchClass"] %>" id="collapseFilter3">
            <div class="form-group row">
                <asp:Label ID="Label8" Class="col-sm-3 col-form-label" runat="server" Text="Vendor List:"></asp:Label>
                <div class="col-sm-5">
                        <asp:DropDownList ID="ddlSearchVendor" class="form-control" runat="server" AppendDataBoundItems="True" DataSourceID="dsEmployeeList" DataTextField="Vendor" DataValueField="id">
                            <asp:ListItem Value="-1">Select a sales...</asp:ListItem>
                        </asp:DropDownList>
                </div>                 
            </div>
            <div class="form-group row">
                <div class="col-sm-1">
                   <asp:Button ID="btnSearchVendor" class="btn btn-primary" UseSubmitBehavior="false" runat="server" Text="Search" OnClick="btnSearchVendor_Click" />
                </div> 
            </div>
        </div>

       </div>
            <br />
            <table class="auto-style12">
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="lblListOrder" runat="server" Text="Choose a customer..." ></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblOrders" runat="server" Text="Choose an Order..." ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
            <asp:ListBox ID="lstSearchResult" class="form-control col-sm-11" runat="server" Width="713px" AutoPostBack="True" OnSelectedIndexChanged="lstSearchResult_SelectedIndexChanged"></asp:ListBox>
                    </td>
                    <td>
            <asp:ListBox ID="lstOrders" class="form-control col-sm-9" runat="server" Width="434px" AutoPostBack="True" OnSelectedIndexChanged="lstOrders_SelectedIndexChanged"></asp:ListBox>
                    </td>
                </tr>
            </table>
            <br />
                        <asp:Label ID="lblDetails"  runat="server" Text="Order Detail..." Font-Bold="True"></asp:Label>
                    <asp:GridView ID="grvOrderDetail"  class="table table-striped table-bordered dt-responsive" Style="width: 100%" runat="server" AutoGenerateColumns="False" DataSourceID="dsSearchOrder" Width="1199px" DataKeyNames="id">
                        <Columns>
                            <asp:BoundField DataField="CustomerFull" HeaderText="Customer" SortExpression="CustomerFull" ReadOnly="True" />
                            <asp:BoundField DataField="EmployeeFull" HeaderText="Vendor" ReadOnly="True" SortExpression="EmployeeFull" />
                            <asp:CheckBoxField DataField="ordPaid" HeaderText="Paid?" SortExpression="ordPaid" />
                            <asp:BoundField DataField="serordDateIn" HeaderText="Date In" SortExpression="serordDateIn" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="serordDateOut" HeaderText="Date Out" SortExpression="serordDateOut" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="serordIssue" HeaderText="Issue" SortExpression="serordIssue" />
                            <asp:CheckBoxField DataField="serordWarranty" HeaderText="Warranty?" SortExpression="serordWarranty" />
                            <asp:BoundField DataField="equModel" HeaderText="Eq. Model" SortExpression="equModel" />
                            <asp:BoundField DataField="eqtType" HeaderText="Eq. Type" SortExpression="eqtType" />
                        </Columns>
            </asp:GridView>
            <asp:GridView ID="grvOrderDetail2" class="table table-striped table-bordered" Style="width: 100%" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="dsSearchOrder2" Width="1198px">
                <Columns>
                    <asp:BoundField DataField="CustomerFull" HeaderText="Customer" ReadOnly="True" SortExpression="CustomerFull" />
                    <asp:BoundField DataField="EmployeeFull" HeaderText="Vendor" ReadOnly="True" SortExpression="EmployeeFull" />
                    <asp:CheckBoxField DataField="ordPaid" HeaderText="Paid?" SortExpression="ordPaid" />
                    <asp:BoundField DataField="serordDateIn" HeaderText="Date In" SortExpression="serordDateIn" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="serordDateOut" HeaderText="Date Out" SortExpression="serordDateOut" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="serordIssue" HeaderText="Issue" SortExpression="serordIssue" />
                    <asp:CheckBoxField DataField="serordWarranty" HeaderText="Warranty?" SortExpression="serordWarranty" />
                    <asp:BoundField DataField="equModel" HeaderText="Eq. Model" SortExpression="equModel" />
                    <asp:BoundField DataField="eqtType" HeaderText="Eq. Type" SortExpression="eqtType" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />
            <asp:ObjectDataSource ID="dsSearchOrder" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.OrderSearchTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtSearchOrder" DefaultValue="-1" Name="Param1" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="dsOrderList" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.service_orderTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lstSearchResult" DefaultValue="-1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="dsSearchOrder2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.OrderSearchTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lstOrders" DefaultValue="-1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="dsEmployeeList" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.EmployeeListTableAdapter"></asp:ObjectDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
