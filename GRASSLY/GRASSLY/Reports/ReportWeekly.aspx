<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportWeekly.aspx.cs" Inherits="GRASSLY.ReportWeekly" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Weekly Report</title>
    <!-- #Include virtual="/Includes/Header.aspx" -->
</head>
<body>
    <form id="form1" runat="server">

        <!-- #Include virtual="/Includes/NavBar.aspx" -->

        <div class="container">
            <br />
            
            <label for="iniDate">Start date:</label>
            <asp:TextBox id="iniDate" runat="server" name="iniDate" TextMode="Date" value="2017-01-01" min="2015-01-01" />
            <label for="endDate">End date:</label>
            <asp:TextBox id="endDate" runat="server" name="endDate" TextMode="Date" value="2018-12-31" min="2015-01-02" />
            <asp:Button ID="Button1" runat="server" Text="Filter" />
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td>Top Product Seller<br />
            <asp:GridView ID="gvTopProducts" class="table table-striped table-bordered dt-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="Employee ID" DataSourceID="dsGeneralReportProduct">
                <Columns>
                    <asp:BoundField DataField="Employee ID" HeaderText="Employee ID" InsertVisible="False" ReadOnly="True" SortExpression="Employee ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                    <asp:BoundField DataField="Product Total" HeaderText="Product Total" ReadOnly="True" SortExpression="Product Total" />
                </Columns>
            </asp:GridView>
                    </td>
                    <td>Top Product Buyer<br />
                        <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered dt-responsive" AutoGenerateColumns="False" DataSourceID="dsGeneralReportCustProduct">
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                                <asp:BoundField DataField="Product Total" HeaderText="Product Total" ReadOnly="True" SortExpression="Product Total" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>Top Service Seller<br />
            <asp:GridView ID="dbTopService" runat="server" class="table table-striped table-bordered dt-responsive" AutoGenerateColumns="False" DataKeyNames="Employee ID" DataSourceID="dsGeneralReportService">
                <Columns>
                    <asp:BoundField DataField="Employee ID" HeaderText="Employee ID" InsertVisible="False" ReadOnly="True" SortExpression="Employee ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                    <asp:BoundField DataField="Service Total" HeaderText="Service Total" ReadOnly="True" SortExpression="Service Total" />
                </Columns>
            </asp:GridView>
                    </td>
                    <td>Top Service Buyer<br />
                        <asp:GridView ID="GridView2" class="table table-striped table-bordered dt-responsive" runat="server" AutoGenerateColumns="False" DataSourceID="dsGeneralReportCustService">
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                                <asp:BoundField DataField="Service Total" HeaderText="Service Total" ReadOnly="True" SortExpression="Service Total" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:ObjectDataSource ID="dsGeneralReportProduct" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.ReportGeneralProductTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="iniDate" Name="startDate" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="endDate" Name="endDate" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="dsGeneralReportService" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.ReportGeneralServiceTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="iniDate" Name="startDate" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="endDate" Name="endDate" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <br />
            <br />
            <asp:ObjectDataSource ID="dsGeneralReportCustProduct" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.ReportGeneralCustProductTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="iniDate" Name="startDate" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="endDate" Name="endDate" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="dsGeneralReportCustService" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.ReportGeneralCustServiceTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="iniDate" Name="startDate" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="endDate" Name="endDate" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <br />
            <br />
        </div>
        <!-- #Include virtual="/Includes/Footer.aspx" -->        
    </form>

</body>
</html>
