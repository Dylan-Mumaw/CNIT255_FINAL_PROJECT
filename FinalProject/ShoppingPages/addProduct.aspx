<%@ Page Title="" Language="C#" MasterPageFile="~/ShoppingMaster.master" AutoEventWireup="true" CodeFile="addProduct.aspx.cs" Inherits="ShoppingPages_addProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:PotteryConnectionString %>' SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
    <asp:Label ID="productLabel" runat="server" Text="ProductLabel"></asp:Label>
    <asp:Label ID="descriptionLabel" runat="server" Text="DescriptionLabel"></asp:Label>
    <asp:Label ID="priceLabel" runat="server" Text ="PriceLabel"></asp:Label>
    <asp:Image ID="SelectedImg" ImageUrl="~/FinalProjectProducts" runat="server" />
    <asp:TextBox ID="quantityTextBox" runat="server"></asp:TextBox>
    <asp:Button ID="purchaseButton" runat="server" Text="Add to Cart" OnClick="purchaseButton_Click" />
</asp:Content>

