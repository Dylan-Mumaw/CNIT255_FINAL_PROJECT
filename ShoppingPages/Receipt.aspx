<%@ Page Title="" Language="C#" MasterPageFile="~/ShoppingMaster.master" AutoEventWireup="true" CodeFile="Receipt.aspx.cs" Inherits="ShoppingPages_Receipt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="InvoiceNumber" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="InvoiceNumber" HeaderText="InvoiceNumber" ReadOnly="True" InsertVisible="False" SortExpression="InvoiceNumber"></asp:BoundField>
            <asp:BoundField DataField="CustEmail" HeaderText="CustEmail" SortExpression="CustEmail"></asp:BoundField>
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate"></asp:BoundField>
            <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" SortExpression="Subtotal"></asp:BoundField>
            <asp:BoundField DataField="ShipMethod" HeaderText="ShipMethod" SortExpression="ShipMethod"></asp:BoundField>
            <asp:BoundField DataField="Shipping" HeaderText="Shipping" SortExpression="Shipping"></asp:BoundField>
            <asp:BoundField DataField="SalesTax" HeaderText="SalesTax" SortExpression="SalesTax"></asp:BoundField>
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total"></asp:BoundField>
            <asp:BoundField DataField="CreditCardNumber" HeaderText="CreditCardNumber" SortExpression="CreditCardNumber"></asp:BoundField>
            <asp:BoundField DataField="ExpirationDate" HeaderText="ExpirationDate" SortExpression="ExpirationDate"></asp:BoundField>
            <asp:CommandField ShowEditButton="True"></asp:CommandField>
        </Columns>
    </asp:GridView>
    <asp:ListBox ID="ListBox1" runat="server" Height="121px" Width="217px"></asp:ListBox>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:PotteryConnectionString %>' SelectCommand="SELECT * FROM [Invoices]"></asp:SqlDataSource>
</asp:Content>

