<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Online_Test.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lbl_id" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="lbl_ad" runat="server" Text="Label"></asp:Label>
    <script type="text/javascript">

        $(document).ready(function () {

            $('#giris_btn').html("KULLANICI");
            $('#giris_btn').attr({ 'href': "./Default.aspx" });
            $('#kayit_btn').html("Çıkış Yap");
            $('#kayit_btn').attr({'href' : "./LogOut.aspx"});
        });

    </script>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


</asp:Content>
