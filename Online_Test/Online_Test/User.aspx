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
       <asp:Button ID="btn_profil_duzenle" runat="server" Text="Button" OnClick="btn_profil_duzenle_Click" class="btn btn-info btn-lg" data-toggle="modal" data-target="#modal_profil_duzenle" />
 
       
  <!-- Modal -->
  <div class="modal fade" id="modal_profil_duzenle" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Profil Düzenle</h4>
        </div>
        <div class="modal-body">
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
                      <asp:TextBox ID="txt_profil_soyad" runat="server"  CssClass="form-control" aria-describedby="sizing-addon2"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <h5>
                      <label>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_profil_soyad" ErrorMessage="Lütfen soyadınızı eksiksiz giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                          <br />
                          <br />
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
                      <asp:TextBox ID="txt_profil_parola1" runat="server"  CssClass="form-control" aria-describedby="sizing-addon2" TextMode="Password"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <h5>
                      <label>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_profil_parola1" ErrorMessage="Lütfen parola giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
                         <br />
                         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_profil_parola2" ControlToValidate="txt_profil_parola1" ErrorMessage="Parolalar Uyuşmuyor." ForeColor="Red"></asp:CompareValidator>
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
                      <asp:TextBox ID="txt_profil_parola2" runat="server"  CssClass="form-control" aria-describedby="sizing-addon2" TextMode="Password"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <h5>
                      <label>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_profil_parola2" ErrorMessage="Lütfen parola giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
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
                    <asp:FileUpload ID="fu_profil_kayit" runat="server" style="margin-top: 7px"/>
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
