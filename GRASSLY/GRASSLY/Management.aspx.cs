﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GRASSLYLIB;

namespace GRASSLY
{
    public partial class Management : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCustCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CustomerCreate.aspx");
        }

        protected void btnCreateEmp_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/EmployeeCreate.aspx");
        }
    }
}