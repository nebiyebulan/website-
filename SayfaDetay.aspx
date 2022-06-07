<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="SayfaDetay.aspx.cs" Inherits="SayfaDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            font-size: xx-large;
            color: #838383;
        }
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            font-size: xx-small;
        }
        .auto-style10 {
            font-size: x-large;
        }
        .auto-style11 {
            width: 457px;
        color: #000000;
        background-color: #CCCCFF;
    }
    .auto-style12 {
        margin-left: 78px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong>
    <asp:Label ID="Label2" runat="server" Text="Label" CssClass="auto-style7"></asp:Label>
    <br />
</strong>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style8">
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        -<asp:Label ID="Label5" runat="server" CssClass="auto-style9" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <div class="auto-style11">YORUM YAPMA PANELİ</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style8">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>Ad Soyad:&nbsp;</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>Mail Adresi:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>Yorumunuz:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="71px" TextMode="MultiLine" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Height="33px" OnClick="Button1_Click" Text="Yorum Yap" Width="92px" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>

