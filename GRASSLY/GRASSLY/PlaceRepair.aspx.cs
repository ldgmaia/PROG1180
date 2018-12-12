using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GRASSLY
{
    public partial class PlaceRepair : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCustSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RepairDetails.aspx?User=testuser");
        }
    }
}