<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quiz20210511.aspx.cs" Inherits="Quiz.Quiz20210511" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="tb_ID" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="tb_Name" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
           
        </div>
    </form>
</body>
</html>
