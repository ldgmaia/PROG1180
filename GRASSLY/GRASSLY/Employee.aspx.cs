using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GRASSLY
{
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/LogIn.aspx");
            GridView2.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void btnCreateEmp_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/EmployeeCreate.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("~/EmployeeCreate.aspx?selectedId=" + GridView2.SelectedValue);
        }
    }
}