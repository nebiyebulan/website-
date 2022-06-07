<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style8 {
            background-color: #99CCFF;
        }
        .auto-style15 {
            width: 33px;
        }
        .auto-style9 {
            font-size: large;
        }
        .auto-style14 {
            width: 45px;
        }
        .auto-style13 {
            font-size: large;
            margin-left: 0px;
        }
        .auto-style11 {
            text-align: left;
            width: 232px;
        }
        .auto-style10 {
            text-align: right;
        }
        .auto-style12 {
            margin-left: 8px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8">
        <table class="auto-style7">
            <tr>
                <td class="auto-style15">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style9" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"/>
                </td>
                <td>ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="455px">
                <ItemTemplate>
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style11">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style10">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/5.jpg" Width="25px" CssClass="auto-style12" />
                            </td>
                            <td class="auto-style10">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/6.jpg" Width="25px" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style8" style="margin-top=15px;">
        <table class="auto-style7">
            <tr>
                <td class="auto-style15">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style9" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"/>
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"/>
                </td>
                <td>ONAYSIZ YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel4" runat="server">
            <asp:DataList ID="DataList2" runat="server" Width="455px">
                <ItemTemplate>
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style11">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style10">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/5.jpg" Width="25px" CssClass="auto-style12" />
                            </td>
                            <td class="auto-style10">
                               <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid")%>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/6.jpg" Width="25px" />
                            </a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
    </asp:Panel>
    </asp:Content>

