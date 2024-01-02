<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Schedu.aspx.cs" Inherits="Schedu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 845px;
            height: 127px;
            position: absolute;
            top: 490px;
            left: 371px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 434px;
            left: 1087px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style12" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="trade" HeaderText="trade" SortExpression="trade" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="clgno" HeaderText="clgno" SortExpression="clgno" />
            <asp:BoundField DataField="batchno" HeaderText="batchno" SortExpression="batchno" />
            <asp:BoundField DataField="sdate" HeaderText="sdate" SortExpression="sdate" />
            <asp:BoundField DataField="vdate" HeaderText="vdate" SortExpression="vdate" />
            <asp:BoundField DataField="vtime" HeaderText="vtime" SortExpression="vtime" />
            <asp:BoundField DataField="ctrade" HeaderText="ctrade" SortExpression="ctrade" />
            <asp:BoundField DataField="bookingid" HeaderText="bookingid" SortExpression="bookingid" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:Button ID="Button1" runat="server" BackColor="#003399" CssClass="auto-style13" ForeColor="White" OnClick="Button1_Click" Text="Home" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection2 %>" SelectCommand="SELECT * FROM [schedule]"></asp:SqlDataSource>
</asp:Content>

