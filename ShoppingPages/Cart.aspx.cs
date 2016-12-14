using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShoppingPages_Cart : System.Web.UI.Page
{
    private CartItemList cart;

    protected void Page_Load(object sender, EventArgs e)
    {
        cart = CartItemList.GetCart();
        if (!IsPostBack)
        {
            this.DisplayCart();
        }

        
    }

    private void DisplayCart()
    {
        cartList.Items.Clear();
        CartItem item;
        for (int i = 0; i < cart.Count; i++)
        {
            item = cart[i];
            cartList.Items.Add(item.Display());
            
        }
    }

    protected void checkoutButton_Click(object sender, EventArgs e)
    {
        Session["listBox"] = cartList;
        Response.Redirect("~/ShoppingPages/Checkout.aspx");
    }
    protected void productButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ShoppingPages/Products.aspx");
    }
    protected void removeButton_Click(object sender, EventArgs e)
    {
        if (cart.Count > 0)
        {
            if (cartList.SelectedIndex > -1)
            {
                cart.RemoveAt(cartList.SelectedIndex);
                this.DisplayCart();
            }
            else
            {
                //lblMessage.Text = "Please select the item you want to remove.";
            }
        }
    }
    protected void clearButton_Click(object sender, EventArgs e)
    {
        if (cart.Count > 0)
        {
            cart.Clear();
            cartList.Items.Clear();
        }
    }
}