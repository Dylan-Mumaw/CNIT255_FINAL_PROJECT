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
        Response.Redirect("~/ShoppingPages/Checkout.aspx");
    }
    protected void productButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ShoppingPages/Products.aspx");
    }
}