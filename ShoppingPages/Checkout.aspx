<%@ Page Title="" Language="C#" MasterPageFile="~/ShoppingMaster.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="ShoppingPages_Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Contact Information</h2>
    <label>Email: </label>
    <asp:TextBox ID="emailBox" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="emailValidator" runat="server" ErrorMessage="Field is required" ControlToValidate="emailBox"></asp:RequiredFieldValidator>
    <br />
    <label>Confirm Email: </label>
    <asp:TextBox ID="reentryBox" runat="server"></asp:TextBox><asp:CompareValidator ID="confirmValidator" ControlToCompare="emailBox" ControlToValidate="reentryBox" runat="server" ErrorMessage="Must match email."></asp:CompareValidator>
    <br />
    <label>First Name: </label>
    <asp:TextBox ID="firstNameBox" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="firstValidator" ControlToValidate ="firstNameBox" runat="server" ErrorMessage="Field is required."></asp:RequiredFieldValidator>
    <br />
    <label>Last Name: </label>
    <asp:TextBox ID="lastNameBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="lastValidator" ControlToValidate="lastNameBox" runat="server" ErrorMessage="Field is required."></asp:RequiredFieldValidator>
    <br />
    <label>Phone Number: </label>
    <asp:TextBox ID="phoneBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="phoneValidator" ControlToValidate="phoneBox" runat="server" ErrorMessage="Field is required."></asp:RequiredFieldValidator>
    <br />

    <h2>Payment Information</h2>
    <label>Card Number: </label>
    <asp:TextBox ID="cardBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="cardValidator" ControlToValidate="cardBox" runat="server" ErrorMessage="Field is required."></asp:RequiredFieldValidator>
    <br />
    <label>Expiration Date: </label>
    <asp:TextBox ID="expBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="expValidator" ControlToValidate="expBox" runat="server" ErrorMessage="Field is required."></asp:RequiredFieldValidator>
    <br />
    <label>Security Code: </label>
    <asp:TextBox ID="codeBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="codeValidator" ControlToValidate="codeBox" runat="server" ErrorMessage="Field is required."></asp:RequiredFieldValidator>
    <h2>Billing Address</h2>
    <label>Address: </label>
    <asp:TextBox ID="addressBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="addressValidator" ControlToValidate="addressBox" runat="server" ErrorMessage="Field is required."></asp:RequiredFieldValidator>
    <br />
    <label>City: </label>
    <asp:TextBox ID="cityBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="cityValidator" ControlToValidate="cityBox" runat="server" ErrorMessage="Field is required."></asp:RequiredFieldValidator>
    <br />
    <label>State: </label>
    <asp:DropDownList ID="stateDdl" runat="server" AppendDataBoundItems="true" DataSourceID="SqlDataSource1" DataTextField="StateName"
        DataValueField ="StateCode">
        <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="stateValidator" ControlToValidate="stateDdl" runat="server" ErrorMessage="Field is required."></asp:RequiredFieldValidator>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:PotteryConnectionString %>' SelectCommand="SELECT [StateName], [StateCode] FROM [States]"></asp:SqlDataSource>
    <label>ZIP: </label>
    <asp:TextBox ID="zipBox" runat="server"></asp:TextBox>

    <asp:RequiredFieldValidator ID="zipValidator" ControlToValidate="zipBox" runat="server" ErrorMessage="Field is required."></asp:RequiredFieldValidator>

    <h3>Choose Shipping Method:</h3>
    <asp:RadioButtonList ID="shipList" runat="server" RepeatColumns="2">
        <asp:ListItem Value="Standard">Standard (3-5 business days)</asp:ListItem>
        <asp:ListItem Value="Express">Express (2 business days)</asp:ListItem>
        <asp:ListItem Value="Super Saver">Super Saver (7-14 business days)</asp:ListItem>
        <asp:ListItem Value="Overnight">Overnight</asp:ListItem>
    </asp:RadioButtonList><br />

    <asp:Button ID="confirmBtn" runat="server" Text="Checkout" OnClick="confirmBtn_Click" />
    <asp:Button ID="cancelBtn" runat="server" Text="Cancel Order" OnClick="cancelBtn_Click" />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:PotteryConnectionString %>' 
        DeleteCommand="DELETE FROM [Invoices] WHERE [InvoiceNumber] = @InvoiceNumber" 
        InsertCommand="INSERT INTO [Invoices] ([CustEmail], [OrderDate], [Subtotal], [ShipMethod], [Shipping], [SalesTax], [Total], [CreditCardNumber], [ExpirationDate]) VALUES (@CustEmail, @OrderDate, @Subtotal, @ShipMethod, @Shipping, @SalesTax, @Total, @CreditCardNumber, @ExpirationDate)" 
        SelectCommand="SELECT * FROM [Invoices]" 
        UpdateCommand="UPDATE [Invoices] SET [CustEmail] = @CustEmail, [OrderDate] = @OrderDate, [Subtotal] = @Subtotal, [ShipMethod] = @ShipMethod, [Shipping] = @Shipping, [SalesTax] = @SalesTax, [Total] = @Total, [CreditCardNumber] = @CreditCardNumber, [ExpirationDate] = @ExpirationDate WHERE [InvoiceNumber] = @InvoiceNumber">
        <DeleteParameters>
            <asp:Parameter Name="InvoiceNumber" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustEmail" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="OrderDate"></asp:Parameter>
            <asp:Parameter Name="Subtotal" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="ShipMethod" Type="String"></asp:Parameter>
            <asp:Parameter Name="Shipping" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="SalesTax" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="Total" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="CreditCardNumber" Type="Int32"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="ExpirationDate"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustEmail" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="OrderDate"></asp:Parameter>
            <asp:Parameter Name="Subtotal" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="ShipMethod" Type="String"></asp:Parameter>
            <asp:Parameter Name="Shipping" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="SalesTax" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="Total" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="CreditCardNumber" Type="Int32"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="ExpirationDate"></asp:Parameter>
            <asp:Parameter Name="InvoiceNumber" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString='<%$ ConnectionStrings:PotteryConnectionString %>' 
        SelectCommand="SELECT * FROM [Customers]" 
        DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = @CustomerID" 
        InsertCommand="INSERT INTO [Customers] ([LastName], [FirstName], [Address], [City], [State], [ZipCode], [PhoneNumber], [Email]) VALUES (@LastName, @FirstName, @Address, @City, @State, @ZipCode, @PhoneNumber, @Email)" 
        UpdateCommand="UPDATE [Customers] SET [LastName] = @LastName, [FirstName] = @FirstName, [Address] = @Address, [City] = @City, [State] = @State, [ZipCode] = @ZipCode, [PhoneNumber] = @PhoneNumber, [Email] = @Email WHERE [CustomerID] = @CustomerID">
        <DeleteParameters>
            <asp:Parameter Name="CustomerID" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="Address" Type="String"></asp:Parameter>
            <asp:Parameter Name="City" Type="String"></asp:Parameter>
            <asp:Parameter Name="State" Type="String"></asp:Parameter>
            <asp:Parameter Name="ZipCode" Type="String"></asp:Parameter>
            <asp:Parameter Name="PhoneNumber" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="Address" Type="String"></asp:Parameter>
            <asp:Parameter Name="City" Type="String"></asp:Parameter>
            <asp:Parameter Name="State" Type="String"></asp:Parameter>
            <asp:Parameter Name="ZipCode" Type="String"></asp:Parameter>
            <asp:Parameter Name="PhoneNumber" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="CustomerID" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

