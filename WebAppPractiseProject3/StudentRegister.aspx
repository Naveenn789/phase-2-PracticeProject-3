<%@ Page Title="" Language="C#" MasterPageFile="~/OurSite.Master" AutoEventWireup="true" CodeBehind="StudentRegister.aspx.cs" Inherits="WebAppPractiseProject3.StudentDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="auto-style1">
    <tr>
        <td class="auto-style5">Student Name</td>
        <td>
            <asp:TextBox ID="TxtStdntName" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">Student RollNO</td>
        <td>
            <asp:TextBox ID="TxtStdntRollno" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">Class Id</td>
        <td>
            <asp:TextBox ID="TxtClassId" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">Subject Id</td>
        <td>
            <asp:TextBox ID="TxtSubjectId" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td>
            <asp:Button ID="BtnRegister" runat="server" OnClick="BtnRegister_Click" Text="Register" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="LblMsg" runat="server"></asp:Label>
            <br />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
