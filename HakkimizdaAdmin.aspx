<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HakkimizdaAdmin.aspx.cs" Inherits="HakkimizdaAdmin" %>

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
        font-weight: bold;
        margin-left: 199px;
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
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>HAKKIMIZDA GÜNCELLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style7">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="220px" TextMode="MultiLine" Width="449px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style16" Text="Güncelle" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>

