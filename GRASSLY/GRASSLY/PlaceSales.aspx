<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceSales.aspx.cs" Inherits="GRASSLY.PlaceSales" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer</title>

    <!-- #Include virtual="/Includes/Header.aspx" -->
</head>
<body>
    <form id="form1" runat="server">
        <!-- #Include virtual="/Includes/NavBar.aspx" -->
        <div class="container">
            <div>
                <h1 class="display-3 text-center">Place a sale</h1><br />
                <h4>Search Customer...</h4><br />
            <div class="form-group row">
              <asp:Label ID="Label2" Class="col-sm-3 col-form-label" runat="server" Text="Customer Name:"></asp:Label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtCustomer" class="form-control" runat="server"></asp:TextBox> 
                </div>                 
            </div>

            <div class="form-group row">
                <div class="col-sm-8">
                    <asp:ListBox ID="lstCustomer" class="form-control" rows="1" runat="server"></asp:ListBox>
                </div>                 
            </div>
            <div class="form-group row">
                <div class="col-sm-1">
                    <asp:Button ID="btnCustSearch" runat="server" class="btn btn-primary" Text="Search" OnClick="btnCustSearch_Click" />
                 </div>                
            </div>

            <div class="form-group row">
                <asp:Label ID="Label3" runat="server" class="col-sm-3 col-form-label" Text="Sales Employee:"></asp:Label>                     
                <div class="col-sm-5">
                            <asp:DropDownList ID="ddlSalesEmp" class="form-control" runat="server" AppendDataBoundItems="True" DataSourceID="dsEmpList" DataTextField="Vendor" DataValueField="id">
                                <asp:ListItem Value="-1">Select Employee</asp:ListItem>
                            </asp:DropDownList>
                </div>
            </div>

            <div class="form-group row">
                <asp:Label ID="Label4" runat="server"  class="col-sm-3 col-form-label" Text="Payment Method:"></asp:Label>                  
                <div class="col-sm-5">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="dsPaymentType" DataTextField="payType" DataValueField="id">
                        <asp:ListItem Value="0">Choose Payment Method</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <h4>Search inventory...</h4><br />

            <div class="form-group row">
                <asp:Label ID="Label6" runat="server" class="col-sm-3 col-form-label" Text="Product name:"></asp:Label>                  
                <div class="col-sm-5">
                    <asp:TextBox ID="txtProdName" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-1">
                     <asp:Button ID="btnSearchProd" runat="server" class="btn btn-primary" OnClick="btnSearchProd_Click" Text="Search Product" />
                 </div>                
            </div>
            <div class="form-group row">                  
                <div class="col-sm-8">
                    <asp:ListBox ID="lstProduct" class="form-control" runat="server" Rows="3"></asp:ListBox>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label ID="Label8" runat="server" class="col-sm-3 col-form-label" Text="Quantity:"></asp:Label>                
                <div class="col-sm-5">
                    <asp:TextBox ID="txtQt" type="number" class="form-control" min="1" max="100" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-1">
                    <asp:Button ID="btnAddCart" runat="server" class="btn btn-primary" Text="Add to cart" OnClick="btnAddCart_Click" />
                 </div>                
            </div>
            <div class="form-group row">
                <asp:Label ID="Label7" runat="server" class="col-sm-3 col-form-label"  Text="Cart details:"></asp:Label>              
                <div class="col-sm-5">
                    <asp:ListBox ID="lstCart" class="form-control" runat="server" Rows="3"></asp:ListBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-1">
                     <asp:Button ID="btnSale" runat="server" class="btn btn-primary" Text="Place a Sale" />
                 </div>                
            </div>

                <br />
                <asp:ObjectDataSource ID="dsEmpList" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.EmployeeListTableAdapter"></asp:ObjectDataSource>
                <asp:ObjectDataSource ID="dsPaymentType" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.paymentTableAdapter"></asp:ObjectDataSource>
                <br />
            </div>
            
        </div>
    </form>
    <!-- #Include virtual="/Includes/Footer.aspx" -->
</body>
</html>
