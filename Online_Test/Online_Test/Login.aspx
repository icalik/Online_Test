<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Test.Login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="max-width: 900px; padding-top: 100px;">
        <div class="row">
            <center><h3><label>Giriş Yap</label></h3></center>
        </div>

        <!-- Mail  -->
        <div class="row">
            <div class="col-md-4" style="text-align: right;">
                <h4>
                    <label>Mail Adresiniz :</label>
                </h4>
            </div>
            <div class="col-md-4">
                <div class="input-group">
                    <span class="input-group-addon" id="sizing-addon2">
                        <div class="glyphicon glyphicon-envelope"></div>
                    </span>
                    <asp:TextBox ID="txt_mail" runat="server" CssClass="form-control" aria-describedby="sizing-addon2"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <h5>
                    <label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_mail" ErrorMessage="Lütfen mail adresinizi eksiksiz giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_mail" ErrorMessage="Mail uygun formatta değil." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </label>
                </h5>
            </div>
        </div>

        <!-- Parola  -->
        <div class="row">
            <div class="col-md-4" style="text-align: right;">
                <h4>
                    <label>Parola :</label>
                </h4>
            </div>
            <div class="col-md-4">
                <div class="input-group">
                    <span class="input-group-addon" id="sizing-addon2">
                        <div class="glyphicon glyphicon-lock"></div>
                    </span>
                    <asp:TextBox ID="txt_parola" runat="server" CssClass="form-control" aria-describedby="sizing-addon2" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <h5>
                    <label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_parola" ErrorMessage="Lütfen parolanızı giriniz" ForeColor="Red"></asp:RequiredFieldValidator>
                    </label>
                </h5>
            </div>
        </div>

        <!-- Buton -->
        <div class="row">
            <div class="col-md-4" style="text-align: right;">
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <center>
                          <br />
                       <asp:Button ID="btn_girisyap" runat="server"  Text="Giriş Yap" Width="133px" OnClick="btn_girisyap_Click" CssClass="btn btn-warning" />
                       </center>
                </div>
            </div>
            <div class="col-md-4"></div>
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
