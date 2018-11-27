<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeCreate.aspx.cs" Inherits="GRASSLY.EmployeeCreate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- #Include virtual="/Includes/Header.aspx" -->
</head>
<body>
    <form id="form1" runat="server">

        <!-- #Include virtual="/Includes/NavBar.aspx" -->

        <div class="container">
            <br />
            <div>
                <h3 class="display-3" style="font-weight: bold">New Employee</h3>
                <p class="display-3" style="font-weight: bold">&nbsp;</p>
            </div>
            <table class="w-100">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLast" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Position:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlPosition" runat="server" DataSourceID="dsPosCreate" DataTextField="posName" DataValueField="id">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCreateEmp" class="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Create" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
        </div>
        <br />
        <br />
        <asp:ObjectDataSource ID="dsPosCreate" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.positionTableAdapter"></asp:ObjectDataSource>

        <!-- #Include virtual="/Includes/Footer.aspx" -->

    </form>
</body>
</html>
