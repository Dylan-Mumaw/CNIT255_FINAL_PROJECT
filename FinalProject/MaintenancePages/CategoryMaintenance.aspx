<%@ Page Title="" Language="C#" MasterPageFile="~/MaintenanceMaster.master" AutoEventWireup="true" CodeFile="CategoryMaintenance.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="bannerPlaceHolder" runat="server">
    <h1>Category Maintenance</h1>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PotteryConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CategoryID" DataSourceID="SqlDataSource1" Width="306px">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" InsertVisible="False" ReadOnly="True" SortExpression="CategoryID" />
            <asp:BoundField DataField="ShortName" HeaderText="ShortName" SortExpression="ShortName" />
            <asp:BoundField DataField="LongName" HeaderText="LongName" SortExpression="LongName" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PotteryConnectionString %>" DeleteCommand="DELETE FROM [Categories] WHERE [CategoryID] = @original_CategoryID AND (([ShortName] = @original_ShortName) OR ([ShortName] IS NULL AND @original_ShortName IS NULL)) AND (([LongName] = @original_LongName) OR ([LongName] IS NULL AND @original_LongName IS NULL))" InsertCommand="INSERT INTO [Categories] ([ShortName], [LongName]) VALUES (@ShortName, @LongName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Categories] WHERE ([CategoryID] = @CategoryID)" UpdateCommand="UPDATE [Categories] SET [ShortName] = @ShortName, [LongName] = @LongName WHERE [CategoryID] = @original_CategoryID AND (([ShortName] = @original_ShortName) OR ([ShortName] IS NULL AND @original_ShortName IS NULL)) AND (([LongName] = @original_LongName) OR ([LongName] IS NULL AND @original_LongName IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_CategoryID" Type="Int32" />
            <asp:Parameter Name="original_ShortName" Type="String" />
            <asp:Parameter Name="original_LongName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ShortName" Type="String" />
            <asp:Parameter Name="LongName" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="CategoryID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ShortName" Type="String" />
            <asp:Parameter Name="LongName" Type="String" />
            <asp:Parameter Name="original_CategoryID" Type="Int32" />
            <asp:Parameter Name="original_ShortName" Type="String" />
            <asp:Parameter Name="original_LongName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateRows="False" DataKeyNames="CategoryID" DataSourceID="SqlDataSource2">
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" InsertVisible="False" ReadOnly="True" SortExpression="CategoryID" />
            <asp:BoundField DataField="ShortName" HeaderText="ShortName" SortExpression="ShortName" />
            <asp:BoundField DataField="LongName" HeaderText="LongName" SortExpression="LongName" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:DetailsView>
</asp:Content>

