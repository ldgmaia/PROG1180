<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeCreate.aspx.cs" Inherits="GRASSLY.EmployeeCreate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            First Name:
            <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox>
        </div>
        <br />
        Last Name:
        <asp:TextBox ID="txtLast" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:DropDownList ID="ddlPosition" runat="server" DataSourceID="dsPosCreate" DataTextField="posName" DataValueField="id">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btnCreateEmp" runat="server" OnClick="Button1_Click" Text="Create" />
        <asp:ObjectDataSource ID="dsPosCreate" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.positionTableAdapter"></asp:ObjectDataSource>
    </form>
</body>
</html>
