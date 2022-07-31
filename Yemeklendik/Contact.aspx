<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="2" style="text-align: center; font-size: x-large">Mesaj Paneli</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td>Ad Soyad:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mail Adresi:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mesaj Konusu:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="tb"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mesajınız:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="tb" Height="81px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Gönder" Width="186px" />
            </td>
        </tr>
    </table>
</asp:Content>

