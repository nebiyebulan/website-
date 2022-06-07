<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Mesajlar.aspx.cs" Inherits="Mesajlar" %>

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
        .auto-style16 {
        text-align: right;
    }
    .auto-style17 {
        text-align: left;
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
                <td>MESAJ&nbsp; LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="455px">
                <ItemTemplate>
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style17">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("mesajgonderen") %>'></asp:Label>
                            </td>
                            <td class="auto-style16">
                               <a href="MesajDetay.aspx?mesajid=<%#Eval("mesajid")%>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/read.png" Width="25px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
    </asp:Panel>
</asp:Content>

