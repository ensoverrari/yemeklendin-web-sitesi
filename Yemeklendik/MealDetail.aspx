<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="MealDetail.aspx.cs" Inherits="MealDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            text-align: right;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label3" runat="server" style="font-size: x-large" Text="Label"></asp:Label>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1" style="height: 151px">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" style="font-weight: 700" Text='<%# Eval("yorum_adsoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&quot;
                        <asp:Label ID="Label8" runat="server" style="font-style: italic" Text='<%# Eval("yorum_metin") %>'></asp:Label>
                        &quot;</td>
                </tr>
                <tr>
                    <td style="font-size: x-small">Yorum Tarihi:
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("yorum_tarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div>Yorum Ekleyin...</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4" style="border-radius:10px">Ad ve Soyad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px" CssClass="tb"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">E-Mail:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px" CssClass="tb"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Yorumunuz:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="120px" TextMode="MultiLine" Width="303px" CssClass="tb"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Yorum Yap" Width="200px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

