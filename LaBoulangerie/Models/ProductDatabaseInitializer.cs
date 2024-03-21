using System.Collections.Generic;
using System.Data.Entity;

namespace LaBoulangerie.Models
{
    public class ProductDatabaseInitializer : DropCreateDatabaseIfModelChanges<ProductContext>
    {
        protected override void Seed(ProductContext context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            GetProducts().ForEach(p => context.Products.Add(p));
        }

        private static List<Category> GetCategories()
        {
            var categories = new List<Category> {
                new Category
                {
                    CategoryID = 1,
                    CategoryName = "Bread"
                },
                new Category
                {
                    CategoryID = 2,
                    CategoryName = "Cake"
                },
                new Category
                {
                    CategoryID = 3,
                    CategoryName = "Frozen Dessert"
                },
                new Category
                {
                    CategoryID = 4,
                    CategoryName = "Pastry"
                },
                new Category
                {
                    CategoryID = 5,
                    CategoryName = "Pie"
                },
            };

            return categories;
        }

        private static List<Product> GetProducts()
        {
            var products = new List<Product> {
                new Product
                {
                    ProductID = 1,
                    ProductName = "Baguette",
                    Description = "These long, stick-like loaves, also called French bread are made with flour, yeast, water, and salt.",
                    ImagePath="Baguette.jpg",
                    UnitPrice = 150.00,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 2,
                    ProductName = "Brioche",
                    Description = "Another French bread delicacy, brioche, a traditionally sweet yeast bread loaded with eggs and butter.",
                    ImagePath="Brioche.jpg",
                    UnitPrice = 150.00,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 3,
                    ProductName = "Chocolate Croissant",
                    Description = "Savory croissants with a chocolate-filled center.",
                    ImagePath="ChocolateCroissant.jpg",
                    UnitPrice = 150.00,
                    CategoryID = 4
                },
                new Product
                {
                    ProductID = 4,
                    ProductName = "Chocolate Éclair",
                    Description = "An éclair is an oblong pastry made with choux dough filled with a cream and" +
                                  " topped with chocolate icing. The word comes from the French éclair, meaning flash of lightning.",
                    ImagePath="ChocolateEclair.jpg",
                    UnitPrice = 150.00,
                    CategoryID = 4
                },
                new Product
                {
                    ProductID = 5,
                    ProductName = "French Breakfast Muffin",
                    Description = "I bet you didn't think muffins could get any better. Well, I present to you the French Breakfast Muffin.",
                    ImagePath="FrenchBreakfastMuffin.jpg",
                    UnitPrice = 100.00,
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 6,
                    ProductName = "Fougasse",
                    Description = " Fougasse is a delectable flatbread beloved in France.",
                    ImagePath="Fougasse.jpg",
                    UnitPrice = 150.00,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 7,
                    ProductName = "Macaron",
                    Description = "Macarons are more than just cookies. They’re an elegant symbol of the French lifestyle." +
                                  "Crisp outside but melty inside, macarons represent balance and refined pastry-making skills.",
                    ImagePath="Macaron.jpg",
                    UnitPrice = 75.00,
                    CategoryID = 4
                },
                new Product
                {
                    ProductID = 8,
                    ProductName = "Pain de mie",
                    Description = "An approximate translation of the name of this popular French bread is “crustless bread”, referring " +
                                  "to its thin layer of crust and thick white interior. Pain de mie is made with wheat flour, water, salt, shortening, sugar, and yeast.",
                    ImagePath="PainDeMie.jpg",
                    UnitPrice = 200.00,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 9,
                    ProductName = "Plum Clafoutis",
                    Description = "The pastry appeared in the center of France, in the Limousin, during the 19th century." +
                                  "Clafoutis became one of those popular homemade desserts the French love to makewhen it's cherry or plum season.",
                    ImagePath="PlumClafoutis.jpg",
                    UnitPrice = 350.00,
                    CategoryID = 5
                },
                new Product
                {
                    ProductID = 10,
                    ProductName = "Quiche Florentine",
                    Description = "Quiche Florentine is a French dish with Italian influences–a pie consisting of a pastry crust that is filled with eggs," +
                                  "milk, cheese, spinach, and fresh herbs such as rosemary and thyme.",
                    ImagePath="QuicheFlorentine.jpg",
                    UnitPrice = 250.00,
                    CategoryID = 5
                },
                new Product
                {
                    ProductID = 11,
                    ProductName = "Saint Honoré Cake",
                    Description = "Named after Saint Honoré, the French patron saint of bakers, this intricate " +
                                  "dessert is a true representation of French confectionery art.",
                    ImagePath="SaintHonoreCake.jpg",
                    UnitPrice = 350.00,
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 12,
                    ProductName = "Strawberry Soufflé",
                    Description = "The soufflé earns its name from the French word soufflér — to puff. It was perfected.",
                    ImagePath="StrawberrySouffle.jpg",
                    UnitPrice = 400.00,
                    CategoryID = 3
                }
            };

            return products;
        }
    }
}