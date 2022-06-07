<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="PatlasılanBilgilerDetay.aspx.cs" Inherits="PatlasılanBilgilerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style8 {
            height: 21px;
        }
        .auto-style9 {
            text-align: right;
            width: 163px;
        }
        .auto-style10 {
            text-align: right;
            height: 26px;
            width: 163px;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style12 {
            font-weight: bold;
            margin-left: 64px;
        }
        .auto-style13 {
            margin-left: 0px;
        }
        .auto-style14 {
            height: 21px;
            width: 163px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Bilgi Adı:</strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Bilgi İçerik:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="74px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Bilgi Sahibi:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Bilgi Sahibi Mail:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Kategori&nbsp;</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style13" Width="200px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Text="Onayla" Width="85px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

