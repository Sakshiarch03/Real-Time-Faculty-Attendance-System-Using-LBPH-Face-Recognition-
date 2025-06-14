<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="WebFaceAttendence.Rooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Room Setting</h1>
    <hr />
    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:FaceAttendenceConnectionString %>" DeleteCommand="DELETE FROM [RoomTable] WHERE [Id] = @original_Id AND (([RoomId] = @original_RoomId) OR ([RoomId] IS NULL AND @original_RoomId IS NULL))" InsertCommand="INSERT INTO [RoomTable] ([RoomId]) VALUES (@RoomId)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:FaceAttendenceConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [RoomTable]" UpdateCommand="UPDATE [RoomTable] SET [RoomId] = @RoomId WHERE [Id] = @original_Id AND (([RoomId] = @original_RoomId) OR ([RoomId] IS NULL AND @original_RoomId IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_RoomId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RoomName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RoomId" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_RoomId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="100%" Width="100%" AutoGenerateRows="False" DataKeyNames="Id">
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="RoomId" HeaderText="Room Name" SortExpression="RoomId" />
            <asp:CommandField ButtonType="Button" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:DetailsView>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="100%" Width="100%">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="RoomId" HeaderText="RoomName" SortExpression="RoomId" />
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
</div>
</asp:Content>

