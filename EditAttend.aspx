<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditAttend.aspx.cs" Inherits="WebFaceAttendence.EditAttend" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Edit Attendance</h1>
            <br />
            <a href="MakeAt.aspx">Back</a>
            <hr />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="P1" HeaderText="P1" SortExpression="P1" />
                    <asp:BoundField DataField="P2" HeaderText="P2" SortExpression="P2" />
                    <asp:BoundField DataField="P3" HeaderText="P3" SortExpression="P3" />
                    <asp:BoundField DataField="P4" HeaderText="P4" SortExpression="P4" />
                    <asp:BoundField DataField="P5" HeaderText="P5" SortExpression="P5" />
                    <asp:BoundField DataField="P6" HeaderText="P6" SortExpression="P6" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:FaceAttendenceConnectionString %>" DeleteCommand="DELETE FROM [ATable] WHERE [Id] = @original_Id AND (([P1] = @original_P1) OR ([P1] IS NULL AND @original_P1 IS NULL)) AND (([P2] = @original_P2) OR ([P2] IS NULL AND @original_P2 IS NULL)) AND (([P3] = @original_P3) OR ([P3] IS NULL AND @original_P3 IS NULL)) AND (([P4] = @original_P4) OR ([P4] IS NULL AND @original_P4 IS NULL)) AND (([P5] = @original_P5) OR ([P5] IS NULL AND @original_P5 IS NULL)) AND (([P6] = @original_P6) OR ([P6] IS NULL AND @original_P6 IS NULL))" InsertCommand="INSERT INTO [ATable] ([P1], [P2], [P3], [P4], [P5], [P6]) VALUES (@P1, @P2, @P3, @P4, @P5, @P6)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ATable]" UpdateCommand="UPDATE [ATable] SET [P1] = @P1, [P2] = @P2, [P3] = @P3, [P4] = @P4, [P5] = @P5, [P6] = @P6 WHERE [Id] = @original_Id AND (([P1] = @original_P1) OR ([P1] IS NULL AND @original_P1 IS NULL)) AND (([P2] = @original_P2) OR ([P2] IS NULL AND @original_P2 IS NULL)) AND (([P3] = @original_P3) OR ([P3] IS NULL AND @original_P3 IS NULL)) AND (([P4] = @original_P4) OR ([P4] IS NULL AND @original_P4 IS NULL)) AND (([P5] = @original_P5) OR ([P5] IS NULL AND @original_P5 IS NULL)) AND (([P6] = @original_P6) OR ([P6] IS NULL AND @original_P6 IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_P1" Type="Int32" />
                    <asp:Parameter Name="original_P2" Type="Int32" />
                    <asp:Parameter Name="original_P3" Type="Int32" />
                    <asp:Parameter Name="original_P4" Type="Int32" />
                    <asp:Parameter Name="original_P5" Type="Int32" />
                    <asp:Parameter Name="original_P6" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="P1" Type="Int32" />
                    <asp:Parameter Name="P2" Type="Int32" />
                    <asp:Parameter Name="P3" Type="Int32" />
                    <asp:Parameter Name="P4" Type="Int32" />
                    <asp:Parameter Name="P5" Type="Int32" />
                    <asp:Parameter Name="P6" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="P1" Type="Int32" />
                    <asp:Parameter Name="P2" Type="Int32" />
                    <asp:Parameter Name="P3" Type="Int32" />
                    <asp:Parameter Name="P4" Type="Int32" />
                    <asp:Parameter Name="P5" Type="Int32" />
                    <asp:Parameter Name="P6" Type="Int32" />
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_P1" Type="Int32" />
                    <asp:Parameter Name="original_P2" Type="Int32" />
                    <asp:Parameter Name="original_P3" Type="Int32" />
                    <asp:Parameter Name="original_P4" Type="Int32" />
                    <asp:Parameter Name="original_P5" Type="Int32" />
                    <asp:Parameter Name="original_P6" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
