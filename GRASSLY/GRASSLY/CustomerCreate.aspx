<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerCreate.aspx.cs" Inherits="GRASSLY.CustomerCreate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            FirstName<asp:TextBox ID="txtFirst" runat="server"></asp:TextBox>
        </div>
        LastName<asp:TextBox ID="txtLast" runat="server"></asp:TextBox>
        <br />
        Phone<asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        <br />
        Address<asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        <br />
        City<asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        <br />
        postal<asp:TextBox ID="txtPostal" runat="server"></asp:TextBox>
        <br />
        Email<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="btnCreateCust" runat="server" OnClick="btnCreateCust_Click" Text="Button" />
        </p>
    </form>
</body>
</html>
