<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="GRASSLY.Employee" %>

<!DOCTYPE html>
<%--Coded By Mike Doerr--%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee </title>
    <!-- #Include virtual="/Includes/Header.aspx" -->
<script>
    $(document).ready(function () {
        $('#GridView2').DataTable({});
    });
</script>
<style>
    #GridView2 th {
      color: #FFFFFF;
      background-color : #5D7B9D;
    } 
</style>
</head>
<body>
    <form id="form1" runat="server">

        <!-- #Include virtual="/Includes/NavBar.aspx" -->

        <div class="container">
            <div>
                <h1 class="display-3 text-center">Employees</h1><br />
            </div>
            <div>
                <asp:GridView ID="GridView2" class="table table-striped table-bordered dt-responsive" Style="width: 100%" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="dsEmpCrud" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="empFirst" HeaderText="First Name" SortExpression="empFirst" />
                        <asp:BoundField DataField="empLast" HeaderText="Last Name" SortExpression="empLast" />
                        <asp:BoundField DataField="posName" HeaderText="Position" SortExpression="posName" />
                    </Columns>
                </asp:GridView>
            </div>
            <br />
            &nbsp;<asp:Button ID="btnCreateEmp" runat="server" class="btn btn-primary" OnClick="btnCreateEmp_Click" Text="Create Employee" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
            &nbsp;<asp:ObjectDataSource ID="dsEmpCrud" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.EmployeeDisplayTableAdapter">
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="dsPosition" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.positionTableAdapter"></asp:ObjectDataSource>
            <br />
            <br />
            <br />
        </div>

        <!-- #Include virtual="/Includes/Footer.aspx" -->

    </form>
</body>
</html>
