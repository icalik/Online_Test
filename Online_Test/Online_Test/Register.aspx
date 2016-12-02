<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Online_Test.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-align: center;
        }
        
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            text-align: left;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <span class="auto-style2">Uye Ol</span><br />
        <table>
            <tr>
                <td>Adiniz</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_ad" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>Soyadiniz</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_soyad" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>Mail Adresiniz</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_mail" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>Parola</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_parola1" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
             <tr>
                <td>Parola Yeniden</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_parola2" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>Profil Fotografi</td>
                <td class="auto-style3">
                    <asp:FileUpload ID="FileUpload1" runat="server" style="margin-right: 33px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lbl_hata" runat="server"></asp:Label>
                 </td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btn_uyeol" runat="server" Height="52px" Text="Uye Ol" Width="133px" OnClick="btn_uyeol_Click" />
                 </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
