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
        static GRASSLYLIB.EmmasDataSet dsEmp = new EmmasDataSet();
        int id;

        static EmployeeCreate()
        {
            GRASSLYLIB.EmmasDataSetTableAdapters.EmployeeCRUDTableAdapter daEmp = new GRASSLYLIB.EmmasDataSetTableAdapters.EmployeeCRUDTableAdapter();
            daEmp.Fill(dsEmp.EmployeeCRUD);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/LogIn.aspx");
            if (Request.QueryString["selectedId"] != null)
            {
                id = Convert.ToInt32(Request.QueryString["selectedId"]);

                if (IsPostBack)
                    return;

                DataRow[] row = dsEmp.EmployeeCRUD.Select("id=" + id.ToString());
                txtFirst.Text = row[0]["empFirst"].ToString();
                txtLast.Text = row[0]["empLast"].ToString();
                ddlPosition.SelectedValue = row[0]["posID"].ToString();
                btnCreateEmp.Text = "Update";
            }
            else
                id = -1;
        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            throw new Exception();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //try
            //{
                DataRow r;r = dsEmp.EmployeeCRUD.NewRow();
                if (id == -1)
                {
                    r = dsEmp.EmployeeCRUD.NewRow();
                    r["empFirst"] = this.txtFirst.Text;
                    r["empLast"] = this.txtLast.Text;
                    r["posID"] = this.ddlPosition.SelectedValue;
                    dsEmp.EmployeeCRUD.Rows.Add(r);
                }
                else
                {
                    dsEmp.EmployeeCRUD.FindByid(id).empFirst = txtFirst.Text;
                    dsEmp.EmployeeCRUD.FindByid(id).empLast = txtLast.Text;
                    dsEmp.EmployeeCRUD.FindByid(id).posID = Convert.ToInt32(ddlPosition.SelectedValue);
                }
                GRASSLYLIB.EmmasDataSetTableAdapters.EmployeeCRUDTableAdapter daEmp = new GRASSLYLIB.EmmasDataSetTableAdapters.EmployeeCRUDTableAdapter();
                daEmp.Update(dsEmp.EmployeeCRUD);
                dsEmp.AcceptChanges();
                dsEmp.EmployeeCRUD.Clear();
                daEmp.Fill(dsEmp.EmployeeCRUD);
                Response.Redirect("~/Employee.aspx");
        }

        protected void btnDeleteEmp_Click(object sender, EventArgs e)
        {
            try
            {
                GRASSLYLIB.EmmasDataSet.EmployeeCRUDRow row = dsEmp.EmployeeCRUD.FindByid(id);

                row.Delete();
                GRASSLYLIB.EmmasDataSetTableAdapters.EmployeeCRUDTableAdapter daEmp = new GRASSLYLIB.EmmasDataSetTableAdapters.EmployeeCRUDTableAdapter();
                daEmp.Update(dsEmp.EmployeeCRUD);
                dsEmp.AcceptChanges();
                dsEmp.CustomerCRUD.Clear();
                daEmp.Fill(dsEmp.EmployeeCRUD);
                Response.Redirect("~/Employee.aspx");
            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("fk"))
                    lblEmp.Text = "You can't delete this employee, they have other records.";
                else
                {
                    lblEmp.Text = ex.Message;
                }
            }
        }
    }
}