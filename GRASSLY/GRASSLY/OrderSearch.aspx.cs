using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using GRASSLYLIB;
using GRASSLYLIB.EmmasDataSetTableAdapters;

namespace GRASSLY
{
    public partial class OrderSearch : System.Web.UI.Page
    {
        private static EmmasDataSet dsEmmas;

        private static DataRow[] rows;

        public bool vendor = false;

        static OrderSearch()
        {
            dsEmmas = new EmmasDataSet();

            CustomerServiceTableAdapter daCustomerService = new CustomerServiceTableAdapter();
            customerTableAdapter daCustomer = new customerTableAdapter();
            
            
            try
            {
                daCustomer.Fill(dsEmmas.customer);
            }
            catch { }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/LogIn.aspx");

            this.lstSearchResult.Visible = false;
            this.lstOrders.Visible = false;
            this.lblListOrder.Visible = false;
            this.lblOrders.Visible = false;
            this.lblDetails.Visible = false;
            this.grvOrderDetail.Visible = false;
            this.grvOrderDetail2.Visible = false;

        }

        protected void btnSearchOrder_Click(object sender, EventArgs e)
        {
            this.Clear("order");
            int order = Convert.ToInt32(txtSearchOrder.Text);
            grvOrderDetail.DataBind();
            grvOrderDetail.Visible = true;
        }
       
        protected void btnSearchCustomer_Click(object sender, EventArgs e)
        {
            this.Clear("customer");
            if (dsEmmas.customer.Count > 0)
            {
                string searchString =
                    "CustFirst Like '%" + this.txtSearchCustFirst.Text + "%'" +
                    " And CustLast Like '%" + this.txtSearchCustLast.Text + "%'";
                rows = dsEmmas.customer.Select(searchString);
                foreach (DataRow r in rows)
                {
                    ListItem item = new ListItem();
                    item.Text = "Customer Name: " + r.ItemArray[1].ToString() + " " + r.ItemArray[2].ToString() + " - Phone: " + r.ItemArray[3].ToString() + " - e-mail: " + r.ItemArray[7].ToString();
                    item.Value = r.ItemArray[0].ToString();
                    this.lstSearchResult.Items.Add(item);
                }
            }
        }

        protected void lstSearchResult_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.Clear("lstsearch");
            int id = Convert.ToInt32(lstSearchResult.SelectedValue);
            service_orderTableAdapter daServiceOrder = new service_orderTableAdapter();
            rows = daServiceOrder.GetData().Select("custID = " + id.ToString());
            foreach (DataRow r in rows)
            {
                ListItem item = new ListItem();
                DateTime d = Convert.ToDateTime(r.ItemArray[1].ToString());
                item.Text = "Order Number: " + r.ItemArray[0].ToString() + " - Date: " + d.ToShortDateString();
                item.Value = r.ItemArray[0].ToString();
                this.lstOrders.Items.Add(item);
            }
        }

        protected void lstOrders_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.Clear("orderdet");
            grvOrderDetail2.DataBind();
            grvOrderDetail2.Visible = true;
        }

        protected void btnSearchVendor_Click(object sender, EventArgs e)
        {
            this.Clear("vendor");
            int id = Convert.ToInt32(ddlSearchVendor.SelectedValue);
            service_orderTableAdapter daServiceOrder = new service_orderTableAdapter();
            rows = daServiceOrder.GetData().Select("empID = " + id.ToString());
            foreach (DataRow r in rows)
            {
                ListItem item = new ListItem();
                DateTime d = Convert.ToDateTime(r.ItemArray[1].ToString());
                item.Text = "Order Number: " + r.ItemArray[0].ToString() + " - Date: " + d.ToShortDateString();
                item.Value = r.ItemArray[0].ToString();
                this.lstOrders.Items.Add(item);
            }
        }

        private void Clear(string formName)
        {
            if (formName == "order")
            {
                this.txtSearchCustFirst.Text = "";
                this.txtSearchCustLast.Text = "";
                this.lstSearchResult.Items.Clear();
                this.lstOrders.Items.Clear();
                this.lstSearchResult.Visible = false;
                this.lstOrders.Visible = false;
                this.lblListOrder.Visible = false;
                this.lblOrders.Visible = false;
                this.lblDetails.Visible = false;
                this.grvOrderDetail.Visible = false;
                this.grvOrderDetail2.Visible = false;
                vendor = false;
            }
            if (formName == "customer")
            {
                this.txtSearchOrder.Text = "";
                this.lstSearchResult.Items.Clear();
                this.lstOrders.Items.Clear();
                this.lstSearchResult.Visible = true;
                this.lstOrders.Visible = false;
                this.lblListOrder.Visible = true;
                this.lblOrders.Visible = false;
                this.lblDetails.Visible = false;
                this.grvOrderDetail.Visible = false;
                this.grvOrderDetail2.Visible = false;
                vendor = false;
            }

            if (formName == "lstsearch")
            {
                this.lstOrders.Items.Clear();
                this.lstSearchResult.Visible = true;
                this.lstOrders.Visible = true;
                this.lblListOrder.Visible = true;
                this.lblOrders.Visible = true;
                this.lblDetails.Visible = false;
                this.grvOrderDetail.Visible = false;
                this.grvOrderDetail2.Visible = false;
                vendor = false;
            }

            if (formName == "vendor")
            {
                this.lstOrders.Items.Clear();
                this.lstSearchResult.Visible = false;
                this.lstOrders.Visible = true;
                this.lblListOrder.Visible = false;
                this.lblOrders.Visible = true;
                this.lblDetails.Visible = false;
                this.grvOrderDetail.Visible = false;
                this.grvOrderDetail2.Visible = false;
                vendor = true;
            }
            if (formName == "orderdet")
            {
                this.lstOrders.Visible = true;
                this.lblOrders.Visible = true;
                this.lblDetails.Visible = true;
                this.grvOrderDetail.Visible = false;
                this.grvOrderDetail2.Visible = true;
                if (vendor == true)
                {
                    this.lstSearchResult.Visible = false;
                    this.lblListOrder.Visible = false;
                }
                else
                {
                    this.lstSearchResult.Visible = true;
                    this.lblListOrder.Visible = true;
                }
                
            }

        }
    }
}