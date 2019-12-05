<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="P_Edit.aspx.cs" Inherits="Mostofa_1249807.Works.P_Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col">
            <h2>Insert New Products</h2>
                     <div runat="server" class="alert" id="alert" visible="false" >
                          
                          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                         <p runat="server" id="msg"></p>
                     </div>
                <div class="form-group row">
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                    <asp:Label CssClass="col-form-label col-md-2" AssociatedControlID="ddlProductsCategorie" ID="Label1" runat="server" Text="Category"></asp:Label>
                    <div class="col-md-10">
                        <asp:DropDownList  ID="ddlProductsCategorie" runat="server"  DataTextField="categorie_description" DataValueField="categorie_id">
                           
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
                
                    <div class="form-group row">
                    <asp:Label CssClass="col-form-label col-md-2" AssociatedControlID="picture" ID="Label5" runat="server" Text="Picture"></asp:Label>
                    <div class="col-md-10">
                        <asp:FileUpload CssClass="form-control form-control-file" ID="picture" runat="server" />
                    </div>
                </div>

                <div class="form-group row">
                        <div class="col-md-2 text-right pr-1 pt-2">
                            
                        </div>
                        <div class="col-md-10">
                            <asp:Button CssClass="btn btn-primary" ID="Update" runat="server" Text="Add to database" OnClick="Update_Click" />
                           
                        </div>
                    </div>
      

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
