<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportWarranty.aspx.cs" Inherits="GRASSLY.ReportWarranty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Warranty Report</title>
    <!-- #Include virtual="/Includes/Header.aspx" -->
</head>
<body>
    <form id="form1" runat="server">

        <div id="navBar" runat="server">
            <!-- #Include virtual="/Includes/NavBar.aspx" -->
        </div>
        <div class="container">
            
            <label for="iniDate">Start date:</label>
            <asp:TextBox id="iniDate" runat="server" name="iniDate" TextMode="Date" value="2017-01-01" min="2015-01-01" />
            <label for="endDate">End date:</label>
            <asp:TextBox id="endDate" runat="server" name="endDate" TextMode="Date" value="2018-12-31" min="2015-01-02" />
            <asp:Button ID="Button1" runat="server" OnClick="GridView1_SelectedIndexChanged" Text="Button" />
            <br />
            <br />
            <asp:GridView ID="GridView1" class="table table-striped table-bordered dt-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="Receipt" DataSourceID="ObjectDataSource1">
                <Columns>
                    <asp:BoundField DataField="Receipt" HeaderText="Receipt" InsertVisible="False" ReadOnly="True" SortExpression="Receipt" />
                    <asp:BoundField DataField="Date In" HeaderText="Date In" SortExpression="Date In" />
                    <asp:BoundField DataField="Date Out" HeaderText="Date Out" SortExpression="Date Out" />
                    <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                    <asp:BoundField DataField="Service Price" HeaderText="Service Price" SortExpression="Service Price" />
                    <asp:BoundField DataField="Equ Type" HeaderText="Equ Type" SortExpression="Equ Type" />
                    <asp:BoundField DataField="Equ Model" HeaderText="Equ Model" SortExpression="Equ Model" />
                    <asp:BoundField DataField="Order Date" HeaderText="Order Date" ReadOnly="True" SortExpression="Order Date" />
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.ReportWarrantyTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="iniDate" DefaultValue="2017-01-01" Name="iniDate" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="endDate" DefaultValue="2018-12-31" Name="endDate" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <br />
        </div>
        <!-- #Include virtual="/Includes/Footer.aspx" -->
    </form>
</body>
</html>
