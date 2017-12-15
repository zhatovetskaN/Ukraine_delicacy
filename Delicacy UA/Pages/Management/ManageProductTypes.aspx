<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ManageProductTypes.aspx.cs" Inherits="Delicacy_UA.Pages.Management.ManageProductTypes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Name:</p>
    <p>
        <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="BtnSend" runat="server" OnClick="BtnSend_Click" style="height: 29px" Text="Pošalji" />
    </p>
    <p>
        <asp:Label ID="lblResult" runat="server"></asp:Label>
    </p>
</asp:Content>
