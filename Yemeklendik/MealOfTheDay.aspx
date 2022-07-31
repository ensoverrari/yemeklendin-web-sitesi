<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="MealOfTheDay.aspx.cs" Inherits="CookOfTheDay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 550px;
        }
    .auto-style4 {
        width: 264px;
    }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" Width="577px">
        <ItemTemplate>
            <table class="auto-style1" style="width: 100%">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("gununyemegi_ad") %>' style="font-size: large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="empty-cells: hide; text-align: center;">&nbsp;

                        <asp:Image ID="Image1" runat="server" Height="179px" ImageUrl="~/Pictures/tavuklu-sultan-kebabi.jpg" style="text-align: right" Width="396px" />

                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-size: large; border-bottom-style: solid; border-bottom-width: medium;">
                        Malzemeler;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("gununyemegi_malzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-size: large; border-bottom-style: solid; border-bottom-width: medium;">Yapılışı;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" style="text-align: justify" Text='<%# Eval("gununyemegi_tarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp;
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style4">Puan:
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("gununyemegi_puan") %>'></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td style="text-align: right">Tarih:
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("gununyemegi_tarih") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

