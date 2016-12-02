﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Test.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            text-align: left;
            width: 157px;
        }
        .auto-style6 {
            text-align: right;
            width: 157px;
        }
        .auto-style7 {
            text-align: left;
            width: 195px;
        }
        .auto-style8 {
            width: 195px;
            text-align: left;
        }
        .auto-style9 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style3">
    
        <strong><span class="auto-style2">Üye Girişi</span></strong><table class="auto-style4">
            <tr>
                <td class="auto-style6">Kullanıcı adı</td>
                <strong>
                <td class="auto-style7">
                    <asp:TextBox ID="txt_kuladi" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_kuladi" ErrorMessage="Lütfen Kullanıcı adını giriniz" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Parola</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt_parola" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_parola" ErrorMessage="Lütfen parolanızı girin" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="btn_girisyap" runat="server" style="text-align: left" Text="Giriş Yap" Width="139px" />
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
        </table>
        </strong>
        <br />
    
    </div>
    </form>
</body>
</html>
