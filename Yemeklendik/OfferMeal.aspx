<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="OfferMeal.aspx.cs" Inherits="OfferMeal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Tarif Adı:</td>
        <td>
            <asp:TextBox ID="tbtarifadi" runat="server" Width="250px" CssClass="tb"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Malzemeler:</td>
        <td>
            <asp:TextBox ID="tbmalzemeler" runat="server" Height="100px" TextMode="MultiLine" Width="250px" CssClass="tb"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Yapılışı:</td>
        <td>
            <asp:TextBox ID="tbyapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Resim:</td>
        <td>
            <asp:FileUpload ID="furesim" runat="server" Width="250px" CssClass="tb" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Öneri Sahibi:</td>
        <td>
            <asp:TextBox ID="tböneren" runat="server" Width="250px" CssClass="tb"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Mail Adresi:</td>
        <td>
            <asp:TextBox ID="tbmail" runat="server" TextMode="Email" Width="250px" CssClass="tb"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Tarif Öner" Width="255px" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>

