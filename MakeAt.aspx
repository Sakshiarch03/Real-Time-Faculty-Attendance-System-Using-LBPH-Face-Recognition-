<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="MakeAt.aspx.cs" Inherits="WebFaceAttendence.MakeAt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td>
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </td>
            <td>Select Room</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="RoomId" DataValueField="Id" Height="25px" Width="105px"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FaceAttendenceConnectionString %>" SelectCommand="SELECT * FROM [RoomTable]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Select Period</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="37px" Width="90px">
                    <asp:ListItem>P1</asp:ListItem>
                    <asp:ListItem>P2</asp:ListItem>
                    <asp:ListItem>P3</asp:ListItem>
                    <asp:ListItem>P4</asp:ListItem>
                    <asp:ListItem>P5</asp:ListItem>
                    <asp:ListItem>P6</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Timer1_Tick" Enabled="False"></asp:Timer>
            <br />
            <div style="text-align: center">
                <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                    <br/><br/>
                <asp:Image ID="Image1" runat="server" Height="200px" Width="300px" />
                <br />
                <br />
                <br />
                <asp:Image ID="Image2" runat="server" Height="500px" Width="700px" />
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
