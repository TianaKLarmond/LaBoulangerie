# LaBoulangerie

Objective: 
Students are to incrementally develop an e-commerce ASP.NET Web application. 

Milestones:
1.	Create a Responsive e-Commerce Web Storefront using ASP.Net which allows customers to browse available products – Due Week 4
2.	Extend functionality to include Shopping Cart and Error handling functionality - Due Week 6
3.	Extend functionality to include database access i.e. LINQ/ADO.Net – Due Week 9
4.	Extend functionality of the website to include security features including TSL/SSL, user registration and role restrictions i.e. authentication and authorization – Due Week 11

Submission Notes:
1.	Students must develop an ASP.NET multipage application using MS SQL-Server 2012 database or higher and Visual Studio 2012 Professional or higher. 
2.	Students should maintain the application source code in a private GitHub repository and add the lab tutor as a collaborator.
3.	The database must contain at least three (3) tables which conform to third normal form. The database connection must be specified in your applications web.config file.
4.	It is important that the application be a functional and logical one. Discuss implementation concept with your lab tutor to identify areas in which you may need additional guidance.

Website User Groups
1.	Visitor – anyone who visits the website will have the ability to browse and purchase
2.	Customer – users who register on the website site will have the ability to save items to their shopping cart, logout and return later to view their cart or historic purchases.
3.	Admin – Admin users are responsible for managing the products on the website and managing the users

Functional Requirements
Milestone 1 – Create a Responsive Web Application					[10%]
1.	The Customer should be able to navigate the website 				[1%]
2.	The website should include the following pages:					[2%]
a.	Home – featured product(s) 
b.	Products – at least 3 products listed, including:
i.	ID, name, description, category, unit price, image
c.	About Us – information about your company
d.	Contact Us – list your company contact details
3.	The website should have a consistent look and feel for all pages			[4%]
a.	NB: Use Master Page, HTML5 & CSS to standardize the webpage format
4.	The website should be mobile responsive i.e. dynamically scale to fit the size of the device screen											[3%]
a.	NB: Use bootstrap


Milestone 2 – State Management and Error Handling					[10%]
5.	A user should be able to add products to their shopping cart				[4%]
a.	Customer should be able to input the quantity of the product
b.	The website should calculate the subtotal using formula: subtotal = price * quantity
6.	A user  should be able to view their shopping cart					[3%]
a.	The website should display list of each item in the cart, the quantity and the subtotal
b.	The website should display the grand total i.e. sum of all the subtotals
7.	A user should be able to remove products from their shopping cart			[2%]
a.	The website should update the grand total whenever and item is removed 
8.	The system should handle errors gracefully i.e. use custom error pages		[1%]

Hint: Use HttpCookies or Session Variables to store shopping cart data. Use classes to manage the various objects (User, Cart, Product) on the website

Milestone 3 – Data Access and Distribution 						[10%]
General Functions:
9.	The website should maintain Product data in a persistent database			[1%]
10.	The website should retrieve Product data from a database				[1%]

User Functions:
11.	The website should store Shopping Cart details in the database whenever the user logs out or the Session is otherwise terminated						[1%]
12.	The website should allow Customer to access their shopping cart whenever they login												[1%]
13.	The website should clear the shopping cart whenever the Customer completes an order 												[1%]
14.	The website should store Customer Order details they complete a purchase i.e. checkout 	
Order details include: date time, OrderID, ProductID, Username, Quantity, Subtotal	[2%]

Admin Functions:
15.	The website should allow user to add new products to the database			[1%]
16.	The website should allow user to update product details				[1%]
17.	The website should allow user to delete a product					[1%]


Milestone 4 – Website Security 								[10%]
18.	The website should utilize SSL/TSL for browsing					[2%]
19.	The website should allow user to register to use the website (Using ASP.Net Identity) [2%]
20.	The website should enforce strong password format					[1%]
21.	The website should allow user to login to the website				[2%]
22.	The website should show/hide navigation options based on the user role		[3%]
a.	Admin – Manage Products, Manage Users 
b.	Customer – View Order History, View Shopping Cart 
c.	NB: These pages need not be functional for this milestone…but navigation should be managed based on the roles…
