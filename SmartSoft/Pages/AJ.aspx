﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AJ.aspx.cs" Inherits="SmartSoft.Pages.AJ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label1" runat="server" Text="Panel Created"></asp:Label>
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
