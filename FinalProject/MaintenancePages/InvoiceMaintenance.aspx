<%@ Page Title="" Language="C#" MasterPageFile="~/MaintenanceMaster.master" AutoEventWireup="true" CodeFile="InvoiceMaintenance.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="bannerPlaceHolder" runat="server">
    <h1>Invoice Maintenance</h1>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PotteryConnectionString %>" DeleteCommand="DELETE FROM [Invoices] WHERE [InvoiceNumber] = @original_InvoiceNumber AND (([CustEmail] = @original_CustEmail) OR ([CustEmail] IS NULL AND @original_CustEmail IS NULL)) AND (([OrderDate] = @original_OrderDate) OR ([OrderDate] IS NULL AND @original_OrderDate IS NULL)) AND (([Subtotal] = @original_Subtotal) OR ([Subtotal] IS NULL AND @original_Subtotal IS NULL)) AND (([ShipMethod] = @original_ShipMethod) OR ([ShipMethod] IS NULL AND @original_ShipMethod IS NULL)) AND (([Shipping] = @original_Shipping) OR ([Shipping] IS NULL AND @original_Shipping IS NULL)) AND (([SalesTax] = @original_SalesTax) OR ([SalesTax] IS NULL AND @original_SalesTax IS NULL)) AND (([Total] = @original_Total) OR ([Total] IS NULL AND @original_Total IS NULL)) AND (([CreditCardNumber] = @original_CreditCardNumber) OR ([CreditCardNumber] IS NULL AND @original_CreditCardNumber IS NULL)) AND (([ExpirationDate] = @original_ExpirationDate) OR ([ExpirationDate] IS NULL AND @original_ExpirationDate IS NULL))" InsertCommand="INSERT INTO [Invoices] ([CustEmail], [OrderDate], [Subtotal], [ShipMethod], [Shipping], [SalesTax], [Total], [CreditCardNumber], [ExpirationDate]) VALUES (@CustEmail, @OrderDate, @Subtotal, @ShipMethod, @Shipping, @SalesTax, @Total, @CreditCardNumber, @ExpirationDate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Invoices]" UpdateCommand="UPDATE [Invoices] SET [CustEmail] = @CustEmail, [OrderDate] = @OrderDate, [Subtotal] = @Subtotal, [ShipMethod] = @ShipMethod, [Shipping] = @Shipping, [SalesTax] = @SalesTax, [Total] = @Total, [CreditCardNumber] = @CreditCardNumber, [ExpirationDate] = @ExpirationDate WHERE [InvoiceNumber] = @original_InvoiceNumber AND (([CustEmail] = @original_CustEmail) OR ([CustEmail] IS NULL AND @original_CustEmail IS NULL)) AND (([OrderDate] = @original_OrderDate) OR ([OrderDate] IS NULL AND @original_OrderDate IS NULL)) AND (([Subtotal] = @original_Subtotal) OR ([Subtotal] IS NULL AND @original_Subtotal IS NULL)) AND (([ShipMethod] = @original_ShipMethod) OR ([ShipMethod] IS NULL AND @original_ShipMethod IS NULL)) AND (([Shipping] = @original_Shipping) OR ([Shipping] IS NULL AND @original_Shipping IS NULL)) AND (([SalesTax] = @original_SalesTax) OR ([SalesTax] IS NULL AND @original_SalesTax IS NULL)) AND (([Total] = @original_Total) OR ([Total] IS NULL AND @original_Total IS NULL)) AND (([CreditCardNumber] = @original_CreditCardNumber) OR ([CreditCardNumber] IS NULL AND @original_CreditCardNumber IS NULL)) AND (([ExpirationDate] = @original_ExpirationDate) OR ([ExpirationDate] IS NULL AND @original_ExpirationDate IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_InvoiceNumber" Type="Int32" />
            <asp:Parameter Name="original_CustEmail" Type="String" />
            <asp:Parameter DbType="Date" Name="original_OrderDate" />
            <asp:Parameter Name="original_Subtotal" Type="Decimal" />
            <asp:Parameter Name="original_ShipMethod" Type="String" />
            <asp:Parameter Name="original_Shipping" Type="Decimal" />
            <asp:Parameter Name="original_SalesTax" Type="Decimal" />
            <asp:Parameter Name="original_Total" Type="Decimal" />
            <asp:Parameter Name="original_CreditCardNumber" Type="Int32" />
            <asp:Parameter DbType="Date" Name="original_ExpirationDate" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustEmail" Type="String" />
            <asp:Parameter DbType="Date" Name="OrderDate" />
            <asp:Parameter Name="Subtotal" Type="Decimal" />
            <asp:Parameter Name="ShipMethod" Type="String" />
            <asp:Parameter Name="Shipping" Type="Decimal" />
            <asp:Parameter Name="SalesTax" Type="Decimal" />
            <asp:Parameter Name="Total" Type="Decimal" />
            <asp:Parameter Name="CreditCardNumber" Type="Int32" />
            <asp:Parameter DbType="Date" Name="ExpirationDate" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustEmail" Type="String" />
            <asp:Parameter DbType="Date" Name="OrderDate" />
            <asp:Parameter Name="Subtotal" Type="Decimal" />
            <asp:Parameter Name="ShipMethod" Type="String" />
            <asp:Parameter Name="Shipping" Type="Decimal" />
            <asp:Parameter Name="SalesTax" Type="Decimal" />
            <asp:Parameter Name="Total" Type="Decimal" />
            <asp:Parameter Name="CreditCardNumber" Type="Int32" />
            <asp:Parameter DbType="Date" Name="ExpirationDate" />
            <asp:Parameter Name="original_InvoiceNumber" Type="Int32" />
            <asp:Parameter Name="original_CustEmail" Type="String" />
            <asp:Parameter DbType="Date" Name="original_OrderDate" />
            <asp:Parameter Name="original_Subtotal" Type="Decimal" />
            <asp:Parameter Name="original_ShipMethod" Type="String" />
            <asp:Parameter Name="original_Shipping" Type="Decimal" />
            <asp:Parameter Name="original_SalesTax" Type="Decimal" />
            <asp:Parameter Name="original_Total" Type="Decimal" />
            <asp:Parameter Name="original_CreditCardNumber" Type="Int32" />
            <asp:Parameter DbType="Date" Name="original_ExpirationDate" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="InvoiceNumber" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="InvoiceNumber" HeaderText="InvoiceNumber" InsertVisible="False" ReadOnly="True" SortExpression="InvoiceNumber" />
            <asp:BoundField DataField="CustEmail" HeaderText="CustEmail" SortExpression="CustEmail" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
            <asp:BoundField DataField="ShipMethod" HeaderText="ShipMethod" SortExpression="ShipMethod" />
            <asp:BoundField DataField="Shipping" HeaderText="Shipping" SortExpression="Shipping" />
            <asp:BoundField DataField="SalesTax" HeaderText="SalesTax" SortExpression="SalesTax" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
            <asp:BoundField DataField="CreditCardNumber" HeaderText="CreditCardNumber" SortExpression="CreditCardNumber" />
            <asp:BoundField DataField="ExpirationDate" HeaderText="ExpirationDate" SortExpression="ExpirationDate" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PotteryConnectionString %>" SelectCommand="SELECT * FROM [LineItems] WHERE ([InvoiceNumber] = @InvoiceNumber)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="InvoiceNumber" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="InvoiceNumber" HeaderText="InvoiceNumber" SortExpression="InvoiceNumber" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
</asp:Content>

