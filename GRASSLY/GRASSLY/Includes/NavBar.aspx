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

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">Sales <i class="fas fa-shopping-cart"></i>
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="/Customer.aspx">Customer</a>
                    <a class="dropdown-item" href="/PlaceSales.aspx">Place Sales</a>
                    <a class="dropdown-item" href="#">Repair Request</a>
                    <a class="dropdown-item" href="/OrderSearch.aspx">Search Order</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">Management <i class="fas fa-tasks"></i>
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="/Employee.aspx">Staff</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item disabled">Reports <i class="fas fa-book"></i></a>
                    <a class="dropdown-item" href="#"></a>
                    <a class="dropdown-item" href="/Reports/ReportAnnual.aspx">Yearly (0.02%) Report</a>
                    <a class="dropdown-item" href="/Reports/ReportWeekly.aspx">Weekly Report</a>
                    <a class="dropdown-item" href="/Reports/ReportWarranty.aspx">Warranty Report</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Repair <i class="fas fa-wrench"></i></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Inventory.aspx">Inventory <i class="fas fa-box"></i></a>
            </li>
        </ul>
    </div>

    <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
                <a class="nav-link text-capitalize" href="#">Welcome </asp:Label><%=Request.QueryString["User"] %></a>
                <%--<asp:Label ID="lblWelcome" runat="server" Text="Welcome "></asp:Label><%=Request.QueryString["User"] %>--%>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/Login.aspx">Logout <i class="fas fa-sign-in-alt"></i></a>
            </li>
        </ul>
    </div>
</nav>
