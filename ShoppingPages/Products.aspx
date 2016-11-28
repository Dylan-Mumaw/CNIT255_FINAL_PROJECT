<%@ Page Title="" Language="C#" MasterPageFile="~/ShoppingMaster.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="ShoppingPages_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:PotteryConnectionString %>' SelectCommand="SELECT [Name], [ShortDescription], [ImageFile], [UnitPrice] FROM [Products]"></asp:SqlDataSource>

    <asp:ListView ID="productList"  runat="server"  DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <table>
                <tr><td><img src="<%#Eval("ImageFile") %>"</td></tr>
                <tr><td><h1><%#Eval("Name") %></h1></td></tr>
                <tr><td><p><%#Eval("ShortDescription") %></p></td></tr>
            </table>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>

