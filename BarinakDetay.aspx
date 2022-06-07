<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="BarinakDetay.aspx.cs" Inherits="BarinakDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style22 {
            height: 61px;
        }
        .auto-style23 {
            height: 56px;
        }
        .auto-style24 {
            height: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style6">
                <tr><td class="auto-style22">
                    
                        <strong>Barınak Adı</strong>:<asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text='<%# Eval("BarinakAd") %>' ForeColor="#A0A0A0"></asp:Label>
                        </strong></a></td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <strong>Barınak Adresi</strong>:<asp:Label ID="Label3" runat="server" Text='<%# Eval("BarinakAdres") %>' CssClass="auto-style3" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24"><strong>Telefon Numarası:<asp:Label ID="Label4" runat="server" ForeColor="Black" Text='<%# Eval("telno") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #C0C0C0">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

