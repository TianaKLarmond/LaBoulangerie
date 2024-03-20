<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LaBoulangerie._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <br />
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Our Best Sellers</h1>
            <p class="lead">At La Boulangerie Française, we pride ourself with freshly baking our products each day.</p>
            <br />
        </section>

        <div class="row">
            <div class="col-sm">
                <div class="card" style="width: 18rem;">
                    <img src="Images/Macaron.jpg" class="card-img-top" alt="Macaron" height="200"/>

                    <div class="card-body">
                        <h5 class="card-title">Macaron</h5>
                        <p class="card-text">A macaron is a dainty butter-creamed filled cookie sandwich that'll transport 
                            you to a cobbled street in Paris with one taste.</p>
                        <a href="~/ProductList" class="btn btn-primary">
                            Shop Now &nbsp; <i class="bi bi-cart"></i>
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-sm">
                <div class="card" style="width: 18rem;">
                    <img src="Images/Fougasse.jpg" class="card-img-top" alt="Fougasse" height="200"/>

                    <div class="card-body">
                        <h5 class="card-title">Fougasse</h5>
                        <p class="card-text">Fougasse is the French equivalent of Italian focaccia bread, 
                            as it's made with fresh herbs and good olive oil.</p>
                        <a href="~/ProductList" class="btn btn-primary">
                            Shop Now &nbsp; <i class="bi bi-cart"></i>
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-sm">
                <div class="card" style="width: 18rem;">
                    <img src="Images/PlumClafoutis.jpg" class="card-img-top" alt="Plum Clafoutis" height="200"/>

                    <div class="card-body">
                        <h5 class="card-title">Plum Clafoutis</h5>
                        <p class="card-text">Plum CLafoutis is sweet, but not terribly so, and the chunks of 
                            fresh fruit are enjoyable to the palate.</p>
                        <a href="~/ProductList" class="btn btn-primary">
                            Shop Now &nbsp; <i class="bi bi-cart"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <br /><br />
        <div class="container">
            <div class="row">
                <div class="col">
                    <h3 class="text-start">
                    Our payment options include:</h3><br />
                    <ol style="font-size: large">
                        <li>Credit Card</li>
                        <li>Debit Card</li>
                        <li>Cheque</li>
                        <li>Lynk</li>
                        <li>Cash on Delivery</li>
                    </ol>

                    <br />
                    <h5>
                        At La Boulangerie Française it is our utmost responsibility that all customer's personal 
                        details are secure and the payment processing is safe and reliable. 
                    </h5>
                </div>

                <div class="col">
                    <img class="rounded" src="Images/PaymentMethods.jpg" width="650" alt="Payment Methods"/>
                </div>
            </div>
        </div>
    </main>

</asp:Content>
