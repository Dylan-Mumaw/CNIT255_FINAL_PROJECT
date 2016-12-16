<%@ Page Title="" Language="C#" MasterPageFile="~/ShoppingMaster.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" StylesheetTheme="ShopTheme" Inherits="ShoppingPages_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" >
        <Services>
            <asp:ServiceReference Path="C:\Users\Dylan\Documents\Visual Studio 2012\Projects\localhost_59400\packages\AjaxControlToolkit.16.1.1.0" />
        </Services>
    </asp:ScriptManager>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:PotteryConnectionString %>' SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
    <p><b>Select Your Product(s):</b></p>
    <asp:DropDownList  OnSelectedIndexChanged="ddlProductSelect_SelectedIndexChanged" ID="ddlProductSelect" AutoPostBack="true" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="ProductID"></asp:DropDownList>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <asp:Image runat="server" ID="productIMG" CssClass="img"></asp:Image>
        </ContentTemplate>
    </asp:UpdatePanel>
        <br />
        <br />
       <asp:Label ID="selectionLabel" runat="server" Text="Item:" style="font-weight: 700" Font-Size="XX-Large"></asp:Label>
        <br />
        <br />
        <br />
       <asp:Label ID="descriptionLabel" runat="server" Text="Product Description:" Font-Size="X-Large" ></asp:Label>
        <br />
        <br />
       <asp:Label ID="priceLabel" runat="server" Text="Cost:" style="font-weight: 700"></asp:Label>
        <br />
        <br />
       <asp:Label ID="quantityLabel" runat="server" Text="Quantity: " ></asp:Label>
       <asp:TextBox ID="quantityTextBox" Text = "0" runat="server"></asp:TextBox>
       <asp:RangeValidator ID = "quantityValidation" runat="server" ErrorMessage="A quantity of at least 1 is required."
            ControlToValidate ="quantityTextBox" type="double" 
            MinimumValue="1" MaximumValue="1000">
       </asp:RangeValidator>
        <br />
        <br />
    <asp:UpdatePanel  ID="UpdatePanel2" runat="server">
        <ContentTemplate>
        <asp:Button ID="addButton"  runat="server" Text="Add to Cart" OnClick="addButton_Click" />
        </ContentTemplate>         
    </asp:UpdatePanel>
    
  </asp:Content>
