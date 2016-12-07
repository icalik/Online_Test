<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Online_Test.Register1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-align: center;
            position:center;
        }
        
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            text-align: left;
        }

    </style>
     
      
    	<div class="container" style="max-width:900px;">
            <div class="row" style="text-align:center">
               <h3><label>Kayıt ol</label></h3>
            </div>
            <!-- Ad  -->
			<div class="row">
              <div class="col-md-4"  style="text-align:center;">
                 <h4><label>Adınız :</label> </h4>
              </div>
              <div class="col-md-4">
                  <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-user"></span>
                    </span>
                      <asp:TextBox ID="txt_ad" runat="server"  CssClass="form-control" aria-describedby="sizing-addon2"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <h5>
                      <label>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_ad" ErrorMessage="Lütfen adınızı eksiksiz giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                          <br />
                          <br />
                      </label> 
                  </h5>
              </div>
            </div>
            
            <!-- Soyad  -->
            <div class="row">
              <div class="col-md-4"  style="text-align:center;">
                 <h4><label>Soyadınız :</label> </h4>
              </div>
              <div class="col-md-4">
                  <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-arrow-right"></span>
                    </span>
                      <asp:TextBox ID="txt_soyad" runat="server"  CssClass="form-control" aria-describedby="sizing-addon2"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <h5>
                      <label>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_soyad" ErrorMessage="Lütfen soyadınızı eksiksiz giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                          <br />
                          <br />
                      </label> 
                  </h5>
              </div>
            </div>

             <!-- Mail  -->
            <div class="row">
              <div class="col-md-4"  style="text-align:center;">
                 <h4><label>Mail Adresiniz :</label> </h4>
              </div>
              <div class="col-md-4">
                  <div class="input-group">
                    <span class="input-group-addon" >
                        <span class="glyphicon glyphicon-envelope"></span>
                    </span>
                      <asp:TextBox ID="txt_mail" runat="server"  CssClass="form-control" aria-describedby="sizing-addon2"></asp:TextBox>
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
              <div class="col-md-4"  style="text-align:center;">
                 <h4><label>Parola oluşturun :</label> </h4>
              </div>
              <div class="col-md-4">
                  <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-lock"></span>
                    </span>
                      <asp:TextBox ID="txt_parola1" runat="server"  CssClass="form-control" aria-describedby="sizing-addon2" TextMode="Password"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <h5>
                      <label>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_parola1" ErrorMessage="Lütfen parola giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                         <br />
                         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_parola2" ControlToValidate="txt_parola1" ErrorMessage="Parolalar Uyuşmuyor." ForeColor="Red"></asp:CompareValidator>
                      </label> 
                  </h5>
              </div>
            </div>


            <!-- Parola yeniden  -->
            <div class="row">
              <div class="col-md-4"  style="text-align:center;">
                 <h4><label>Parolanızı onaylayın :</label> </h4>
              </div>
              <div class="col-md-4">
                  <div class="input-group">
                    <span class="input-group-addon" id="sizing-addon2">
                        <span class="glyphicon glyphicon-lock"></span>
                    </span>
                      <asp:TextBox ID="txt_parola2" runat="server"  CssClass="form-control" aria-describedby="sizing-addon2" TextMode="Password"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <h5>
                      <label>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_parola2" ErrorMessage="Lütfen parola giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                         <br />
                         <br />
                      </label> 
                  </h5>
              </div>
            </div>

            <!-- Resim Yükle  -->
            <div class="row">
              <div class="col-md-4"  style="text-align:center;">
                 <h4><label>Profil fotoğrafı yükleyin :</label> </h4>
              </div>
              <div class="col-md-4">
                  <div class="form-group">
                    <asp:FileUpload ID="fu_kayit" runat="server" style="margin-top: 7px"/>
                  </div>
              </div>
              <div class="col-md-4"></div>
            </div>

             <!-- Buton -->
            <div class="row">
              <div class="col-md-4"  style="text-align:center;">
              </div>
              <div class="col-md-4">
                  <div class="form-group">
                       <asp:Button ID="btn_uyeol" runat="server"  Text="Üye Ol" Width="133px" OnClick="btn_uyeol_Click" CssClass="btn btn-warning" />
                  </div>
              </div>
              <div class="col-md-4"></div>
            </div>

            <!-- Hata Kısmı  -->
            <div class="row">
              <div class="col-md-4"></div>
              <div class="col-md-4">
                  <div class="form-group" style="color:red;">
                    <h4><label>
                        <asp:Label ID="lbl_hata" runat="server"></asp:Label> 
                       </label> </h4>
                  </div>
              </div>
              <div class="col-md-4"></div>
            </div>

		</div>
     
</asp:Content>

