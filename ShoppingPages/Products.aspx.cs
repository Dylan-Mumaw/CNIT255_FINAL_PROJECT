using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ShoppingPages_Products : System.Web.UI.Page
{
    private Product selectedProduct;

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        if (!IsPostBack) ddlProductSelect.DataBind();
        selectedProduct = this.GetSelectedProduct();
        selectionLabel.Text = selectedProduct.Name;
        descriptionLabel.Text = selectedProduct.LongDescription;
        priceLabel.Text = selectedProduct.UnitPrice.ToString("c") + " each";
        productIMG.ImageUrl = "/FinalProjectProducts/" + selectedProduct.ImageFile;  
       
    }


    protected void addButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            CartItemList cart = CartItemList.GetCart();
            CartItem cartItem = cart[selectedProduct.ProductID];

            if (cartItem == null)
            {
                cart.AddItem(selectedProduct, Convert.ToInt32(quantityTextBox.Text));
            }
            else
            {
                cartItem.AddQuantity(Convert.ToInt32(quantityTextBox.Text));
            }
            Response.Redirect("~/ShoppingPages/Cart.aspx");
        }
    }

    private Product GetSelectedProduct()
    {
        DataView productsTable = (DataView)
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        productsTable.RowFilter = "ProductID = '" + ddlProductSelect.SelectedValue + "'";
        DataRowView row = (DataRowView)productsTable[0];

        Product p = new Product();
        p.ProductID = row["ProductID"].ToString();
        p.Name = row["Name"].ToString();
        p.ShortDescription = row["ShortDescription"].ToString();
        p.LongDescription = row["LongDescription"].ToString();
        p.UnitPrice = (decimal)row["UnitPrice"];
        p.ImageFile = row["ImageFile"].ToString();
        return p;

    }

    protected void ddlProductSelect_SelectedIndexChanged(object sender, EventArgs e)
    {
        selectedProduct = this.GetSelectedProduct();
        selectionLabel.Text = selectedProduct.Name;
        descriptionLabel.Text = selectedProduct.LongDescription;
        priceLabel.Text = selectedProduct.UnitPrice.ToString("c") + " each";
        productIMG.ImageUrl = "/FinalProjectProducts/" + selectedProduct.ImageFile;
    }

    
}