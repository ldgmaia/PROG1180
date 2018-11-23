using GRASSLYLIB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GRASSLY
{
    public partial class CustomerCreate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
        {
            Response.Redirect("~/Management.aspx");
        }

        protected void btnCreateCust_Click(object sender, EventArgs e)
        {
            try
            {
                GRASSLYLIB.EmmasDataSet dsCust = new EmmasDataSet();
                DataRow r = dsCust.CustomerCRUD.NewRow();
                r["custFirst"] = this.txtFirst.Text; 
                r["custPhone"] = this.txtPhone.Text;
                r["custAddress"] = this.txtAddress.Text;
                r["custCity"] = this.txtCity.Text;
                r["custPostal"] = this.txtPostal.Text;
                r["custEmail"] = this.txtEmail.Text;
                r["custLast"] = this.txtLast.Text;
                dsCust.CustomerCRUD.Rows.Add(r);
                GRASSLYLIB.EmmasDataSetTableAdapters.CustomerCRUDTableAdapter daCust = new GRASSLYLIB.EmmasDataSetTableAdapters.CustomerCRUDTableAdapter();
                daCust.Update(dsCust.CustomerCRUD);
                dsCust.AcceptChanges();
                Response.Redirect("~/Management.aspx");
            }
            catch
            {
                //this.lblSave.Text = "Unable to update - Invalid Input";
            }
        }
    }
}