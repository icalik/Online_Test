<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="AddQuestion.aspx.cs" Inherits="Online_Test.AddQuestion" %>

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
                    </label>
                </h3>
            </div>
            <div class="col-md-3"></div>
        </div>

        <!-- Soru  -->
        <div class="row">
            <div class="col-md-3" style="text-align: right;">
                <h4>
                    <label>Soru :</label>
                </h4>
            </div>
            <div class="col-md-6">
                <div class="input-group">
                    <span class="input-group-addon" id="sizing-addon2">
                        <div class="glyphicon glyphicon-question-sign"></div>
                    </span>
                    <asp:TextBox ID="txt_soru" runat="server" CssClass="form-control" aria-describedby="sizing-addon2"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-3">
                <h5>
                    <label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_soru" ErrorMessage="Lütfen soruyu eksiksiz giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                    </label>
                </h5>
            </div>
        </div>

        <!-- dogru cevap  -->
        <div class="row">
            <div class="col-md-3" style="text-align: right;">
                <h4>
                    <label>Dogru Cevap :</label>
                </h4>
            </div>
            <div class="col-md-6">
                <div class="input-group">
                    <span class="input-group-addon" id="sizing-addon2">
                        <div class="glyphicon glyphicon-ok"></div>
                    </span>
                    <asp:TextBox ID="txt_dogru" runat="server" CssClass="form-control" aria-describedby="sizing-addon2"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-3">
                <h5>
                    <label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_dogru" ErrorMessage="Lütfen doğru cevabı eksiksiz giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                    </label>
                </h5>
            </div>
        </div>
        <!-- cevap 2  -->
        <div class="row">
            <div class="col-md-3" style="text-align: right;">
                <h4>
                    <label>Cevap 2 :</label>
                </h4>
            </div>
            <div class="col-md-6">
                <div class="input-group">
                    <span class="input-group-addon" id="sizing-addon2">
                        <div class="glyphicon glyphicon-arrow-right"></div>
                    </span>
                    <asp:TextBox ID="txt_cevap2" runat="server" CssClass="form-control" aria-describedby="sizing-addon2"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-3">
                <h5>
                    <label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_cevap2" ErrorMessage="Lütfen cevap2' yi eksiksiz giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                    </label>
                </h5>
            </div>
        </div>
        <!-- cevap 3  -->
        <div class="row">
            <div class="col-md-3" style="text-align: right;">
                <h4>
                    <label>Cevap 3 :</label>
                </h4>
            </div>
            <div class="col-md-6">
                <div class="input-group">
                    <span class="input-group-addon" id="sizing-addon2">
                        <div class="glyphicon glyphicon-arrow-right"></div>
                    </span>
                    <asp:TextBox ID="txt_cevap3" runat="server" CssClass="form-control" aria-describedby="sizing-addon2"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-3">
                <h5>
                    <label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_cevap3" ErrorMessage="Lütfen cevap3' ü eksiksiz giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                    </label>
                </h5>
            </div>
        </div>

        <!-- Cevap 4  -->
        <div class="row">
            <div class="col-md-3" style="text-align: right;">
                <h4>
                    <label>Cevap 4 :</label>
                </h4>
            </div>
            <div class="col-md-6">
                <div class="input-group">
                    <span class="input-group-addon" id="sizing-addon2">
                        <div class="glyphicon glyphicon-arrow-right"></div>
                    </span>
                    <asp:TextBox ID="txt_cevap4" runat="server" CssClass="form-control" aria-describedby="sizing-addon2"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-3">
                <h5>
                    <label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_cevap4" ErrorMessage="Lütfen cevap 4' ü eksiksiz giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                    </label>
                </h5>
            </div>
        </div>


        <!-- Cevap 5  -->
        <div class="row">
            <div class="col-md-3" style="text-align: right;">
                <h4>
                    <label>Cevap 5 :</label>
                </h4>
            </div>
            <div class="col-md-6">
                <div class="input-group">
                    <span class="input-group-addon" id="sizing-addon2">
                        <div class="glyphicon glyphicon-arrow-right"></div>
                    </span>
                    <asp:TextBox ID="txt_cevap5" runat="server" CssClass="form-control" aria-describedby="sizing-addon2"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-3">
                <h5>
                    <label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_cevap5" ErrorMessage="Lütfen cevap 5' i eksiksiz giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                    </label>
                </h5>
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
