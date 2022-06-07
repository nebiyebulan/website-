<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="EvcilHayvanDuzenle.aspx.cs" Inherits="EvcilHayvanDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
        text-align: justify;
    }
    .auto-style11 {
        font-weight: bold;
        margin-left: 52px;
    }
    .auto-style12 {
        font-weight: bold;
        margin-left: 52px;
        background-color: #999999;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style7">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Hayvan Ad:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Hayvan Bakımı:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="139px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Hayvan Bilgileri:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="139px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Kategori:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Evcil Hayvan Resim:</td>
            <td class="auto-style10">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="248px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style10">
                <strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style11" OnClick="Button1_Click" Text="Güncelle" Width="142px" />
                </strong>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style12" OnClick="Button2_Click" Text="Günün Haberi Seç" Width="144px" />
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>

