<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Online_Test.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        .carousel-inner > .item > img,
        .carousel-inner > .item > a > img {
            width: 70%;
            margin: auto;
        }
    </style>
    <script type="text/javascript">

        $(document).ready(function () {
            var ad = '<%= Session["ad"] %>';
            console.log(ad);
            if (ad != "") {


                $('#giris_btn').html(ad);
                $('#giris_btn').attr({ 'href': "./User.aspx" });
                $('#kayit_btn').html("Çıkış Yap");
                $('#kayit_btn').attr({ 'href': "./LogOut.aspx" });
            }

        });


    </script>

    <div class="col-md-12">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="./pp/slider_1.png" alt="Chania" width="460" height="345">
                </div>

                <div class="item">
                    <img src="./pp/slider_1.png" alt="Chania" width="460" height="345">
                </div>

                <div class="item">
                    <img src="./pp/slider_1.png" alt="Flower" width="460" height="345">
                </div>

                <div class="item">
                    <img src="./pp/slider_1.png" alt="Flower" width="460" height="345">
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <br/>
    <div class="col-md-12" style="margin-top:60px">
        <div class="col-xs-6 col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">Fırat Online Test Akademise Hoş Geldin</div>
                <div class="panel-body">
                    Burada istediğiniz konu hakkında,test ekleyip ve çözebilir, durumunuzu görebilirsiniz.
                </div>
            </div>
        </div>
       
    </div>
    <br/>
    <div class="col-md-12" style="margin-top:20px">
        <div class="col-xs-6 col-md-4">
            <div class="panel panel-danger">
                <div class="panel-heading">Demo Hesap</div>
                <div class="panel-body">
                    Demo hesap için;<br/>
                    <strong>Kullanıcı Mail : <br/></strong>'demo@demo.com'<br/>
                    <strong>Parola : <br /></strong>'demo'
                </div>
            </div>
        </div>
        <div class="col-xs-6 col-md-4">
            <div class="panel panel-success">
                <div class="panel-heading">Üye Olmak İçin</div>
                <div class="panel-body">
                    Fırat Online Test Akademisini kullanmak için <a href="Register.aspx">tıklayınız</a>.
                    Üye olduktan sonra mailinize gelen aktivasyon linkinden sonra, konu ve test ekleyip, test çözebilirsiniz ardından istatistiklerinizi görebilirsiniz.
                </div>
            </div>
        </div>
        <div class="col-xs-6 col-md-4">
            <div class="panel panel-warning">
                <div class="panel-heading">Üye misiniz?</div>
                <div class="panel-body">
                    Giriş yapmak için <a href="Login.aspx">tıklayınız!</a>
                </div>
            </div>
        </div>
        
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
