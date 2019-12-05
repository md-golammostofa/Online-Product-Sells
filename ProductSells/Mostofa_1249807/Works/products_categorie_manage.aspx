<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="products_categorie_manage.aspx.cs" Inherits="Mostofa_1249807.Works.products_categorie_manage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/font-awesome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h2>Products Category</h2>
            <div class="d-flex justify-content-end mb-1">
                <a runat="server" class="btn btn-primary btn-sm" href="~/Works/categories_add.aspx"><i class="fa fa-plus"></i>Add New</a>
            </div>
            <asp:GridView CssClass="table table-bordered table-striped" ID="dgcategories" runat="server" AutoGenerateColumns="False" DataKeyNames="categorie_id" DataSourceID="dscategories" PageSize="5" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="categorie_id" HeaderText="Category Id" InsertVisible="False" ReadOnly="True" SortExpression="categorie_id" />
                    <asp:BoundField DataField="categorie_name" HeaderText="Category Name" SortExpression="categorie_name" />
                    <asp:BoundField DataField="categorie_description" HeaderText="Category Descriptions" SortExpression="categorie_description" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                    <ControlStyle CssClass="btn btn-outline-info btn-sm" />
                    </asp:CommandField>
                </Columns>
                <EmptyDataTemplate>
                    <div class="alert alert-info">
                        <p>No Record Found</p>
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
            <asp:SqlDataSource ID="dscategories" runat="server" ConnectionString="<%$ ConnectionStrings:catagoriedbContext %>" DeleteCommand="DELETE FROM [categories] WHERE [categorie_id] = @categorie_id" InsertCommand="INSERT INTO [categories] ([categorie_name], [categorie_description]) VALUES (@categorie_name, @categorie_description)" SelectCommand="SELECT * FROM [categories]" UpdateCommand="UPDATE [categories] SET [categorie_name] = @categorie_name, [categorie_description] = @categorie_description WHERE [categorie_id] = @categorie_id">
                <DeleteParameters>
                    <asp:Parameter Name="categorie_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="categorie_name" Type="String" />
                    <asp:Parameter Name="categorie_description" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="categorie_name" Type="String" />
                    <asp:Parameter Name="categorie_description" Type="String" />
                    <asp:Parameter Name="categorie_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
