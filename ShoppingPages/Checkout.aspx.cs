using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShoppingPages_Checkout : System.Web.UI.Page
{
    private Customer customer;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        if (!IsPostBack)
        {
            customer = (Customer)Session["Customer"];
            this.LoadCustomerData();
        }
    }

    private void LoadCustomerData()
    {
        if (customer != null)
        {
            firstNameBox.Text = customer.FirstName;
            lastNameBox.Text = customer.LastName;
            emailBox.Text = Convert.ToString(customer.Email);
            phoneBox.Text = Convert.ToString(customer.Phone);
            addressBox.Text = Convert.ToString(customer.Address);
            cityBox.Text = customer.City;
            stateDdl.SelectedValue = customer.State;
            zipBox.Text = Convert.ToString(customer.Zip);
            //Fill with other data when implemented
        }
    }

    private void GetCustomerData()
    {
        if (customer == null)
            customer = new Customer();
        customer.FirstName = firstNameBox.Text;
        customer.LastName = lastNameBox.Text;
        customer.Email = Convert.ToChar(emailBox.Text);
        customer.Phone = Convert.ToChar(phoneBox.Text);
        customer.Address = addressBox.Text;
        customer.City = cityBox.Text;
        customer.State = stateDdl.SelectedValue;
        customer.Zip = Convert.ToInt32(zipBox.Text);
        customer.newProducts = offerList.Items[0].Selected;
        customer.artFairs = offerList.Items[1].Selected;
        customer.discounts = offerList.Items[2].Selected;
        customer.specialOffers = offerList.Items[3].Selected;
        Session["Customer"] = customer;
    }
    protected void cancelBtn_Click(object sender, EventArgs e)
    {
        Session.Remove("CartItemList");
        Session.Remove("Customer");
        Response.Redirect("~/ShoppingPages/Cart.aspx");
    }
    protected void confirmBtn_Click(object sender, EventArgs e)
    {
        this.GetCustomerData();
    }
}