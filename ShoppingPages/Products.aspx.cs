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
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=ConnectionStrings:PotteryConnectionString");
        SqlDataAdapter sda = new SqlDataAdapter ("SELECT * FROM Products", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        productList.DataSource = dt;
        productList.DataBind();
    }
}