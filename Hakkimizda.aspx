<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" Width="460px" CssClass="auto-style7">
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("mesaj") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>

    <br />

    <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/Banner/images.jpg" Width="460px" />
</asp:Content>

