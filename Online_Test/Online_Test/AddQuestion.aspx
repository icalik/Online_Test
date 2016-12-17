<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="AddQuestion.aspx.cs" Inherits="Online_Test.AddQuestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="max-width: 900px;">
        <asp:Label ID="lbl_icerik" runat="server" Text="Label"></asp:Label>

    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            var A = new Array();
            var B = new Array();

            function cevap_ekle(c) {

                A.push(c);


            }
            function soru_ekle(s) {
                A.push(s);
            }
            function at_temizle() {
                B.push(A);
                A = [];
            }

            $('#gonder').click(function () {

                for (var i = 1; i <= $('#cerceve').children().length; i++) {
                    soru_ekle($("#soru" + i).val());
                    for (var j = 1; j < 6; j++) {
                        cevap_ekle($("#cevap" + j + i).val());
                    }
                    at_temizle();
                }


                console.log(JSON.stringify(B));
               // B = [];

                $.ajax({
                    type: "GET",
                    url: "/jsonToDB.asmx/SaveJson",
                    data: { sorular: JSON.stringify(B) },
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    error: function (xhr, status, error) {
                        console.log("Hata >");
                    },
                    success: function (responseData) {
                        console.log("Basarili veriler >" + responseData.d);
                    }
                })
            });

        });


    </script>
    <h1 id="gonder">Gonder</h1>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
