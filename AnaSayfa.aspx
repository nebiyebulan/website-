<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style6 {
        width: 100%;
    }
    .auto-style7 {
        font-size: x-large;
    }
        .auto-style22 {
            font-size: large;
        }
        .auto-style23 {
            color: #000000;
            font-size: large;
        }
        .auto-style24 {
            font-size: large;
            color: #666666;
        }
        .auto-style25 {
            height: 104px;
        }
        .auto-style26 {
            height: 122px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style6">
            <tr>
                <td class="auto-style26"></a href='SayfaDetay.aspx?Hayvanid=<%# Eval("Hayvanid") %>'>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style24" ForeColor="Black" Text='<%# Eval("HayvanAd") %>'></asp:Label>
                </td>

            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style23" ForeColor="Black" Text='<%# Eval("HayvanBakimi") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style22" ForeColor="Black" Text='<%# Eval("HayvanBilgileri") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>

</asp:Content>

