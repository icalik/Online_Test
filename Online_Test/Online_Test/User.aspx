<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Online_Test.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <asp:Label ID="lbl_id" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="lbl_ad" runat="server" Text="Label"></asp:Label>
    
    
    
     
    <script type="text/javascript">

        $(document).ready(function () {

            $('#giris_btn').html("KULLANICI");
            $('#giris_btn').attr({ 'href': "./Default.aspx" });
            $('#kayit_btn').html("Çıkış Yap");
            $('#kayit_btn').attr({'href' : "./LogOut.aspx"});
        });


    </script>

   <div class="container">
 
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#modal_profil_duzenle">Profil Düzenle</button>
       
  <!-- Modal -->
  <div class="modal fade" id="modal_profil_duzenle" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Profil Düzenle</h4>
        </div>
        <div class="modal-body">
            Adınız :<asp:Label ID="lbl_profil_ad" runat="server" Text=""></asp:Label><br/>
            Soyadiniz :<asp:Label ID="lbl_profil_soyad" runat="server" Text=""></asp:Label><br/>
            Mail Adresiniz : <asp:Label ID="lbl_profil_mail" runat="server" Text="" ></asp:Label> <br/>
            Yetki : <asp:Label ID="lbl_profil_yetki" runat="server" Text=""></asp:Label> <br/>
            Üye Olma Tarihi :  <asp:Label ID="lbl_profil_uyeolmatarihi" runat="server" Text=""></asp:Label> <br/>
            Profil Foto : <asp:Label ID="lbl_profil_pfoto" runat="server" Text=""></asp:Label> <br/>
             <br/> <br/>
            <div class="row">
              <div class="col-md-4"  style="text-align:center;">
                 <h4><label>Adınız :</label> </h4>
              </div>
              <div class="col-md-4">
                  <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-user"></span>
                    </span>
                      <asp:TextBox ID="txt_profil_ad" runat="server"  CssClass="form-control" aria-describedby="sizing-addon2"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <h5>
                      <label>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_profil_ad" ErrorMessage="Lütfen adınızı eksiksiz giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
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
                    <span class="input-group-addon" >
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
                    <span class="input-group-addon">
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
                    <span class="input-group-addon">
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
            <br/>
            
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <asp:Button ID="btn_profil_kaydet" runat="server" Text="Değişiklikleri Kaydet" class="btn btn-primary"  OnClick="btn_profil_kaydet_Click"/>
        </div>
      </div>
    </div>
  </div>
</div>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


</asp:Content>
