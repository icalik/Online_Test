<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Online_Test.User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <asp:Image ID="pf" runat="server" ImageUrl="~/fotograf/profilfoto.jpg" Width ="100" Height="100" />
    
    <asp:Label ID="lbl_ad" runat="server" Text="Label"></asp:Label>
    
   
        
            
        
    




    <script type="text/javascript">

        $(document).ready(function () {

            $('#giris_btn').html("KULLANICI");
            $('#giris_btn').attr({ 'href': "./Default.aspx" });
            $('#kayit_btn').html("Çıkış Yap");
            $('#kayit_btn').attr({ 'href': "./LogOut.aspx" });
        });


    </script>



    <div class="container">
        <asp:Button ID="btn_profil_duzenle" runat="server" OnClick="btn_profil_duzenle_Click" Text="Profil Düzenle" />
        <asp:Button ID="btn_konu_ekle" runat="server" OnClick="btn_konu_ekle_Click" Text="Konu Ekle" />
        <asp:Button ID="btn_test_ekle" runat="server" OnClick="btn_test_ekle_Click" Text="Test Ekle" />



        <asp:Button ID="btn_solve_test" runat="server" OnClick="btn_solve_test_Click" Text="Test Çöz" />



        <asp:Button ID="btn_Istatistikler" runat="server" OnClick="btn_Istatistikler_Click" Text="Istatistikler" />



    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
