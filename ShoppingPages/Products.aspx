<%@ Page Title="" Language="C#" MasterPageFile="~/ShoppingMaster.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="ShoppingPages_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:PotteryConnectionString %>' SelectCommand="SELECT [Name], [ShortDescription], [ImageFile], [UnitPrice] FROM [Products]"></asp:SqlDataSource>

    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3" OnSelectedIndexChanged="ListView1_SelectedIndexChanged" >

        <AlternatingItemTemplate>
            <td runat="server" style="">
                <asp:HyperLink NavigateUrl="~/ShoppingPages/addProduct.aspx"  Text='<%# Eval("Name") %>' runat="server" ID="NameLabel" /><br />
                <asp:Label Text='<%# Eval("ShortDescription") %>' runat="server" ID="ShortDescriptionLabel" /><br />
                ImageFile:
                <asp:Label Text='<%# Eval("ImageFile") %>' runat="server" ID="ImageFileLabel" /><br />
                <asp:Label Text='<%# Eval("UnitPrice") %>' runat="server" ID="UnitPriceLabel" /><br />
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="">Name:
                <asp:TextBox Text='<%# Bind("Name") %>' runat="server" ID="NameTextBox" /><br />
                ShortDescription:
                <asp:TextBox Text='<%# Bind("ShortDescription") %>' runat="server" ID="ShortDescriptionTextBox" /><br />
                ImageFile:
                <asp:TextBox Text='<%# Bind("ImageFile") %>' runat="server" ID="ImageFileTextBox" /><br />
                UnitPrice:
                <asp:TextBox Text='<%# Bind("UnitPrice") %>' runat="server" ID="UnitPriceTextBox" /><br />
                <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" /><br />
                <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" /><br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr runat="server" id="itemPlaceholderContainer">
                <td runat="server" id="itemPlaceholder"></td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">Name:
                <asp:TextBox Text='<%# Bind("Name") %>' runat="server" ID="NameTextBox" /><br />
                ShortDescription:
                <asp:TextBox Text='<%# Bind("ShortDescription") %>' runat="server" ID="ShortDescriptionTextBox" /><br />
                ImageFile:
                <asp:TextBox Text='<%# Bind("ImageFile") %>' runat="server" ID="ImageFileTextBox" /><br />
                UnitPrice:
                <asp:TextBox Text='<%# Bind("UnitPrice") %>' runat="server" ID="UnitPriceTextBox" /><br />
                <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" /><br />
                <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" /><br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="" visible="True">
                <asp:HyperLink NavigateUrl="~/ShoppingPages/addProduct.aspx" Text='<%# Eval("Name") %>' runat="server" ID="NameLabel" /><br />
                <asp:Label Text='<%# Eval("ShortDescription") %>' runat="server" ID="ShortDescriptionLabel" /><br />
                ImageFile:
                <asp:Label Text='<%# Eval("ImageFile") %>' runat="server" ID="ImageFileLabel" /><br />
                <asp:Label Text='<%# Eval("UnitPrice") %>' runat="server" ID="UnitPriceLabel" /><br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="groupPlaceholderContainer" style="" border="0">
                            <tr runat="server" id="groupPlaceholder"></tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager runat="server" PageSize="12" ID="DataPager2">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                                <asp:NumericPagerField></asp:NumericPagerField>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="">
                <asp:HyperLink Text='<%# Eval("Name") %>' runat="server" ID="NameLabel" /><br />
                <asp:Label Text='<%# Eval("ShortDescription") %>' runat="server" ID="ShortDescriptionLabel" /><br />
                ImageFile:
                <asp:Label Text='<%# Eval("ImageFile") %>' runat="server" ID="ImageFileLabel" /><br />
                <asp:Label Text='<%# Eval("UnitPrice") %>' runat="server" ID="UnitPriceLabel" /><br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
  </asp:Content>
