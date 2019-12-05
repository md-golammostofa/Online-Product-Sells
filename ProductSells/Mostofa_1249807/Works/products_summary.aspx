<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="products_summary.aspx.cs" Inherits="Mostofa_1249807.Works.products_summary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col">
            <h2>Data Details</h2>
            <div class="card">
                <h3>Category</h3>
                <asp:GridView CssClass="table table-bordered table-striped" ID="dgCategories" runat="server" SelectedIndex="0" AutoGenerateColumns="False" DataKeyNames="categorie_id" DataSourceID="dsCategories" AllowPaging="True" PageSize="5" AllowSorting="True">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" >
                        <ControlStyle CssClass="btn btn-outline-info btn-sm" />
                        </asp:CommandField>
                        <asp:BoundField DataField="categorie_id" HeaderText="Category Id" InsertVisible="False" ReadOnly="True" SortExpression="categorie_id" />
                        <asp:BoundField DataField="categorie_name" HeaderText="Category Name" SortExpression="categorie_name" />
                        <asp:BoundField DataField="categorie_description" HeaderText="Category Descriptions" SortExpression="categorie_description" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="dsCategories" runat="server" ConnectionString="<%$ ConnectionStrings:catagoriedbContext %>" SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>
            </div>
            <div class="card">
                <h3>Products</h3>
                <asp:GridView CssClass="table table-bordered table-striped" ID="dgProducts" runat="server" AutoGenerateColumns="False" DataKeyNames="product_id" DataSourceID="dsProducts" AllowPaging="True" PageSize="5" AllowSorting="True">
                    <Columns>
                        <asp:BoundField DataField="product_id" HeaderText="Product Id" InsertVisible="False" ReadOnly="True" SortExpression="product_id" />
                        <asp:BoundField DataField="catagorie_id" HeaderText="Category Id" SortExpression="catagorie_id" />
                        <asp:BoundField DataField="product_name" HeaderText="Product Name" SortExpression="product_name" />
                        <asp:TemplateField HeaderText="Picture" SortExpression="picture">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("picture") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <img width="40" src="<%#Eval("picture","/Images/{0}") %>" alt="" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="stock" HeaderText="Stock" SortExpression="stock" />
                        <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="dsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:catagoriedbContext %>" SelectCommand="SELECT * FROM [products] WHERE ([catagorie_id] = @catagorie_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="dgCategories" Name="catagorie_id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
