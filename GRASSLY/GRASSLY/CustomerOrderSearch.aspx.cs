using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using GRASSLYLIB;
using GRASSLYLIB.EmmasDataSetTableAdapters;
// BRIC
// Vasco de Castro Ferraz Neto
// 2018-25-11
namespace GRASSLY
{
    public partial class CustomerOrderSearch : System.Web.UI.Page
    {
        private static EmmasDataSet dsEmmas;

        private static DataRow[] rows;

        static CustomerOrderSearch()
        {
            dsEmmas = new EmmasDataSet();
            
            CustomerServiceTableAdapter daCustomerService = new CustomerServiceTableAdapter();
            customerTableAdapter daCustomer = new customerTableAdapter();
            
            try
            {
                daCustomer.Fill(dsEmmas.customer);
                //daCustomerOrder.Fill(dsEmmas.CustomerOrder, 1);
                //daCustomerOrder.Ge
                //    daInventory.Fill(dsCustomer.CustomerInventory);
            }
            catch { }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/LogIn.aspx");
        }

        protected void btnClient_Click(object sender, EventArgs e)
        {
            this.Clear();
            if (dsEmmas.customer.Count > 0)
            {
                string searchString =
                    "CustFirst Like '%" + this.txtFirst.Text + "%'" +
                    " And CustLast Like '%" + this.txtLast.Text + "%'";
                rows = dsEmmas.customer.Select(searchString);
                foreach (DataRow r in rows)
                {
                    this.lstCustomer.Items.Add("Customer Name: " + r.ItemArray[1].ToString() + " " + r.ItemArray[2].ToString() + " - Phone: " + r.ItemArray[3].ToString() + " - e-mail: " + r.ItemArray[7].ToString());
                }
            }
            
        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (this.lstCustomer.SelectedIndex < 0) return;

        }

        private void Clear()
        {
            this.lstCustomer.Items.Clear();
        }
    }
}