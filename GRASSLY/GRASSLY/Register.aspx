<%-- 
    BRIC
    Vasco de Castro Ferraz Neto
    2018-19-11
--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GRASSLY.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emma's System - Registration Page</title>
    <!-- #Include virtual="/Includes/Header.aspx" -->
</head>
<body>

    <div class="container">
        <div class="d-flex justify-content-center h-100">
            <div class="card">
                <div class="card-header">
                    <h3>Register New User</h3>
                </div>
                <div class="card-body">
                    <form id="form1" runat="server">
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <asp:TextBox ID="txtUser" runat="server" class="form-control" placeholder="username" runat="server"></asp:TextBox>
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" class="form-control" placeholder="password"></asp:TextBox>
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" class="form-control" placeholder="Confirm password"></asp:TextBox>

                        </div>



                        <div class="form-group">

                            <asp:Button ID="btnRegister" runat="server" Text="Register" class="btn float-right login_btn" OnClick="btnRegister_Click" />
                        </div>

                        <div class="form-group row ">
                            <asp:Label ID="lblMessage" class="text-warning col-sm-12" runat="server"></asp:Label>
                            <%--                           <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConfirm" ErrorMessage="Password does not match" SetFocusOnError="True"></asp:CompareValidator>
		                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="Username is required" SetFocusOnError="True"></asp:RequiredFieldValidator>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Password is required" SetFocusOnError="True"></asp:RequiredFieldValidator>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirm" ErrorMessage="Must confirm password" SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
                        </div>

                    </form>
                </div>
                <div class="card-footer">
                    <div class="d-flex justify-content-center links text-white">
                        Do you have an account?<a href="Login.aspx">Login</a>
                    </div>

                </div>
            </div>
        </div>

    </div>

</body>
</html>
