using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GRASSLYLIB;

namespace GRASSLY
{
    public partial class EmployeeCreate : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            throw new Exception();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                GRASSLYLIB.EmmasDataSet dsEmp = new EmmasDataSet();
                DataRow r = dsEmp.EmployeeCRUD.NewRow();
                r["empFirst"] = this.txtFirst.Text;
                r["empLast"] = this.txtLast.Text;
                r["posID"] = this.ddlPosition.SelectedValue;
                dsEmp.EmployeeCRUD.Rows.Add(r);
                GRASSLYLIB.EmmasDataSetTableAdapters.EmployeeCRUDTableAdapter daEmp = new GRASSLYLIB.EmmasDataSetTableAdapters.EmployeeCRUDTableAdapter();
                daEmp.Update(dsEmp.EmployeeCRUD);
                dsEmp.AcceptChanges();
                Response.Redirect("~/Management.aspx");
            }
            catch
            {
                //this.lblSave.Text = "Unable to update - Invalid Input";
            }
        }

        //protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
        //{
        //    Response.Redirect("~/Management.aspx");
        //}
    }
}