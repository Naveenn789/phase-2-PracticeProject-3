<%@ Page Title="" Language="C#" MasterPageFile="~/OurSite.Master" AutoEventWireup="true" CodeBehind="StudentDispaly.aspx.cs" Inherits="WebAppPractiseProject3.StudentDispaly" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td><h1>Students Display</h1></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblMsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvstdnts" runat="server">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
