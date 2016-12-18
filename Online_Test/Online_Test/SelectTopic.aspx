<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="SelectTopic.aspx.cs" Inherits="Online_Test.SolveTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">

        $(document).ready(function () {
            var ad = '<%= Session["ad"] %>';
            console.log(ad);
            if (ad != undefined) {


                $('#giris_btn').html(ad);
                $('#giris_btn').attr({ 'href': "./User.aspx" });
                $('#kayit_btn').html("Çıkış Yap");
                $('#kayit_btn').attr({ 'href': "./LogOut.aspx" });
            }

        });


    </script>
    <div class="container" style="max-width: 900px;">
        <div class="row" style="text-align: center">
            <h3>
                <label>Konu seç</label></h3>
        </div>

        <!-- Konu Seç  -->
        <div class="row">
            <div class="col-md-4" style="text-align: center;">
                <h4>
                    <label>Konu : </label>
                </h4>
            </div>
            <div class="col-md-4">
                <div class="input-group">
                    <asp:DropDownList ID="ddl_konu" runat="server" Width="162px" AutoPostBack="True" OnSelectedIndexChanged="ddl_konu_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-md-4">
            </div>
        </div>

        <!-- Test Seç  -->
        <div class="row">
            <div class="col-md-4" style="text-align: center;">
                <h4>
                    <label>Test : </label>
                </h4>
            </div>
            <div class="col-md-4">
                <div class="input-group">
                    <asp:DropDownList ID="dll_test_sec" runat="server" Width="162px" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-md-4">
            </div>
        </div>
        <!-- Buton -->
        <div class="row">
            <div class="col-md-4" style="text-align: center;">
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Button ID="btn_konu_sec" runat="server" Text="Teste Başla" CssClass="btn btn-warning" OnClick="btn_konu_sec_Click" />
                </div>
            </div>
            <div class="col-md-4">
                <asp:Label ID="lbl_uyari" runat="server"></asp:Label>

            </div>
        </div>

        <!-- Hata Kısmı  -->
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="form-group" style="color: red; text-align: center;">
                    <h4>
                        <label>
                            <asp:Label ID="lbl_hata" runat="server"></asp:Label>
                        </label>
                    </h4>
                </div>
            </div>
            <div class="col-md-4"></div>
        </div>


    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
