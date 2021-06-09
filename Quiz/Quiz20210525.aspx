Skip to content
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 
@ruying00 
AMDxYES
/
Quiz
forked from altoliaw3/Quiz
0
0
24
Code
Pull requests
Actions
Projects
Wiki
Security
Insights
Quiz/Quiz/Quiz20210525.aspx
@guancheng-chiou
guancheng-chiou 計算每人總分
Latest commit 1404e49 15 days ago
 History
 1 contributor
45 lines (43 sloc)  2.52 KB
  
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quiz20210525.aspx.cs" Inherits="Quiz.Quiz20210525" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="sqs1" runat="server" ConnectionString="<%$ ConnectionStrings:SQLDataSourceCom %>" DeleteCommand="DELETE FROM [Stu] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Stu] ([Name], [Chi], [Math], [Eng]) VALUES (@Name, @Chi, @Math, @Eng)" SelectCommand="SELECT * FROM [Stu]" UpdateCommand="UPDATE [Stu] SET [Name] = @Name, [Chi] = @Chi, [Math] = @Math, [Eng] = @Eng WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Chi" Type="Int32" />
                    <asp:Parameter Name="Math" Type="Int32" />
                    <asp:Parameter Name="Eng" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Chi" Type="Int32" />
                    <asp:Parameter Name="Math" Type="Int32" />
                    <asp:Parameter Name="Eng" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="gv_data" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sqs1" OnRowCommand="gv_data_RowCommand">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Chi" HeaderText="Chi" SortExpression="Chi" />
                    <asp:BoundField DataField="Math" HeaderText="Math" SortExpression="Math" />
                    <asp:BoundField DataField="Eng" HeaderText="Eng" SortExpression="Eng" />
                    <asp:ButtonField ButtonType="Button" CommandName="calc" Text="Submit" />
                </Columns>
            </asp:GridView>
            <asp:Label ID="lb_Show" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
© 2021 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
Loading complete