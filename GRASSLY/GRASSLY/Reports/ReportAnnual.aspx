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
            <div>
                <h1 class="display-3 text-center">Yearly Report</h1><br />
            </div>
            <asp:TextBox ID="TextBox1" class="form-control col-sm-2" runat="server">2018</asp:TextBox><br />
            &nbsp;<asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Filter" />
            <br />
            <br />
            Products<br />
            <asp:GridView ID="GridView2" class="table table-striped table-bordered dt-responsive" runat="server" AutoGenerateColumns="False" DataSourceID="odsReportYearlyProd">
                <Columns>
                    <asp:BoundField DataField="Year" HeaderText="Year" ReadOnly="True" SortExpression="Year" />
                    <asp:BoundField DataField="Grand Total" HeaderText="Grand Total" ReadOnly="True" SortExpression="Grand Total" DataFormatString="{0:C}" />
                    <asp:BoundField DataField="Yearly Appreciation Products" HeaderText="Yearly Appreciation Products" ReadOnly="True" SortExpression="Yearly Appreciation Products" DataFormatString="{0:C}" />
                </Columns>
            </asp:GridView>
            <br />
            Services<asp:GridView ID="GridView3" class="table table-striped table-bordered dt-responsive" runat="server" AutoGenerateColumns="False" DataSourceID="odsReportYearlyServ">
                <Columns>
                    <asp:BoundField DataField="Year" HeaderText="Year" ReadOnly="True" SortExpression="Year" />
                    <asp:BoundField DataField="Grand Total" HeaderText="Grand Total" ReadOnly="True" SortExpression="Grand Total" DataFormatString="{0:C}" />
                    <asp:BoundField DataField="Yearly Appreciation Services" HeaderText="Yearly Appreciation Services" ReadOnly="True" SortExpression="Yearly Appreciation Services" DataFormatString="{0:C}" />
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
        </div>
        <!-- #Include virtual="/Includes/Footer.aspx" -->
    </form>
</body>
</html>
