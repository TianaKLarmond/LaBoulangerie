<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="LaBoulangerie.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <div id="carouselExampleCaptions" class="carousel slide">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="Images/BakeryStorefront.jpg" class="d-block w-100 rounded" style="width: 800px; height: 700px;" alt="Bakery storefront">
                    <div class="carousel-caption d-none d-md-block carousel-caption">
                        <h5>About Us</h5>
                        <p>La Boulangerie Française, translated as The French Bakery, was founded by Tiana Larmond on January 12, 2014.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="Images/Different-Types-of-Bakeries.jpg" class="d-block w-100 rounded" style="width: 800px; height: 700px;" alt="Baked goods">
                    <div class="carousel-caption d-none d-md-block carousel-caption">
                        <h5>Location</h5>
                        <p>It's located in the heart of Kingston, Jamaica, providing Jamaicans with a taste of French baked goods.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="Images/BakeryBanner2.jpg" class="d-block w-100 rounded" style="width: 800px; height: 700px;" alt="Bakery">
                    <div class="carousel-caption d-none d-md-block carousel-caption">
                        <h5>Come on down!</h5>
                        <p>Our amicable staff is excited to introduce you to a world of flavour.</p>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <br />
        <div class="row">
             <div class="col">
                <img class="rounded" src="Images/TianaAbout.jpg" style="width:100%"/>
             </div>
           <div class="col-8">
               <h1>My Story</h1>
               <p style="font-size:x-large">
                   While pursuing a BSc in Culinary Arts at École de Cuisine La Varenne in France, <span style="color:rosybrown">Tiana</span> 
                   fell in love with French cuisine, especially their baked goods. Upon returning to Jamaica, she set out to introduce her 
                   fellow Jamaicans to these wonderful baked goods. She has been successfully running this business since 2014 with her 
                   hand-made baked goods providing Jamaicans with a taste of other cultures.
               </p>
           </div>
        </div>

        <br />
        <h1>OUR VISION</h1>
        <p style="font-size:large">We pride ourselves on bringing our hand-made baked goods to our customers. All of your favorite French baked goods 
        can be ordered online with pick up or delivery available. Order as much or as little as you like. 
        Please contact us if you have any questions.</p>
        <br />
        
        <div class="row">
            <div class="col">
                <h1>OUR MISSION</h1>
                <p style="font-size:large">Our mission is to provide all Jamaicans with an experience of the French culture through their baked goods,
                    primarily breads.</p>
            </div>
            <div class="col">
                <p style="font-size:x-large; text-decoration:underline">La vie est belle quand vous avez du pain.<br>(Life is good when you have bread).</p>
            </div>
        </div>
    </main>
</asp:Content>
