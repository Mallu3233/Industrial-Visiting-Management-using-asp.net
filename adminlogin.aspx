﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>








<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 387px; width: 832px; margin-left: 3px; background-image: url('../img/ADMIN.jpg');" 
        align="center">
<form id="form1">
<br /><br /><br /><br /><br /><br /><br /><br />
    <br />
&nbsp;&nbsp;
    <br />
    <br /><br />

    <div >
       <div style="width: 639px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" 
               Text="Admin id" Font-Bold="True" ForeColor="#003399"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="uid" runat="server" Width="209px" BorderColor="#003366" 
               BorderStyle="Solid" BorderWidth="1px" ></asp:TextBox>
       </div>
    <div style="width: 636px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" 
            Text="Password" Font-Bold="True" ForeColor="#003399"></asp:Label>&nbsp; &nbsp;
        <asp:TextBox ID="upass" runat="server" Width="209px" TextMode="Password" 
            BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px" ></asp:TextBox>
       </div>
    <div  style="width: 

634px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Login" BackColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" 
            onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Reset" BackColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" 
            onclick="Button2_Click" Height="24px" Width="51px" />
        <asp:Button ID="Button3" runat="server" BackColor="#003366" BorderStyle="Solid" 
            BorderWidth="1px" Font-Bold="True" ForeColor="White" Text="Back" 
            onclick="Button3_Click" PostBackUrl="~/home.aspx" />

        <div 

>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" 
                Text="user id or password is wrong" Visible="False" Font-Bold="True" 
                ForeColor="#CC0000" BackColor="White"></asp:Label></div>
       </div>
    </div>
    </form>
</div>


</asp:Content>

