<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Registracija.aspx.cs" Inherits="Delicacy_UA.Registracija" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Literal ID="LIdStatus" runat="server"></asp:Literal>
<br />
<br />Korisničko ime:<br />
<br />
<asp:TextBox ID="txtUserName" runat="server" CssClass="input"></asp:TextBox>
<br />
<br />Lozinka:<br />
<br />
<asp:TextBox ID="txtPassword" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
<br />
<br />Ponovi lozinku:<br />
<br />
<asp:TextBox ID="txtConfirmPass" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    Ime:<br />
    <br />
    <asp:TextBox ID="TxtFirstName" runat="server"></asp:TextBox>
    <br />
    <br />
    Prezime:<br />
    <br />
    <asp:TextBox ID="TxtLastName" runat="server"></asp:TextBox>
    <br />
    <br />
    Adresa:<br />
    <br />
    <asp:TextBox ID="TxtAddress" runat="server"></asp:TextBox>
    <br />
    <br />
    Poštanski broj:<br />
    <br />
    <asp:TextBox ID="TxtPostCode" runat="server"></asp:TextBox>
    <br />
<br />
<br />
<asp:Button ID="Button1" runat="server" CssClass="auto-style11" OnClick="Button1_Click" Text="Pošalji" Height="48px" Width="141px" />
</asp:Content>
