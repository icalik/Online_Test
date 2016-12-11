<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="AddTopic.aspx.cs" Inherits="Online_Test.AddTopic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="max-width: 900px;">
        <div class="row" style="text-align: center">
            <h3>
                <label>Konu Ekle</label></h3>
        </div>
        <!-- Konu ekle  -->
        <div class="row">
            <div class="col-md-4" style="text-align: center;">
                <h4>
                    <label>Konu : </label>
                </h4>
            </div>
            <div class="col-md-4">
                <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-user"></span>
                    </span>
                    <asp:TextBox ID="txt_konu" runat="server" CssClass="form-control" aria-describedby="sizing-addon2"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <h5>
                    <label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_konu" ErrorMessage="Lütfen konu adı giriniz!" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </label>
                </h5>
            </div>
        </div>

       

        <!-- Buton -->
        <div class="row">
            <div class="col-md-4" style="text-align: center;">
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Button ID="btn_profil_duzenle_kaydet" runat="server" OnClick="btn_profil_duzenle_kaydet_Click" Text="Kaydet" CssClass="btn btn-warning" />



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
