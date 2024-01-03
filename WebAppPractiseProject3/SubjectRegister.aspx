<%@ Page Title="" Language="C#" MasterPageFile="~/OurSite.Master" AutoEventWireup="true" CodeBehind="SubjectRegister.aspx.cs" Inherits="WebAppPractiseProject3.SubjectRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">SubjectID</td>
            <td>
                <asp:TextBox ID="subjectid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">SubjectName</td>
            <td class="auto-style9">
                <asp:TextBox ID="subjectname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">TeacherName</td>
            <td>
                <asp:TextBox ID="teachername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>
            <asp:Button ID="BtnRegister" runat="server" OnClick="BtnRegister_Click" Text="Register" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
            <asp:Label ID="LblMsg" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
