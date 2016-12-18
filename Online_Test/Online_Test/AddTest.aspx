<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="AddTest.aspx.cs" Inherits="Online_Test.AddTest" %>

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
                <label>Test Ekle</label></h3>
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
                    <asp:DropDownList ID="ddl_konu" runat="server" Width="162px">
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-md-4">
            </div>
        </div>


        <!-- Test ekle  -->
        <div class="row">
            <div class="col-md-4" style="text-align: center;">
                <h4>
                    <label>Testin ismini giriniz : </label>
                </h4>
            </div>
            <div class="col-md-4">
                <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-user"></span>
                    </span>
                    <asp:TextBox ID="txt_test_adi" runat="server" CssClass="form-control" aria-describedby="sizing-addon2"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <h5>
                    <label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_test_adi" ErrorMessage="Lütfen test adı giriniz!" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </label>
                </h5>
            </div>
        </div>

        <!-- Soru Sayısı Seç  -->
        <div class="row">
            <div class="col-md-4" style="text-align: center;">
                <h4>
                    <label>Soru Sayısı Seçin : </label>
                </h4>
            </div>
            <div class="col-md-4">
                <div class="input-group">
                    <asp:DropDownList ID="ddl_soru_sayisi" runat="server" Width="162px">
                        <asp:ListItem Value="2"></asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                        <asp:ListItem Value="10"></asp:ListItem>
                        <asp:ListItem Value="15"></asp:ListItem>
                        <asp:ListItem Value="20"></asp:ListItem>
                    </asp:DropDownList>

                </div>
            </div>
            <div class="col-md-4">
            </div>
        </div>


        <!-- Süre Seç  -->
        <div class="row">
            <div class="col-md-4" style="text-align: center;">
                <h4>
                    <label>Test süresini belirleyin : </label>
                </h4>
            </div>
            <div class="col-md-4">
                <div class="input-group">
                    <asp:DropDownList ID="ddl_sure" runat="server" Width="162px">
                        <asp:ListItem Value="5">5 dk</asp:ListItem>
                        <asp:ListItem Value="10">10 dk</asp:ListItem>
                        <asp:ListItem Value="15">15 dk</asp:ListItem>
                        <asp:ListItem Value="20">20 dk</asp:ListItem>
                        <asp:ListItem Value="25">25 dk</asp:ListItem>
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
                    <asp:Button ID="btn_test_ekle" runat="server" OnClick="btn_test_ekle_Click" Text="Soruları Eklemeye Başla" CssClass="btn btn-warning" />
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
