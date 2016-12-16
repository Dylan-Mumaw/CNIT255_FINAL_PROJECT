<%@ Page Title="" Language="C#" StylesheetTheme="ShopTheme" MasterPageFile="~/ShoppingMaster.master" AutoEventWireup="true" CodeFile="Receipt.aspx.cs" Inherits="ShoppingPages_Receipt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center><h1>Thank you for shopping with Smoking Kiln!</h1></center>
    <asp:Label ID="firstLabel" runat="server" Text=""></asp:Label><br />
    <asp:Label ID="lastLabel" runat="server" Text=""></asp:Label><br />
    <asp:Label ID="dateLabel" runat="server" Text=""></asp:Label><br />
    <asp:Label ID="shipLabel" runat="server" Text=""></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="InvoiceNumber" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate"></asp:BoundField>
            <asp:BoundField DataField="InvoiceNumber" HeaderText="InvoiceNumber" SortExpression="InvoiceNumber" InsertVisible="False" ReadOnly="True"></asp:BoundField>
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total"></asp:BoundField>
            <asp:BoundField DataField="ShipMethod" HeaderText="ShipMethod" SortExpression="ShipMethod"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <center><h3>Items purchased:</h3></center>
    <center><asp:ListBox ID="ListBox1" runat="server" Height="121px" Width="381px"></asp:ListBox></center>
    <center><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></center>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:PotteryConnectionString %>' SelectCommand="SELECT [OrderDate], [InvoiceNumber], [Total], [ShipMethod] FROM [Invoices] WHERE (([CreditCardNumber] = @CreditCardNumber) AND ([CreditCardNumber] = @CreditCardNumber2))">
        <SelectParameters>
            <asp:SessionParameter SessionField="Card" Name="CreditCardNumber" Type="Int32"></asp:SessionParameter>

            <asp:SessionParameter SessionField="Card" Name="CreditCardNumber2" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

