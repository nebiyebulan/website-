<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Hayvanlar.aspx.cs" Inherits="Hayvanlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            background-color: #99CCFF;
        }
        .auto-style9 {
            font-size: large;
        }
        .auto-style10 {
            text-align: right;
        }
        .auto-style11 {
            text-align: left;
            width: 232px;
        }
        .auto-style12 {
            margin-left: 8px;
        }
        .auto-style13 {
            font-size: large;
            margin-left: 0px;
        }
        .auto-style14 {
            width: 45px;
        }
        .auto-style15 {
            width: 33px;
        }
        .auto-style16 {
            width: 100%;
            background-color: #99CCFF;
        }
        .auto-style17 {
            font-weight: bold;
            margin-left: 96px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8">
        <table class="auto-style7">
            <tr>
                <td class="auto-style15">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style9" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                </td>
                <td>EVCİL HAYVAN LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="455px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("HayvanAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                            <a href="Hayvanlar.aspx?Hayvanid=<%#Eval("Hayvanid") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/5.jpg" Width="25px" CssClass="auto-style12" /></a>
                        </td>
                        <td class="auto-style10">
                            <a href="EvcilHayvanDuzenle.aspx?Hayvanid=<%#Eval("Hayvanid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/6.jpg" Width="25px" /></a> 
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style16">
            <tr>
                <td class="auto-style15">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style9" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"/>
                </td>
                <td>EVCİL HAYVAN EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
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
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style17" OnClick="Button5_Click" Text="Ekle" Width="58px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>



