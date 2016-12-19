<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Online_Test.User" %>

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

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>





    <script type="text/javascript">

        $(document).ready(function () {
            var ad = '<%= Session["ad"] %>';
            console.log(ad);
            if (ad != undefined) {


                $('#giris_btn').html(ad);
                $('#giris_btn').attr({ 'href': "./Default.aspx" });
                $('#kayit_btn').html("Çıkış Yap");
                $('#kayit_btn').attr({ 'href': "./LogOut.aspx" });
            }

        });


    </script>











    <style type="text/css">
        /* USER PROFILE PAGE */
        .card {
            margin-top: 20px;
            padding: 30px;
            background-color: rgba(214, 224, 226, 0.2);
            -webkit-border-top-left-radius: 5px;
            -moz-border-top-left-radius: 5px;
            border-top-left-radius: 5px;
            -webkit-border-top-right-radius: 5px;
            -moz-border-top-right-radius: 5px;
            border-top-right-radius: 5px;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

            .card.hovercard {
                position: relative;
                padding-top: 0;
                overflow: hidden;
                text-align: center;
                background-color: #fff;
                background-color: rgba(255, 255, 255, 1);
            }

                .card.hovercard .card-background {
                    height: 130px;
                }

        .card-background img {
            -webkit-filter: blur(25px);
            -moz-filter: blur(25px);
            -o-filter: blur(25px);
            -ms-filter: blur(25px);
            filter: blur(25px);
            margin-left: -100px;
            margin-top: -200px;
            min-width: 130%;
        }

        .card.hovercard .useravatar {
            position: absolute;
            top: 15px;
            left: 0;
            right: 0;
        }

            .card.hovercard .useravatar img {
                width: 100px;
                height: 100px;
                max-width: 100px;
                max-height: 100px;
                -webkit-border-radius: 50%;
                -moz-border-radius: 50%;
                border-radius: 50%;
                border: 5px solid rgba(255, 255, 255, 0.5);
            }

        .card.hovercard .card-info {
            position: absolute;
            bottom: 14px;
            left: 0;
            right: 0;
        }

            .card.hovercard .card-info .card-title {
                padding: 0 5px;
                font-size: 20px;
                line-height: 1;
                color: #262626;
                background-color: rgba(255, 255, 255, 0.1);
                -webkit-border-radius: 4px;
                -moz-border-radius: 4px;
                border-radius: 4px;
            }

        .card.hovercard .card-info {
            overflow: hidden;
            font-size: 12px;
            line-height: 20px;
            color: #737373;
            text-overflow: ellipsis;
        }

        .card.hovercard .bottom {
            padding: 0 20px;
            margin-bottom: 17px;
        }

        .btn-pref .btn {
            -webkit-border-radius: 0 !important;
        }
    </style>

    <script type="text/javascript">
        $(document).ready(function () {
            $(".btn-pref .btn").click(function () {
                $(".btn-pref .btn").removeClass("btn-primary").addClass("btn-default");
                // $(".tab").addClass("active"); // instead of this do the below 
                $(this).removeClass("btn-default").addClass("btn-primary");
            });
        });
    </script>

    <div class="col-lg-12 col-sm-12">
        <div class="card hovercard">
            <div class="card-background">


                <asp:Image ID="Image1" class="card-bkimg" runat="server" />
            </div>
            <div class="useravatar">
                <asp:Image ID="pf" runat="server" />
            </div>
            <div class="card-info">
                <span class="card-title">
                    <asp:Label ID="lbl_ad" runat="server" Text="Label"></asp:Label></span>

            </div>
        </div>
        <div class="btn-pref btn-group btn-group-justified btn-group-lg" role="group" aria-label="...">
            <div class="btn-group" role="group">
                <button type="button" id="stars" class="btn btn-primary" href="#tab1" data-toggle="tab">
                    <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                    <div class="hidden-xs">Test İşlemleri</div>
                </button>
            </div>
            <div class="btn-group" role="group">
                <button type="button" id="favorites" class="btn btn-default" href="#tab2" data-toggle="tab">

                    <span class="glyphicon glyphicon-stats" aria-hidden="true"></span>
                    <div class="hidden-xs">İstatistikler</div>
                </button>
            </div>
            <div class="btn-group" role="group">
                <button type="button" id="following" class="btn btn-default" href="#tab3" data-toggle="tab">
                    <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                    <div class="hidden-xs">Profil Düzenle</div>
                </button>
            </div>
        </div>

        <div class="well">
            <div class="tab-content">
                <div class="tab-pane fade in active" id="tab1">
                    <h3 style="text-align: center">Test İşlemleri</h3>
                    <br />
                    <br />
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-4" style="text-align: center">
                                <a href="AddTopic.aspx">
                                    <div class="btn btn-info" style="width: 200px; height: 50px; padding-top: 15px">Konu Ekle</div>
                                </a>

                            </div>
                            <div class="col-md-4" style="text-align: center">
                                <a href="AddTest.aspx">
                                    <div class="btn btn-warning" style="width: 200px; height: 50px; padding-top: 15px">Test Ekle</div>
                                </a>
                            </div>
                            <div class="col-md-4" style="text-align: center">
                                <a href="SelectTopic.aspx">
                                    <div class="btn btn-success" style="width: 200px; height: 50px; padding-top: 15px">Test Çöz</div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <br />
                    <br />
                    <br />
                </div>
                <div class="tab-pane fade in" id="tab2" style="text-align: center">
                    <h3 style="text-align: center">Istatistikler</h3>
                    <br />
                    <center>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="200px" Width="600px" AllowPaging="True">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="konu_adi" HeaderText="Konu Adı" SortExpression="konu_adi" />
                            <asp:BoundField DataField="test_adi" HeaderText="Test Adı" SortExpression="test_adi" />
                            <asp:BoundField DataField="soru_sayisi" HeaderText="Soru Sayısı" SortExpression="soru_sayisi" />
                            <asp:BoundField DataField="dogru_sayisi" HeaderText="Doğru Sayısı" ReadOnly="True" SortExpression="dogru_sayisi" />
                            <asp:BoundField DataField="puan" HeaderText="Puan" ReadOnly="True" SortExpression="puan" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                    </center>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online_TestConnectionString %>"></asp:SqlDataSource>

                </div>
                <div class="tab-pane fade in" id="tab3">


                    <div class="container" style="max-width: 900px;">
                        <div class="row" style="text-align: center">
                            <h3>
                                <label>Profil Düzenle</label></h3>
                        </div>
                        <!-- Ad  -->
                        <div class="row">
                            <div class="col-md-4" style="text-align: center;">
                                <h4>
                                    <label>Adınız :</label>
                                </h4>
                            </div>
                            <div class="col-md-4">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-user"></span>
                                    </span>
                                    <asp:TextBox ID="txt_ad" runat="server" CssClass="form-control" aria-describedby="sizing-addon2"></asp:TextBox>

                                </div>
                                <h5>
                                    <label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_ad" ErrorMessage="Lütfen adınızı eksiksiz giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <br />
                                    </label>
                                </h5>
                            </div>
                            <div class="col-md-4">
                            </div>
                        </div>

                        <!-- Soyad  -->
                        <div class="row">
                            <div class="col-md-4" style="text-align: center;">
                                <h4>
                                    <label>Soyadınız :</label>
                                </h4>
                            </div>
                            <div class="col-md-4">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-arrow-right"></span>
                                    </span>
                                    <asp:TextBox ID="txt_soyad" runat="server" CssClass="form-control" aria-describedby="sizing-addon2"></asp:TextBox>

                                </div>
                                <h5>
                                    <label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_soyad" ErrorMessage="Lütfen soyadınızı eksiksiz giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <br />
                                    </label>
                                </h5>

                            </div>
                            <div class="col-md-4">
                            </div>
                        </div>



                        <!-- Parola  -->
                        <div class="row">
                            <div class="col-md-4" style="text-align: center;">
                                <h4>
                                    <label>Parola oluşturun :</label>
                                </h4>
                            </div>
                            <div class="col-md-4">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-lock"></span>
                                    </span>
                                    <asp:TextBox ID="txt_parola1" runat="server" CssClass="form-control" aria-describedby="sizing-addon2" TextMode="Password"></asp:TextBox>

                                </div>
                                <h5>
                                    <label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_parola1" ErrorMessage="Lütfen parola giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_parola2" ControlToValidate="txt_parola1" ErrorMessage="Parolalar Uyuşmuyor." ForeColor="Red"></asp:CompareValidator>
                                    </label>
                                </h5>
                            </div>
                            <div class="col-md-4">
                            </div>
                        </div>


                        <!-- Parola yeniden  -->
                        <div class="row">
                            <div class="col-md-4" style="text-align: center;">
                                <h4>
                                    <label>Parolanızı onaylayın :</label>
                                </h4>
                            </div>
                            <div class="col-md-4">
                                <div class="input-group">
                                    <span class="input-group-addon" id="sizing-addon2">
                                        <span class="glyphicon glyphicon-lock"></span>
                                    </span>
                                    <asp:TextBox ID="txt_parola2" runat="server" CssClass="form-control" aria-describedby="sizing-addon2" TextMode="Password"></asp:TextBox>

                                </div>
                                <h5>
                                    <label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_parola2" ErrorMessage="Lütfen parola giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <br />
                                    </label>
                                </h5>
                            </div>
                            <div class="col-md-4">
                            </div>
                        </div>



                        <!-- Buton -->
                        <div class="row">
                            <div class="col-md-4" style="text-align: center;">
                            </div>
                            <div class="col-md-4">
                                <center>
                                <div class="form-group">
                                    <asp:Button ID="btn_profil_duzenle_kaydet" runat="server" OnClick="btn_profil_duzenle_kaydet_Click" Text="Kaydet" CssClass="btn btn-warning" />

                                </div>
                                    </center>
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



                </div>
            </div>
        </div>

    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
