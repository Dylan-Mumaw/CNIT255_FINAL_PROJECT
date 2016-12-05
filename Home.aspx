<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Styles/HomeStyle.css" rel="stylesheet" />
    <title>Smoking Kiln Pottery</title>
    <h1>Smoking Kiln</h1>
    <center><asp:HyperLink NavigateUrl = "~/ShoppingPages/Products.aspx" runat="server">Products</asp:HyperLink>&nbsp<asp:HyperLink NavigateUrl = "~/ShoppingPages/Orders.aspx" runat="server">Orders</asp:HyperLink>&nbsp<asp:HyperLink NavigateUrl = "~/ShoppingPages/Cart.aspx" runat="server">Cart</asp:HyperLink></center>
    <center><p>Contact: joeschmo@smokingkiln.com</p></center>
</head>
<body>
    <form id="form1" runat="server">
    <div class="wrapper">
        <p>High-quality pottery. Plain and simple.</p>
        <asp:Image ID="homeImg" ImageUrl="~/FinalProjectProducts/StonewareCandleHolder.jpg" Height="400px" Width="300px" runat="server" />
        <p>About the Artist <br />
           Smoking Kiln offers high-quality, hand-crafted pottery. 
           <br /> Each piece is made by hand and is completely new unique, 
           <br /> from the colors involved to the final shape of the piece.
           <br /> No two pieces are the same. 
           <br />Materials used vary from filler, filler, filler, and filler. 
        </p>
    </div>
    </form>
</body>
</html>
