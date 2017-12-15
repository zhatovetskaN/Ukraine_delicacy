<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ManageProduct.aspx.cs" Inherits="Delicacy_UA.Pages.Management.ManageProduct" %>
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
    <asp:DropDownList ID="DdlTypeOfProducts" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ukrainian_delicacyConnectionString %>" SelectCommand="SELECT * FROM [TypesOfProductTypes]"></asp:SqlDataSource>
    </p>
    <p>
        Cijena:</p>
    <p>
        <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
    </p>
    <p>
        Slike:</p>
    <p>
        <asp:DropDownList ID="DdlImage" runat="server">
        </asp:DropDownList>
    </p>
    <p>
        Opis:</p>
    <p>
        <asp:TextBox ID="TxtDescription" runat="server" Height="54px" Width="210px" TextMode="MultiLine"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="BtnSubmit" runat="server" Text="Pospremi" OnClick="BtnSubmit_Click" />
    </p>
    <p>
        <asp:Label ID="LblResult" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
