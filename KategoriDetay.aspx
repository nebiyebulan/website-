<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .auto-style7 {
        font-size: x-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style6">
            <tr>
                <td><strong><a href="SayfaDetay.aspx?Hayvanid=<%# Eval("Hayvanid") %>">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text='<%# Eval("HayvanAd") %>' ForeColor="#A0A0A0"></asp:Label>
                    </strong></a></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("HayvanBakimi") %>' CssClass="auto-style3" ForeColor="Black"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong><em>
                    <asp:Label ID="Label4" runat="server" ForeColor="Black" Text='<%# Eval("HayvanBilgileri") %>'></asp:Label>
                    </em></strong></td>
            </tr>
            <tr>
                <td style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #C0C0C0">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

