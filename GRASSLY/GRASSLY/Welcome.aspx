<%-- 
    BRIC
    Vasco de Castro Ferraz Neto
    2018-19-11
--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="GRASSLY.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emma's System - Welcome</title>
    <meta charset="utf-8" />
   <meta name="viewport" content="width=device-width, initial-scale=1" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
   <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" />
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
   <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
     <form id="form1" runat="server">
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="#">Logo</a>

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item text-right">
      <a class="nav-link" href="Login.aspx">Login</a>
    </li>
  </ul>
</nav>
<br />
<div class="container">
  <h2 class="display-3 text-center" style="font-weight: bold" >Welcome to the Emma's Store!</h2> <!-- (Use for Titles) -->
   <br />
    <br />
    <p>Please, login to use the system!</p>
<br />
</div>
<footer class="page-footer font-small bg-dark ">
  <!-- Copyright -->
  <div class="footer-copyright text-center p-3 text-white">© 2018 Copyright: BRIC
  </div>
</footer>
    </form>
</body>
</html>
