<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Prijava.aspx.cs" Inherits="Delicacy_UA.Prijava" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Literal ID="LitStatus" runat="server"></asp:Literal>
<br />
<br />
Korisničko ime:<br />
<br />
<asp:TextBox ID="txtUserName" runat="server" CssClass="inputs"></asp:TextBox>
<br />
<br />
Lozinka:<br />
<br />
<asp:TextBox ID="txtPassword" runat="server" CssClass="inputs" TextMode="Password"></asp:TextBox>
<br />
<br />
<br />
<asp:Button ID="btnLogin" runat="server" CssClass="btn-info" Height="42px" OnClick="btnLogin_Click" Text="Prijavi se" />
</asp:Content>
