using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GRASSLY
{
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/LogIn.aspx");
        }

        protected void btnCustCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CustomerCreate.aspx");
        }
    }
}