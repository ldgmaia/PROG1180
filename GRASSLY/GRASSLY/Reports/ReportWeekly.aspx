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

            <div>
                <h1 class="display-3 text-center">General Report</h1>
                <br />
            </div>
            <div class="form-group row">
                <label for="iniDate" class="col-sm-2 col-form-label">Start date:</label>

                <div class="col-sm-4">
                    <asp:TextBox ID="iniDate" class="form-control" runat="server" name="iniDate" TextMode="Date" value="2017-01-01" min="2015-01-01" />
                </div>
                <label for="endDate" class="col-sm-2 col-form-label">End date:</label>


                <div class="col-sm-4">
                    <asp:TextBox ID="endDate" class="form-control" runat="server" name="endDate" TextMode="Date" value="2018-12-31" min="2015-01-02" />
                </div>
            </div>



            <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Filter" OnClick="Button1_Click" />
            <br />
            <br />
            <div class="form-group row">
                <asp:Label class="col-sm-8 col-form-label" ID="lblProdSeller" runat="server" Text="Top Product Seller" Visible="False"></asp:Label>
                <asp:Label class="col-sm-4 col-form-label" ID="lblProdBuyer" runat="server" Text="Top Product Buyer" Visible="False"></asp:Label>
            </div>
            <div class="form-group row">
                <div class="col-sm-8">
                    <asp:GridView ID="gvTopProducts" class="table table-striped table-bordered dt-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="Employee ID" DataSourceID="dsGeneralReportProduct">
                        <Columns>
                            <asp:BoundField DataField="Employee ID" HeaderText="Employee ID" InsertVisible="False" ReadOnly="True" SortExpression="Employee ID" />
                            <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                            <asp:BoundField DataField="Product Total" HeaderText="Product Total" ReadOnly="True" SortExpression="Product Total" DataFormatString="{0:C}" />
                        </Columns>
                    </asp:GridView>
                </div>
                <div class="col-sm-4">
                    <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered dt-responsive" AutoGenerateColumns="False" DataSourceID="dsGeneralReportCustProduct">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                            <asp:BoundField DataField="Product Total" HeaderText="Product Total" ReadOnly="True" SortExpression="Product Total" DataFormatString="{0:C}" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label ID="lblServSeller" class="col-sm-8 col-form-label" runat="server" Text="Top Service Seller" Visible="False"></asp:Label>
                <asp:Label ID="lblServBuyer" class="col-sm-4 col-form-label" runat="server" Text="Top Service Buyer" Visible="False"></asp:Label>
            </div>
            <div class="form-group row">
                <div class="col-sm-8">
                    <asp:GridView ID="dbTopService" runat="server" class="table table-striped table-bordered dt-responsive" AutoGenerateColumns="False" DataKeyNames="Employee ID" DataSourceID="dsGeneralReportService">
                        <Columns>
                            <asp:BoundField DataField="Employee ID" HeaderText="Employee ID" InsertVisible="False" ReadOnly="True" SortExpression="Employee ID" />
                            <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                            <asp:BoundField DataField="Service Total" HeaderText="Service Total" ReadOnly="True" SortExpression="Service Total" DataFormatString="{0:C}" />
                        </Columns>
                    </asp:GridView>
                </div>
                <div class="col-sm-4">
                    <asp:GridView ID="GridView2" class="table table-striped table-bordered dt-responsive" runat="server" AutoGenerateColumns="False" DataSourceID="dsGeneralReportCustService">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                            <asp:BoundField DataField="Service Total" HeaderText="Service Total" ReadOnly="True" SortExpression="Service Total" DataFormatString="{0:C}" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <table style="width: 100%;">
                <tr>
                    <td>

                        <br />

                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
            </table>
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
