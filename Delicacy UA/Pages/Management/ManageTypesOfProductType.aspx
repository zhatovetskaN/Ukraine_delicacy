<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ManageTypesOfProductType.aspx.cs" Inherits="Delicacy_UA.Pages.Management.ManageTypesOfProductType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Ime:</p>
    <p>
        <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
    </p>
    <p>
        Vrsta:</p>
    <p>
        <asp:DropDownList ID="DdlType" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ukrainian_delicacyConnectionString %>" SelectCommand="SELECT * FROM [ProductTypes] ORDER BY [Name]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="BtnSend" runat="server" OnClick="BtnSend_Click" Text="Pospremi" />
    </p>
    <p>
        <asp:Label ID="LblResult" runat="server"></asp:Label>
    </p>
</asp:Content>
