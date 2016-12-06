<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Online_Test.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    




    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-align: center;
            position:center;
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
    <button type="button" class="btn btn-danger">Danger</button>
        <span class="auto-style2">Uye Ol</span><br />
        <table>
            <tr>
                <td>Adiniz</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_ad" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_ad" ErrorMessage="Lütfen adınızı eksiksiz giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Soyadiniz</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_soyad" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_soyad" ErrorMessage="Lütfen soyadınızı eksiksiz giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Mail Adresiniz</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_mail" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_mail" ErrorMessage="Lütfen mail adresinizi eksiksiz giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_mail" ErrorMessage="Mail uygun formatta değil." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Parola</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_parola1" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_parola1" ErrorMessage="Lütfen parola giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_parola2" ControlToValidate="txt_parola1" ErrorMessage="Parolalar Uyuşmuyor." ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
             <tr>
                <td>Parola Yeniden</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_parola2" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_parola2" ErrorMessage="Lütfen parola giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            </tr>
            <tr>
                <td>Profil Fotografi</td>
                <td class="auto-style3">
                    <asp:FileUpload ID="fu_kayit" runat="server" style="margin-right: 33px" />
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
