<%@ Page Language="C#" MasterPageFile="~/ShoppingMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" Theme="ShopTheme" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheets/homeStyle.css" rel="stylesheet" />
    <title>Smoking Kiln Pottery</title>
    <center><asp:HyperLink NavigateUrl = "~/ShoppingPages/Products.aspx" runat="server">Products</asp:HyperLink>&nbsp<asp:HyperLink NavigateUrl = "~/ShoppingPages/Orders.aspx" runat="server">Orders</asp:HyperLink>&nbsp<asp:HyperLink NavigateUrl = "~/ShoppingPages/Cart.aspx" runat="server">Cart</asp:HyperLink></center>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <body>
    <div class="wrapper">
        <p>High-quality pottery. Plain and simple.</p>
        <asp:Image ID="homeImg" ImageUrl="~/FinalProjectProducts/StonewareCandleHolder.jpg" Height="400px" Width="300px" runat="server" />
        <p>About the Artist <br />
           Smoking Kiln offers high-quality, hand-crafted pottery. 
           <br /> Each piece is made by hand and is completely new unique, 
           <br /> from the colors involved to the final shape of the piece.
           <br /> No two pieces are the same. 
           <br />Materials used vary from copper, clay imported from Sedona, stoneware, and porcelain. 
        </p>
    </div>
</body>
</asp:Content>
