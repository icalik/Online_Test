<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="AddQuestion.aspx.cs" Inherits="Online_Test.AddQuestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="max-width: 900px;">
        <asp:Label ID="lbl_icerik" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="lbl_sayac" runat="server" Text="Label"></asp:Label>
    </div>
   
    <div class="container">
        <asp:TextBox ID="txt_soru" runat="server"></asp:TextBox>

        <br />

        <asp:Label ID="lbl_soru_hata" runat="server" Text="Label"></asp:Label>
    </div>


    <asp:Button ID="btn_gonder" runat="server" Text="Gonder" OnClick="btn_gonder_Click" />


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
