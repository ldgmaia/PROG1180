﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="GRASSLY.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee </title>
    <!-- #Include virtual="/Includes/Header.aspx" -->
</head>
<body>
    <form id="form1" runat="server">

        <!-- #Include virtual="/Includes/NavBar.aspx" -->

        <br />

        <div class="container">
            <br />
            <div>
                <h3 class="display-3" style="font-weight: bold">Employees</h3>
                <p class="display-3" style="font-weight: bold">&nbsp;</p>
            </div>
            <div>
                <asp:GridView ID="GridView1" class="table table-striped table-bordered" Style="width: 100%" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="dsEmployees" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="custFirst" HeaderText="First Name" SortExpression="custFirst" />
                        <asp:BoundField DataField="custLast" HeaderText="Last Name" SortExpression="custLast" />
                        <asp:BoundField DataField="custPhone" HeaderText="Phone" SortExpression="custPhone" />
                        <asp:BoundField DataField="custAddress" HeaderText="Address" SortExpression="custAddress" />
                        <asp:BoundField DataField="custCity" HeaderText="City" SortExpression="custCity" />
                        <asp:BoundField DataField="custPostal" HeaderText="Postal" SortExpression="custPostal" />
                        <asp:BoundField DataField="custEmail" HeaderText="Email" SortExpression="custEmail" />
                        <asp:TemplateField HeaderText="Position" SortExpression="posName">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlPosition" runat="server" DataSourceID="dsPosition" DataTextField="posName" DataValueField="id">
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("posName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </div>
            <br />
            &nbsp;<asp:Button ID="btnCreateEmp" runat="server" class="btn btn-primary" OnClick="btnCreateEmp_Click" Text="Create Employee" />
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
            &nbsp;<asp:ObjectDataSource ID="dsEmpCrud" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.EmployeeCRUDTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_empFirst" Type="String" />
                    <asp:Parameter Name="Original_empLast" Type="String" />
                    <asp:Parameter Name="Original_posID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="empFirst" Type="String" />
                    <asp:Parameter Name="empLast" Type="String" />
                    <asp:Parameter Name="posID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="empFirst" Type="String" />
                    <asp:Parameter Name="empLast" Type="String" />
                    <asp:Parameter Name="posID" Type="Int32" />
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_empFirst" Type="String" />
                    <asp:Parameter Name="Original_empLast" Type="String" />
                    <asp:Parameter Name="Original_posID" Type="Int32" />
                </UpdateParameters>
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
