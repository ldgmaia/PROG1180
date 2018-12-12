<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="GRASSLY.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emma's System - Welcome</title>
    <!-- #Include virtual="/Includes/Header.aspx" -->
</head>
<body>
    <form id="form1" runat="server">

        <!-- #Include virtual="/Includes/NavBar.aspx" -->

        <br />
        <div class="container">
            <h1 class="display-3 text-center">Welcome to the Emma's Store!</h1>
            <!-- (Use for Titles) -->
            <br /><br /><br />
<div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>

  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://s16315.pcdn.co/wp-content/uploads/2013/10/Depositphotos_5925456_M.jpg" alt="customer quote" width="1100" height="500"/>
      <div class="carousel-caption">

      </div>   
    </div>
    <div class="carousel-item">
      <img src="https://www.wambi.org/preview/images/easyblog_articles/35/b2ap3_large_quotes-employee-engagement.png" alt="Managment quote" width="1100" height="500"/>
      <div class="carousel-caption">

      </div>   
    </div>

  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
        </div>
        <br />
        <!-- #Include virtual="/Includes/Footer.aspx" -->

    </form>
</body>
</html>

