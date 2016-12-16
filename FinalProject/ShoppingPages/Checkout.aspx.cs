using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;

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
            cardBox.Text = customer.cardNumber;
            expBox.Text = customer.expDate;
            codeBox.Text = customer.secNumber;
            shipList.Items[0].Selected = customer.newProducts;
            shipList.Items[1].Selected = customer.artFairs;
            shipList.Items[2].Selected = customer.discounts;
            shipList.Items[3].Selected = customer.specialOffers;
            //Fill with other data when implemented
        }
    }

    private void GetCustomerData()
    {
        if (customer == null)
            customer = new Customer();
        customer.FirstName = firstNameBox.Text;
        customer.LastName = lastNameBox.Text;
        customer.Email = emailBox.Text;
        customer.Phone = phoneBox.Text;
        customer.Address = addressBox.Text;
        customer.City = cityBox.Text;
        customer.State = stateDdl.SelectedValue;
        customer.Zip = Convert.ToInt32(zipBox.Text);
        customer.cardNumber = cardBox.Text;
        customer.expDate = expBox.Text;
        customer.secNumber = codeBox.Text;
        customer.newProducts = shipList.Items[0].Selected;
        customer.artFairs = shipList.Items[1].Selected;
        customer.discounts = shipList.Items[2].Selected;
        customer.specialOffers = shipList.Items[3].Selected;
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
       
        if (Page.IsValid)
        {
            this.GetCustomerData();
            SqlDataSource2.InsertParameters["CustEmail"].DefaultValue = emailBox.Text;
            SqlDataSource2.InsertParameters["OrderDate"].DefaultValue = Convert.ToString(DateTime.Now);
            SqlDataSource2.InsertParameters["CustEmail"].DefaultValue = emailBox.Text;
            SqlDataSource2.InsertParameters["ShipMethod"].DefaultValue = shipList.SelectedValue;
            SqlDataSource2.InsertParameters["CreditCardNumber"].DefaultValue = cardBox.Text;
            SqlDataSource2.InsertParameters["ExpirationDate"].DefaultValue = expBox.Text;

            try
            {
                SqlDataSource2.Insert();

            }
            catch (Exception ex)
            {
                Label1.Text = "A database error has occured" + "Message: " + ex.Message;
            }

            SqlDataSource3.InsertParameters["LastName"].DefaultValue = lastNameBox.Text;
            SqlDataSource3.InsertParameters["FirstName"].DefaultValue = firstNameBox.Text;
            SqlDataSource3.InsertParameters["Address"].DefaultValue = addressBox.Text;
            SqlDataSource3.InsertParameters["City"].DefaultValue = cityBox.Text;
            SqlDataSource3.InsertParameters["State"].DefaultValue = stateDdl.SelectedValue;
            SqlDataSource3.InsertParameters["ZipCode"].DefaultValue = zipBox.Text;
            SqlDataSource3.InsertParameters["PhoneNumber"].DefaultValue = phoneBox.Text;
            SqlDataSource3.InsertParameters["Email"].DefaultValue = emailBox.Text;
            try
            {
                SqlDataSource3.Insert();
            }
            catch (Exception ex)
            {
                Label1.Text = "A database error has occured" + "Message: " + ex.Message;
            }
        }
        int cardNumber = Convert.ToInt32(cardBox.Text);
        Session["First"] = firstNameBox.Text;
        Session["Last"] = lastNameBox.Text;
        Session["Date"] = DateTime.Now;
        Session["Ship"] = shipList.SelectedValue;
        Response.Redirect("~/ShoppingPages/Receipt.aspx/");
        
    }
}