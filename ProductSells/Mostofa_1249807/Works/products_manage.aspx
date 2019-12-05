<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="products_manage.aspx.cs" Inherits="Mostofa_1249807.Works.products_manage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/font-awesome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col">
            <h2>Products list</h2>
            <div class="d-flex justify-content-end mb-1">
                <a runat="server" class="btn btn-primary btn-sm" href="~/Works/products_add.aspx"><i class="fa fa-plus"></i>Add New</a>
            </div>
            <asp:GridView CssClass="table table-bordered table-striped" ID="dgProducts" runat="server" AutoGenerateColumns="False" DataKeyNames="product_id" DataSourceID="dsProducts" AllowPaging="True" PageSize="5" AllowSorting="True" OnSelectedIndexChanged="dgProducts_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField HeaderText="Category Name" SortExpression="categorie_name">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="dsProducts" DataTextField="categorie_name" DataValueField="categorie_name" SelectedValue='<%# Bind("categorie_name", "{0}") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("categorie_name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="product_name" HeaderText="Product Name" SortExpression="product_name" />
                    <asp:TemplateField HeaderText="Picture" SortExpression="picture">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("picture") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <img width="40" src="<%#Eval("picture","/Images/{0}") %>" alt="" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                    <asp:BoundField DataField="stock" HeaderText="Stock" SortExpression="stock" />
                    <asp:HyperLinkField DataNavigateUrlFields="product_id" DataNavigateUrlFormatString="~/Works/P_edit.aspx?id={0}" Text="Edit" />
                    <asp:CommandField ShowDeleteButton="True">
                    </asp:CommandField>
                </Columns>
                <EmptyDataTemplate>
                    <div class="alert alert-info">
                        <p>No Data</p>
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
            <asp:SqlDataSource ID="dsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:catagoriedbContext %>" InsertCommand="INSERT INTO products(catagorie_id, product_name, stock, price, picture) VALUES (@catagorie_id, @product_name, @stock, @price, @picture)" SelectCommand="SELECT products.product_id, products.catagorie_id, products.product_name, products.stock, products.price, products.picture, categories.categorie_name FROM products INNER JOIN categories ON products.catagorie_id = categories.categorie_id" DeleteCommand="INSERT INTO products(catagorie_id, product_name, stock, price, picture) VALUES (@catagorie_id, @product_name, @stock, @price, @picture)" UpdateCommand="INSERT INTO products(catagorie_id, product_name, stock, price, picture) VALUES (@catagorie_id, @product_name, @stock, @price, @picture)">
                <DeleteParameters>
                    <asp:Parameter Name="catagorie_id" />
                    <asp:Parameter Name="product_name" />
                    <asp:Parameter Name="stock" />
                    <asp:Parameter Name="price" />
                    <asp:Parameter Name="picture" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="catagorie_id" />
                    <asp:Parameter Name="product_name" />
                    <asp:Parameter Name="stock" />
                    <asp:Parameter Name="price" />
                    <asp:Parameter Name="picture" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="catagorie_id" />
                    <asp:Parameter Name="product_name" />
                    <asp:Parameter Name="stock" />
                    <asp:Parameter Name="price" />
                    <asp:Parameter Name="picture" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
