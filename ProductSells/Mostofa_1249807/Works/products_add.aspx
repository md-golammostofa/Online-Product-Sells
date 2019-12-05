<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="products_add.aspx.cs" Inherits="Mostofa_1249807.Works.products_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="row">
        <div class="col">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <h2>Insert New Products</h2>
                     <div runat="server" class="alert" id="alert" visible="false" >
                          
                          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                         <p runat="server" id="msg"></p>
                     </div>
                <div class="form-group row">
                    <asp:Label CssClass="col-form-label col-md-2" AssociatedControlID="ddlProductsCategorie" ID="Label1" runat="server" Text="Category"></asp:Label>
                    <div class="col-md-10">
                        <asp:DropDownList AppendDataBoundItems="True" ID="ddlProductsCategorie" runat="server" DataSourceID="dsCategories" DataTextField="categorie_description" DataValueField="categorie_id">
                            <asp:ListItem Selected="True">Select One</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator InitialValue="Select One" ControlToValidate="ddlProductsCategorie" ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Catagory name is required!"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <asp:Label CssClass="col-form-label col-md-2" AssociatedControlID="Pname" ID="Label2" runat="server" Text="Product Name"></asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox CssClass="form-control form-control-sm col-md-2" ID="Pname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="Pname" ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="Product Name is required!"></asp:RequiredFieldValidator>
                    </div>
                </div>
                    <div class="form-group row">
                    <asp:Label CssClass="col-form-label col-md-2" AssociatedControlID="pstock" ID="Label3" runat="server" Text="Stock"></asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox CssClass="form-control form-control-sm col-md-2" ID="pstock" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="pstock" ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="Stock is required!"></asp:RequiredFieldValidator>
                    </div>
                </div>
                    </div>
                    <div class="form-group row">
                    <asp:Label CssClass="col-form-label col-md-2" AssociatedControlID="pprice" ID="Label4" runat="server" Text="Price"></asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox CssClass="form-control form-control-sm col-md-2" ID="pprice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="pprice" ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="Price is required!"></asp:RequiredFieldValidator>
                    </div>
                </div>
                     </div>
                    </div>
                    <div class="form-group row">
                    <asp:Label CssClass="col-form-label col-md-2" AssociatedControlID="picture" ID="Label5" runat="server" Text="Picture"></asp:Label>
                    <div class="col-md-10">
                        <asp:FileUpload CssClass="form-control form-control-file" ID="picture" runat="server" />
                    </div>
                </div>

                <div class="form-group row">
                        <div class="col-md-2 text-right pr-1 pt-2">
                            <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                                <ProgressTemplate>
                                    <i class="fa fa-spin fa-spinner fa-2x"></i>
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                        </div>
                        <div class="col-md-10">
                            <asp:Button CssClass="btn btn-primary" ID="Insert" runat="server" Text="Add to database" OnClick="Insert_Click" />
                           
                        </div>
                    </div>
                    <asp:SqlDataSource ID="dsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:catagoriedbContext %>" InsertCommand="INSERT INTO [products] ([catagorie_id], [product_name], [stock], [price], [picture]) VALUES (@catagorie_id, @product_name, @stock, @price, @picture)" SelectCommand="SELECT * FROM [products]"> 
                       
                        <InsertParameters>
                            <asp:Parameter Name="catagorie_id" Type="Int32" />
                            <asp:Parameter Name="product_name" Type="String" />
                            <asp:Parameter Name="stock" Type="String" />
                            <asp:Parameter Name="price" Type="Decimal" />
                            <asp:Parameter Name="picture" Type="String" />
                        </InsertParameters>
                       
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="dsCategories" runat="server" ConnectionString="<%$ ConnectionStrings:catagoriedbContext %>" SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>
                </ContentTemplate>
            </asp:UpdatePanel>
            <a runat="server" href="~/Works/products_manage.aspx"><i class="fa fa-long-arrow-left"></i>Back to list</a>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
