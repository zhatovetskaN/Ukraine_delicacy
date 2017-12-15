<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Delicacy_UA.Pages.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 963px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td rowspan="4">
                <asp:Image ID="imgProduct" runat="server" CssClass="detailsImage" />
            </td>
            <td> <h2>
                <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label>
                
                 </h2>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="lblDescription" runat="server" CssClass="detailsDescription"></asp:Label>
            </td>
            <td class="text-right">
                <asp:Label ID="lblPrice" runat="server" CssClass="detailsPrice"></asp:Label> <br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;

                Količina:

                <asp:DropDownList ID="ddlAmount" runat="server" ></asp:DropDownList> 
                <br />
                <br /> 
                <br />
                <br />
                <br />

                <asp:Button ID="BtnAdd" runat="server" Text="Dodajte Projizvod" CssClass="button" OnClick="BtnAdd_Click" /> <br /> <br />
                
                <br />
&nbsp;<asp:Label ID="lblResult" runat="server" Text=""></asp:Label> 
            </td>
        </tr>
         <tr>
            <td>
             Broj Proizvoda:   <asp:Label ID="lblItemNr" runat="server" Text="Label"></asp:Label>
            </td>
            
        </tr>
         <tr>
            <td>
                Dostupno</td>
            
        </tr>
    </table>
</asp:Content>
