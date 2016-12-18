<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="ShowStatistics.aspx.cs" Inherits="Online_Test.ShowStatistics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
<asp:PlaceHolder ID = "PlaceHolder1" runat="server" />

 
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="183px" Width="583px">
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
    

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online_TestConnectionString %>"></asp:SqlDataSource>
    

    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
