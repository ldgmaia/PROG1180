<%-- 
    BRIC
    Vasco de Castro Ferraz Neto
    Mazin Badr
    2018-19-11
--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="GRASSLY.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emma's System - Welcome</title>
    <!-- #Include virtual="/Includes/Header.aspx" -->
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="mx-auto order-0">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#"><span class="font-italic">Emma's</span></a>
                    </li>
                </ul>
            </div>
            <i class="fas fa-sign-in"></i>
            <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="Login.aspx"><i class="fa fa-sign-in-alt"></i>Login</a>
                    </li>
                </ul>
            </div>
        </nav>

        <br />
        <div class="container">
            <h1 class="display-3 text-center">Welcome to the Emma's Store!</h1>
            <!-- (Use for Titles) -->
            <br />
            <br />
            <h3 class="display-3 text-center">Please, login to use the system!</h3>
            <br />
        </div>

        <!-- #Include virtual="/Includes/Footer.aspx" -->

    </form>
</body>
</html>
