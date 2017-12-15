<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Management.aspx.cs" Inherits="Delicacy_UA.Pages.Management.Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="button" PostBackUrl="~/Pages/Management/ManageProduct.aspx">Dodati novi proizvod </asp:LinkButton>
    <br />
    <br />
<br />
<asp:GridView ID="GrdProducts" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sdsProducts" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Type2Id" HeaderText="Type2Id" SortExpression="Type2Id" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
<asp:SqlDataSource ID="sdsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:Ukrainian_delicacyConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Products] ([Type2Id], [Name], [Price], [Description], [Image]) VALUES (@Type2Id, @Name, @Price, @Description, @Image)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [Type2Id] = @Type2Id, [Name] = @Name, [Price] = @Price, [Description] = @Description, [Image] = @Image WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Type2Id" Type="Int32" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Price" Type="Double" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="Image" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Type2Id" Type="Int32" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Price" Type="Double" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="Image" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
<asp:LinkButton ID="LinkButton2" runat="server" CssClass="button" PostBackUrl="~/Pages/Management/ManageTypesOfProductType.aspx">Dodati novu vrstu proizvoda </asp:LinkButton>
    <br />
    <br />
<br />
<asp:GridView ID="GrdTypesOfProductType" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sdsTypesOfProductType" Width="30%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="TypeID" HeaderText="TypeID" SortExpression="TypeID" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
<asp:SqlDataSource ID="sdsTypesOfProductType" runat="server" ConnectionString="<%$ ConnectionStrings:Ukrainian_delicacyConnectionString %>" DeleteCommand="DELETE FROM [TypesOfProductTypes] WHERE [Id] = @Id" InsertCommand="INSERT INTO [TypesOfProductTypes] ([TypeID], [Name]) VALUES (@TypeID, @Name)" SelectCommand="SELECT * FROM [TypesOfProductTypes]" UpdateCommand="UPDATE [TypesOfProductTypes] SET [TypeID] = @TypeID, [Name] = @Name WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="TypeID" Type="Int32" />
        <asp:Parameter Name="Name" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TypeID" Type="Int32" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
<asp:LinkButton ID="LinkButton3" runat="server" CssClass="button" PostBackUrl="~/Pages/Management/ManageProductTypes.aspx">Dodati novu vrstu deliciji </asp:LinkButton>
    <br />
    <br />
<br />
<asp:GridView ID="GrdProductsType" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sdsProductType" Width="20%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
<asp:SqlDataSource ID="sdsProductType" runat="server" ConnectionString="<%$ ConnectionStrings:Ukrainian_delicacyConnectionString %>" DeleteCommand="DELETE FROM [ProductTypes] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ProductTypes] ([Name]) VALUES (@Name)" SelectCommand="SELECT * FROM [ProductTypes]" UpdateCommand="UPDATE [ProductTypes] SET [Name] = @Name WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
</asp:Content>
