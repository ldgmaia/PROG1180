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
    public partial class CustomerCreate : System.Web.UI.Page
    {
        static GRASSLYLIB.EmmasDataSet dsCust = new EmmasDataSet();
        int id;

        static CustomerCreate()
        {
            GRASSLYLIB.EmmasDataSetTableAdapters.CustomerCRUDTableAdapter daCust = new GRASSLYLIB.EmmasDataSetTableAdapters.CustomerCRUDTableAdapter();
            daCust.Fill(dsCust.CustomerCRUD);
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

                DataRow[] row = dsCust.CustomerCRUD.Select("id=" + id.ToString());
                txtFirst.Text = row[0]["custFirst"].ToString();
                txtLast.Text = row[0]["custLast"].ToString();
                txtPhone.Text = row[0]["custPhone"].ToString();
                txtEmail.Text = row[0]["custEmail"].ToString();
                txtAddress.Text = row[0]["custAddress"].ToString();
                txtCity.Text = row[0]["custCity"].ToString();
                txtPostal.Text = row[0]["custPostal"].ToString();
                btnCreateCust.Text = "Update";
            }
            else
                id = -1;
        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            throw new Exception();
        }

        protected void btnCreateCust_Click(object sender, EventArgs e)
        {
            //try
            //{
            DataRow r; r = dsCust.CustomerCRUD.NewRow();
            if (id == -1)
            {
                r = dsCust.CustomerCRUD.NewRow();
                r["custFirst"] = this.txtFirst.Text;
                r["custLast"] = this.txtLast.Text;
                r["custPhone"] = this.txtPhone.Text;
                r["custEmail"] = this.txtEmail.Text;
                r["custAddress"] = this.txtAddress.Text;
                r["custCity"] = this.txtCity.Text;
                r["custPostal"] = this.txtPostal.Text;
                dsCust.CustomerCRUD.Rows.Add(r);
            }
            else
            {
                dsCust.CustomerCRUD.FindByid(id).custFirst = txtFirst.Text;
                dsCust.CustomerCRUD.FindByid(id).custLast = txtLast.Text;
                dsCust.CustomerCRUD.FindByid(id).custPhone = txtPhone.Text;
                dsCust.CustomerCRUD.FindByid(id).custEmail = txtEmail.Text;
                dsCust.CustomerCRUD.FindByid(id).custAddress = txtAddress.Text;
                dsCust.CustomerCRUD.FindByid(id).custCity = txtCity.Text;
                dsCust.CustomerCRUD.FindByid(id).custPostal = txtPostal.Text;
            }
            GRASSLYLIB.EmmasDataSetTableAdapters.CustomerCRUDTableAdapter daCust = new GRASSLYLIB.EmmasDataSetTableAdapters.CustomerCRUDTableAdapter();
            daCust.Update(dsCust.CustomerCRUD);
            dsCust.AcceptChanges();
            dsCust.CustomerCRUD.Clear();
            daCust.Fill(dsCust.CustomerCRUD);
            Response.Redirect("~/Customer.aspx");
        }

        protected void btnDeleteCust_Click(object sender, EventArgs e)
        {
            try
            {
                GRASSLYLIB.EmmasDataSet.CustomerCRUDRow row = dsCust.CustomerCRUD.FindByid(id);

                row.Delete();
                GRASSLYLIB.EmmasDataSetTableAdapters.CustomerCRUDTableAdapter daCust = new GRASSLYLIB.EmmasDataSetTableAdapters.CustomerCRUDTableAdapter();
                daCust.Update(dsCust.CustomerCRUD);
                dsCust.AcceptChanges();
                dsCust.CustomerCRUD.Clear();
                daCust.Fill(dsCust.CustomerCRUD);
                Response.Redirect("~/Customer.aspx");
            }
            catch(Exception ex)
            {
                lblCust.Text = ex.Message;
            }
        }
    }
}

