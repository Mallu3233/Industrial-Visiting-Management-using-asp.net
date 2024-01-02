<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admindetail.aspx.cs" Inherits="admindetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="USER_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="USER_ID" HeaderText="USER_ID" ReadOnly="True" SortExpression="USER_ID" />
                <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" SortExpression="PASSWORD" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection2 %>" DeleteCommand="DELETE FROM [ADMIN] WHERE [USER_ID] = @USER_ID" InsertCommand="INSERT INTO [ADMIN] ([USER_ID], [PASSWORD]) VALUES (@USER_ID, @PASSWORD)" SelectCommand="SELECT * FROM [ADMIN]" UpdateCommand="UPDATE [ADMIN] SET [PASSWORD] = @PASSWORD WHERE [USER_ID] = @USER_ID">
            <DeleteParameters>
                <asp:Parameter Name="USER_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="USER_ID" Type="String" />
                <asp:Parameter Name="PASSWORD" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PASSWORD" Type="String" />
                <asp:Parameter Name="USER_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
