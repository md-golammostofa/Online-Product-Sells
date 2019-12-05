<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="categories_add.aspx.cs" Inherits="Mostofa_1249807.Works.categories_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/font-awesome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <h2>Insert New Category</h2>
                     <div runat="server" class="alert" id="alert" visible="false" >
                          
                          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                         <p runat="server" id="msg"></p>
                     </div>
                <div class="form-group row">
                    <asp:Label CssClass="col-form-label col-md-2" AssociatedControlID="cname" ID="Label1" runat="server" Text="Category Name"></asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox CssClass="form-control form-control-sm col-md-2" ID="cname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="cname" ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Catagory name is required!"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <asp:Label CssClass="col-form-label col-md-2" AssociatedControlID="cdescription" ID="Label2" runat="server" Text="Category Descriptions"></asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox CssClass="form-control form-control-sm col-md-2" ID="cdescription" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="cdescription" ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="Catagory description is required!"></asp:RequiredFieldValidator>
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
                    <asp:SqlDataSource ID="dsCategorie" runat="server" ConnectionString="<%$ ConnectionStrings:catagoriedbContext %>" InsertCommand="INSERT INTO categories(categorie_name, categorie_description) VALUES (@categorie_name, @categorie_description)" SelectCommand="SELECT * FROM [categories]">
                        <InsertParameters>
                            <asp:Parameter Name="Categorie_Name" />
                            <asp:Parameter Name="categorie_description" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </ContentTemplate>
            </asp:UpdatePanel>
            <a runat="server" href="~/Works/products_categorie_manage.aspx"><i class="fa fa-long-arrow-left"></i>Back to list</a>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
