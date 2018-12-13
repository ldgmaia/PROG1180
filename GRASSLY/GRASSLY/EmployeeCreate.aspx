<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeCreate.aspx.cs" Inherits="GRASSLY.EmployeeCreate" %>

<!DOCTYPE html>
<%--Coded By Mike Doerr--%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- #Include virtual="/Includes/Header.aspx" -->
</head>
<body>
    <form id="form1" runat="server">

        <!-- #Include virtual="/Includes/NavBar.aspx" -->

        <div class="container">
            <div>
                <h1 class="display-3 text-center">New Employee</h1><br />
            </div>
            <div class="form-group row">
                <asp:Label ID="Label1" runat="server" class="col-sm-3 col-form-label" Text="First Name:"></asp:Label>
                             
                <div class="col-sm-6">
                     <asp:TextBox ID="txtFirst"  class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label ID="Label2" runat="server" class="col-sm-3 col-form-label" Text="Last Name:"></asp:Label>
                             
                <div class="col-sm-6">
                    <asp:TextBox ID="txtLast" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label ID="Label3" runat="server" class="col-sm-3 col-form-label" Text="Position:"></asp:Label>
                <div class="col-sm-6">
                        <asp:DropDownList ID="ddlPosition" class="form-control" runat="server" DataSourceID="dsPosCreate" DataTextField="posName" DataValueField="id">
                        </asp:DropDownList>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-1">
                     <asp:Button ID="btnCreateEmp" class="btn btn-success" runat="server" OnClick="Button1_Click" Text="Create" />
                 </div>   
                <div class="col-sm-1">
                     <asp:Button ID="btnDeleteEmp" class="btn btn-danger" runat="server" OnClick="btnDeleteEmp_Click" Text="Delete" Visible="False" />
                 </div> 
                <div class="col-sm-1 offset-sm-6">
                    <asp:Button ID="btnCancelEmp" class="btn btn-default" runat="server" OnClick="btnCancelEmp_Click" Text="Cancel" />
                 </div>
               
            </div>

            <br />
                        <asp:Label ID="lblEmp" runat="server"></asp:Label>
            <br />
        </div>
        <br />
        <br />
        <asp:ObjectDataSource ID="dsPosCreate" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.positionTableAdapter"></asp:ObjectDataSource>

        <!-- #Include virtual="/Includes/Footer.aspx" -->

    </form>
</body>
</html>
