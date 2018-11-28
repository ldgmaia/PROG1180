<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderSearch.aspx.cs" Inherits="GRASSLY.OrderSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Search</title>
    <!-- #Include virtual="/Includes/Header.aspx" -->

    <style type="text/css">
        .auto-style1 {
            width: 848px;
        }

        .auto-style2 {
            width: 1079px;
        }

        .auto-style5 {
            width: 848px;
            height: 29px;
        }
        .auto-style6 {
            width: 1017px;
            height: 29px;
        }
        .auto-style7 {
            height: 29px;
        }
        .auto-style8 {
            width: 1017px;
        }
        .auto-style9 {
            width: 848px;
            height: 26px;
        }
        .auto-style10 {
            width: 1017px;
            height: 26px;
        }
        .auto-style11 {
            width: 1079px;
            height: 26px;
        }
        .auto-style12 {
            width: 100%;
        }
        .auto-style13 {
            width: 650px;
        }
        .auto-style14 {
            width: 848px;
            height: 27px;
        }
        .auto-style15 {
            width: 1017px;
            height: 27px;
        }
        .auto-style16 {
            width: 1079px;
            height: 27px;
        }
        .auto-style17 {
            width: 630px;
        }
        .auto-style18 {
            width: 630px;
            height: 29px;
        }
        .auto-style19 {
            width: 630px;
            height: 27px;
        }
        .auto-style20 {
            width: 630px;
            height: 26px;
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

            <table class="w-100">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label5" runat="server" Text="Search by order..." Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Search by customer..." Font-Bold="True"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label6" runat="server" Text="Order Number:"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtSearchOrder" class="form-control" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="OrderNumberValidator" runat="server" ControlToValidate="txtSearchOrder" ErrorMessage="*" ForeColor="Red" MaximumValue="10000000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style7">
                        <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtSearchCustFirst" class="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnSearchOrder" class="btn btn-primary" UseSubmitBehavior="false" runat="server" Text="Search" OnClick="btnSearchOrder_Click" />
                    </td>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtSearchCustLast" class="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btnSearchCustomer" class="btn btn-primary" UseSubmitBehavior="false" runat="server" Text="Search" OnClick="btnSearchCustomer_Click" />
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label7" runat="server" Text="Search by vendor..." Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="Label8" runat="server" Text="Vendor List:"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:DropDownList ID="ddlSearchVendor" class="form-control" runat="server" AppendDataBoundItems="True" DataSourceID="dsEmployeeList" DataTextField="Vendor" DataValueField="id">
                            <asp:ListItem Value="-1">Select a vendor...</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnSearchVendor" class="btn btn-primary" UseSubmitBehavior="false" runat="server" Text="Search" OnClick="btnSearchVendor_Click" />
                    </td>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                </table>
            <br />
            <table class="auto-style12">
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="lblListOrder" runat="server" Text="List Orders By..." Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblOrders" runat="server" Text="Orders..." Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
            <asp:ListBox ID="lstSearchResult" class="form-control col-sm-9" runat="server" Width="600px" AutoPostBack="True" OnSelectedIndexChanged="lstSearchResult_SelectedIndexChanged"></asp:ListBox>
                    </td>
                    <td>
            <asp:ListBox ID="lstOrders" class="form-control col-sm-9" runat="server" Width="505px" AutoPostBack="True" OnSelectedIndexChanged="lstOrders_SelectedIndexChanged"></asp:ListBox>
                    </td>
                </tr>
            </table>
            <br />
                        <asp:Label ID="lblDetails"  runat="server" Text="Order Detail..." Font-Bold="True"></asp:Label>
                    <asp:GridView ID="grvOrderDetail"  class="table table-striped table-bordered" Style="width: 100%" runat="server" AutoGenerateColumns="False" DataSourceID="dsSearchOrder" Width="1199px" DataKeyNames="id">
                        <Columns>
                            <asp:BoundField DataField="CustomerFull" HeaderText="Customer" SortExpression="CustomerFull" ReadOnly="True" />
                            <asp:BoundField DataField="EmployeeFull" HeaderText="Vendor" ReadOnly="True" SortExpression="EmployeeFull" />
                            <asp:CheckBoxField DataField="ordPaid" HeaderText="Paid?" SortExpression="ordPaid" />
                            <asp:BoundField DataField="serordDateIn" HeaderText="Date In" SortExpression="serordDateIn" />
                            <asp:BoundField DataField="serordDateOut" HeaderText="Date Out" SortExpression="serordDateOut" />
                            <asp:BoundField DataField="serordIssue" HeaderText="Issue" SortExpression="serordIssue" />
                            <asp:CheckBoxField DataField="serordWarranty" HeaderText="Warranty?" SortExpression="serordWarranty" />
                            <asp:BoundField DataField="equModel" HeaderText="Eq. Model" SortExpression="equModel" />
                            <asp:BoundField DataField="eqtType" HeaderText="Eq. Type" SortExpression="eqtType" />
                            <asp:BoundField DataField="equSerial" HeaderText="Eq. Serial" SortExpression="equSerial" />
                        </Columns>
            </asp:GridView>
            <asp:GridView ID="grvOrderDetail2" class="table table-striped table-bordered" Style="width: 100%" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="dsSearchOrder2" Width="1198px">
                <Columns>
                    <asp:BoundField DataField="CustomerFull" HeaderText="Customer" ReadOnly="True" SortExpression="CustomerFull" />
                    <asp:BoundField DataField="EmployeeFull" HeaderText="Vendor" ReadOnly="True" SortExpression="EmployeeFull" />
                    <asp:CheckBoxField DataField="ordPaid" HeaderText="Paid?" SortExpression="ordPaid" />
                    <asp:BoundField DataField="serordDateIn" HeaderText="Date In" SortExpression="serordDateIn" />
                    <asp:BoundField DataField="serordDateOut" HeaderText="Date Out" SortExpression="serordDateOut" />
                    <asp:BoundField DataField="serordIssue" HeaderText="Issue" SortExpression="serordIssue" />
                    <asp:CheckBoxField DataField="serordWarranty" HeaderText="Warranty?" SortExpression="serordWarranty" />
                    <asp:BoundField DataField="equModel" HeaderText="Eq. Model" SortExpression="equModel" />
                    <asp:BoundField DataField="eqtType" HeaderText="Eq. Type" SortExpression="eqtType" />
                    <asp:BoundField DataField="equSerial" HeaderText="Eq. Serial" SortExpression="equSerial" />
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
