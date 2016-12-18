<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Testing.aspx.cs" Inherits="Online_Test.Testing" %>

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
        <!-- başlık -->
        <div class="row">
            <h3>
                <label>
                    <asp:Label ID="lbl_test_adi" runat="server" Text=""></asp:Label>
                </label>
            </h3>
        </div>

    </div>

    <div class="container" style="max-width: 900px; padding-top: 30px;">
        <!-- başlık -->
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-3" style="text-align: center">
                <h3>
                    <label>
                        <center><asp:Label ID="lbl_baslik" runat="server" Text=""></asp:Label></center>
                        <br />
                        <asp:Label ID="lbl_deneme" runat="server" Text=""></asp:Label>
                    </label>
                </h3>
            </div>
            <div class="col-md-3"></div>
        </div>

        <!-- Soru  -->
        <div class="row">
            <div class="col-md-3" style="text-align: right;">
                <h4>
                    <label>Soru : </label>
                </h4>
            </div>
            <div class="col-md-6">
                <asp:Label ID="lbl_soru" runat="server" Text=""></asp:Label>
            </div>
            <div class="col-md-3">
            </div>
        </div>

        <!-- cevap 1 -->
        <div class="row">
            <div class="col-md-3">
            </div>
            <div class="col-md-6" style="text-align: left;">
                <asp:RadioButtonList ID="rb_cevaplar" runat="server"></asp:RadioButtonList>
            </div>
            <div class="col-md-3">
            </div>
        </div>


        <!-- Buton -->
        <div class="row">
            <div class="col-md-3" style="text-align: right;">
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <center>
                          <br />
                       <asp:Button ID="btn_gonder" runat="server"  Text="Gönder"   CssClass="btn btn-warning" OnClick="btn_gonder_Click" />
                       </center>
                </div>
            </div>
            <div class="col-md-3"></div>
        </div>

        <!-- Hata Kısmı  -->
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="form-group" style="color: red; text-align: center;">
                    <h4>
                        <label>
                            <asp:Label ID="lbl_hata" runat="server"></asp:Label>
                        </label>
                    </h4>
                </div>
            </div>
            <div class="col-md-3"></div>
        </div>

    </div>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
