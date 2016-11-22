<%@ Page Title="" Language="C#" MasterPageFile="~/ShoppingMaster.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="ShoppingPages_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListBox ID="cartList" Height="187px" Width="491px" runat="server"></asp:ListBox>
    <asp:Button ID="checkoutButton" runat="server" Text="Checkout" OnClick="checkoutButton_Click" />
    <asp:Button ID="productButton" runat="server" Text ="Products" OnClick="productButton_Click" />
    <asp:Button ID="removeButton" runat="server" Text="Remove Item" />
    <asp:Button ID="clearButton" runat="server" Text="Clear Cart" />

</asp:Content>

