<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="attendance.aspx.cs" Inherits="WebFaceAttendence.attendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            <h1>Attendance</h1>
            <hr />
            <br />
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            <br />
            <asp:Table ID="Table1" runat="server" GridLines="Both" Height="46px" Width="100%">
                <asp:TableRow runat="server" Font-Bold="True" Font-Size="Large">
                    <asp:TableCell runat="server">Day /Time</asp:TableCell>
                    <asp:TableCell runat="server">09:30-10:30</asp:TableCell>
                    <asp:TableCell runat="server">10:30-11:30</asp:TableCell>
                    <asp:TableCell runat="server">11:30-12:30</asp:TableCell>
                    <asp:TableCell runat="server">12:30-01:30</asp:TableCell>
                    <asp:TableCell runat="server">01:30-02:30</asp:TableCell>
                    <asp:TableCell runat="server">02:30-03:30</asp:TableCell>
                    <asp:TableCell runat="server">03:30-04:30</asp:TableCell>
                </asp:TableRow>
            </asp:Table>

        </div>
        <br />
        
    
    </form>
</body>
</html>
