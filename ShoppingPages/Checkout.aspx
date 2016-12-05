<%@ Page Title="" Language="C#" MasterPageFile="~/ShoppingMaster.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="ShoppingPages_Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Contact Information</h2>
    <label>Email: </label>
    <asp:TextBox ID="emailBox" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="emailValidator" runat="server" ErrorMessage="Field is required" ControlToValidate="emailBox"></asp:RequiredFieldValidator>
    <br />
    <label>Confirm Email: </label>
    <asp:TextBox ID="reentryBox" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="confirmValidator" ControlToValidate="reentryBox" runat="server" ErrorMessage="Field is required"></asp:RequiredFieldValidator>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <label>ZIP: </label>
    <asp:TextBox ID="zipBox" runat="server"></asp:TextBox>

    <asp:RequiredFieldValidator ID="zipValidator" ControlToValidate="zipBox" runat="server" ErrorMessage="Field is required."></asp:RequiredFieldValidator>

    <h3>Contact My Email With Additional Offers Concerning:</h3>
    <asp:CheckBoxList ID="offerList" runat="server" RepeatColumns="2">
        <asp:ListItem Value="New"> New Products</asp:ListItem>
        <asp:ListItem Value="Fairs"> Local Art Fairs</asp:ListItem>
        <asp:ListItem Value="Discounts"> Discounts</asp:ListItem>
        <asp:ListItem Value="Offers"> Special Offers</asp:ListItem>
    </asp:CheckBoxList><br />

    <asp:Button ID="confirmBtn" runat="server" Text="Checkout" OnClick="confirmBtn_Click" />
    <asp:Button ID="cancelBtn" runat="server" Text="Cancel Order" OnClick="cancelBtn_Click" />
</asp:Content>

