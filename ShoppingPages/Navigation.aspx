<%@ Page Title="" Language="C#" MasterPageFile="~/ShoppingMaster.master" AutoEventWireup="true" CodeFile="Navigation.aspx.cs" Inherits="ShoppingPages_Navigation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1"></asp:TreeView>
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
</asp:Content>

