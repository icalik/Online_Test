<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Online_Test.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container col-md-9">

        <!-- Introduction Row -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Site Hakkında<br/>
                    <small>YMT 313 Web Tasarım ve Programlama Dersi</small>
                </h1>
                <p>Bu sayfa Elazığ, Fırat Üniversitesi, Teknoloji Fakültesi, Yazılım Mühendisliği, YMT 313 Web Tasarım ve Programala dersi için tasarlanmıştır.<p>
            </div>
        </div>

        <!-- Team Members Row -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Ekip</h2>
            </div>
            <div class="col-lg-6 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="./pp/003.jpg" alt="">
                <h3>Ahmet Çümen<br/>
                    <small>13542523<br/>Yazılım Mühendisi Öğrencisi</small>
                </h3>
                <p><a href="http://ahmetcumen.com" target="_blank">ahmetcumen.com</a></p>
            </div>
            <div class="col-lg-6 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="./pp/002.jpg" alt="">
                <h3>İsmet Said Çalık<br/>
                    <small>13542516<br/>Yazılım Mühendisi Öğrenicisi</small>
                </h3>
                <p><a href="http://calik.me" target="_blank">calik.me</a></p>
            </div>
           
        </div>

        <hr>


    </div>
    <!-- /.container -->


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
