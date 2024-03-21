<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="LaBoulangerie.ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:FormView ID="productDetail" runat="server" ItemType="LaBoulangerie.Models.Product" SelectMethod ="GetProduct" RenderOuterTable="false">
        <ItemTemplate>
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row g-0">
                <div class="col-md-4">
                    <img src="/Images/<%#:Item.ImagePath %>" class="img-fluid rounded-start" style="height:100%" alt="<%#:Item.ProductName %>"/>
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                    <h5 class="card-title"><%#:Item.ProductName %></h5>
                    <p class="card-text"><%#:Item.Description %></p>
                    <p class="card-text"><b>Price:</b>&nbsp;<%#: String.Format("{0:c}", Item.UnitPrice) %></p>
                    <p class="card-text"><b>Product Number:</b>&nbsp;<%#:Item.ProductID %></p>
                    </div>
                </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>

