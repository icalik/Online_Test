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
            <asp:Label ID="lbl_profil_ad" runat="server" Text=""></asp:Label>
            <asp:Label ID="lbl_profil_soyad" runat="server" Text=""></asp:Label>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


</asp:Content>
