<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportAnnual.aspx.cs" Inherits="GRASSLY.ReportAnnual" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Annual Report</title>
    <!-- #Include virtual="/Includes/Header.aspx" -->
</head>
<body>
    <form id="form1" runat="server">

        <div id="navBar" runat="server">
            <!-- #Include virtual="/Includes/NavBar.aspx" -->
        </div>
        <div class="container">
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:GridView ID="GridView2" class="table table-striped table-bordered dt-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="Receipt" DataSourceID="odsReportYearlyProd">
                <Columns>
                    <asp:BoundField DataField="Receipt" HeaderText="Receipt" InsertVisible="False" ReadOnly="True" SortExpression="Receipt" />
                    <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                    <asp:BoundField DataField="Product Total" HeaderText="Product Total" ReadOnly="True" SortExpression="Product Total" />
                    <asp:BoundField DataField="Yearly Appreciation" HeaderText="Yearly Appreciation" ReadOnly="True" SortExpression="Yearly Appreciation" />
                </Columns>
            </asp:GridView>
            <asp:GridView ID="GridView3" class="table table-striped table-bordered dt-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="Receipt" DataSourceID="odsReportYearlyServ">
                <Columns>
                    <asp:BoundField DataField="Receipt" HeaderText="Receipt" InsertVisible="False" ReadOnly="True" SortExpression="Receipt" />
                    <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                    <asp:BoundField DataField="Sevice Total" HeaderText="Sevice Total" ReadOnly="True" SortExpression="Sevice Total" />
                    <asp:BoundField DataField="Yearly Appreciation" HeaderText="Yearly Appreciation" ReadOnly="True" SortExpression="Yearly Appreciation" />
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="odsReportYearlyProd" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.ReportAnnualProductTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="year" PropertyName="Text" Type="Decimal" DefaultValue="2018" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="odsReportYearlyServ" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.ReportAnnualServiceTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="year" PropertyName="Text" Type="Decimal" DefaultValue="2018" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered dt-responsive" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="orlPrice" HeaderText="orlPrice" SortExpression="orlPrice" />
                    <asp:BoundField DataField="orlQuantity" HeaderText="orlQuantity" SortExpression="orlQuantity" />
                    <asp:CheckBoxField DataField="orlOrderReq" HeaderText="orlOrderReq" SortExpression="orlOrderReq" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [orlPrice], [orlQuantity], [orlOrderReq] FROM [order_line]"></asp:SqlDataSource>
            <br />
            <br />
        </div>
        <!-- #Include virtual="/Includes/Footer.aspx" -->
    </form>
</body>
</html>
