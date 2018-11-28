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

    public partial class PlaceSales : System.Web.UI.Page
    {
        private static EmmasDataSet dsEmmas;

        private static DataRow[] rows;

        static PlaceSales()
        {
            dsEmmas = new EmmasDataSet();

            CustomerServiceTableAdapter daCustomerService = new CustomerServiceTableAdapter();
            customerTableAdapter daCustomer = new customerTableAdapter();
            InventoryTableAdapter daInventory = new InventoryTableAdapter();


            try
            {
                daCustomer.Fill(dsEmmas.customer);
                daInventory.Fill(dsEmmas.Inventory);
            }
            catch { }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.txtDate.Text = DateTime.Today.ToShortDateString();
        }

        protected void btnCustSearch_Click(object sender, EventArgs e)
        {
            if (dsEmmas.customer.Count > 0)
            {
                this.Clear("customer");
                string searchString =
                    "CustFirst Like '%" + this.txtCustomer.Text + "%'";
                rows = dsEmmas.customer.Select(searchString);
                foreach (DataRow r in rows)
                {
                    ListItem item = new ListItem();
                    item.Text = "Customer Name: " + r.ItemArray[1].ToString() + " " + r.ItemArray[2].ToString() + " - Phone: " + r.ItemArray[3].ToString() + " - e-mail: " + r.ItemArray[7].ToString();
                    item.Value = r.ItemArray[0].ToString();
                    this.lstCustomer.Items.Add(item);
                }
            }
        }

        protected void btnSearchProd_Click(object sender, EventArgs e)
        {
            this.Clear("product");
            string searchString =
                    "prodName Like '%" + this.txtProdName.Text + "%'";
            rows = dsEmmas.Inventory.Select(searchString);
            foreach (DataRow r in rows)
            {
                ListItem item = new ListItem();
                item.Text = "Inv. Qt.: " + r.ItemArray[1].ToString() + " - Product: " + r.ItemArray[2].ToString();
                item.Value = r.ItemArray[0].ToString();
                this.lstProduct.Items.Add(item);
            }

        }

        protected void btnAddCart_Click(object sender, EventArgs e)
        {
            

            
            string id = this.lstProduct.SelectedItem.Value;
            string searchString =
                    "id = " + id;
            rows = dsEmmas.Inventory.Select(searchString);
            foreach (DataRow r in rows)
            {
                ListItem item = new ListItem();
                item.Text = "Order Qt.: " + txtQt.Text + " - Product: " + r.ItemArray[2].ToString();
                item.Value = r.ItemArray[0].ToString();
                this.lstCart.Items.Add(item);
            }
        }

        private void Clear(string formName)
        {
            if (formName == "customer")
                lstCustomer.Items.Clear();

            if (formName == "product")
                lstProduct.Items.Clear();


        }
    }
}