using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShoppingPages_Receipt : System.Web.UI.Page
{
    private CartItemList cart;

    protected void Page_Load(object sender, EventArgs e)
    {
        
        cart = CartItemList.GetCart();
        this.DisplayCart();
        decimal grandTotal = Convert.ToDecimal(Session["Total"]);
        Label1.Text = "Total: " + grandTotal.ToString("c");
        firstLabel.Text = "First Name: " + Convert.ToString(Session["First"]);
        lastLabel.Text = "Last Name: " + Convert.ToString(Session["Last"]);
        dateLabel.Text = "Date Ordered: " + Convert.ToString(Session["Date"]);
        shipLabel.Text = "Shipping Method: " + Convert.ToString(Session["Ship"]);

    }

    private void DisplayCart()
    {
        ListBox1.Items.Clear();
        CartItem item;
        for (int i = 0; i < cart.Count; i++)
        {
            item = cart[i];
            ListBox1.Items.Add(item.Display());

        }
    }
}