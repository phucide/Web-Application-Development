# 1. INTRODUCTION:
## 1.1. Motivation:
Today, the world is developing rapidly after the 4.0 revolution - the revolution in technology. Social services appear on the market more and more and most are executed quickly. Seizing this opportunity, many young entrepreneurs, business man have wished to develop their own service so that they can keep up with the trend and contribute to the development of the world.

However, in order for a service to become popular and widely used by users, many factors must be considered, especially about E-commerce services through shopping online. And for a shop manager to be able to manage products, customers and orders is an extremely important factor.

That's why our team made a simple website for a shopping online system. This web will assist the storekeeper in managing customers' information, and products as well as allowing them to perform tasks such as updating products,  ordering, and confirming orders. With the hope that this website is somewhat helpful in managing customer accounts and products, our goal is to construct a website where the flow of information is transparent enough for appropriate internal administration.

## 1.2. Problem Statement:
Handling personnel information manually presents a variety of issues. This is visible in procedures like order management, where a store manager must manually record the items ordered by the customer. The usage of paperwork in some of these procedures may result in human mistakes, papers may wind up in the wrong hands, and not to mention that it is time demanding. Customer self-service is lacking in some existing systems, which implies that customers cannot access and follow their personal information without going to the nearest store. 

Building and installing a shopping online system can handle the aforementioned concerns. This solution will keep the customer's information and only allow authorized users access to it. The project's purpose is to create a system that contains customer information and products to help administrators monitor customers’ accounts and orders.

## 1.3. Scope:
The scope of this project will be limited to the following:

1. Both customer and administrator login through the website
2. Customer personal profiles: Customers will have access to their profiles and their orders.
3. Homepage: The customers can use the filter to sort the products according to the lowest to highest price. They can also classify products according to other criterions. Users can decide whether they will buy more products or not. The user will get an invoice which contains the user’s name after making a purchase. The system can allow ordering from different suppliers according to availability
4. Admin Dashboard: The manager will be able search for customers, update the products, confirm the orders

# 2. LITERATURE REVIEW
## 2.1. Similar Application/System
The platform is referenced by the design and function of famous websites such as Amazon, eBay, Shopee,…

## 2.2. Platform and Tool Review
Programming language: HTML/ CSS/ Java Script

Database management system: MySQL to export and import database

Tools: Visual Studio Code, Eclipse, GitHub to publish the team’s codes

# 3. SYSTEM DESIGN
## 3.1. System Requirement Specification
### 3.1.1. Functionnal Requirements
- Registration, login and authentication
- Keeping track of all records of products
- Keeping track of all products of customer's cart and order
- Process transaction/payment 
- Storing and managing all orders that make by customers
- Reporting orders
- Searching products
- Display detailed information of products
- Sorting list of products by user criteria
- Logout

### 3.1.2 Requirement Analysis
The Web Application should give a friendly GUI for the users to interact.

In order to buy the products, the customers need to register an account of our web, they can register by an email or facebook account. After registration, they need to wait the admin of the web to accept the account.

There are 3 types of user in this system: viewer, customer, and administrator
- Viewer: can visit the web page and choose products to see its information(price, origin,...), but they cannot buy products or make orders.
- Customer: which is user who has a valid account, they can view and by products.
- Administrator: who manages(add, remove, update) the products and accepts the customer's registration.

The admin will manage a list of products which they want to sell, they can add, remove or update the information of the product, they can also search information of the customer and confirm the order. The users can click to the image of the products or search the products by name to see its information, or they can filter products based on some criteria(price, manufactuer,...). The users can give comments/reviews about the product or see others customers's comments/reviews.

To more convenient, the users can add products which they want to by into their cart, they also be able to remove it from a cart. When the products are added into cart, a successful message is sent to the users to notify them, when they remove the products from the cart, the page is loaded immediately to display the remaining products of the cart.

When the order is made, the cusomter need to choose the method of payment(card,cash,...), after the order is made successfully, a report of order is sent to the admin who will process and schedule to delivery the order, and a bill of order is also sent to the customer's email to inform them

### 3.1.3 Non-functional Requirements
- Security
- Response time
- Throughput
- Scalability
- Availability
- Maintainability
- Reliability
- Portability

## 3.2 System Design Specification
### 3.2.1 Use-case Diagram
![WebProject-Use case diagram drawio](https://user-images.githubusercontent.com/63244142/172037469-83beab2f-93e6-4fe5-9a89-4fba682b9858.png)
<p align="center"><b>Figure 3.1: Use-case Diagram</b></p>


### 3.2.2 Sequence Diagram
![WebProject-Sequence Diagram drawio](https://user-images.githubusercontent.com/63244142/172037504-df06b251-40fc-4106-9620-ab22f9f27c0c.png)
<p align="center"><b>Figure 3.2: Sequence Diagram</b></p>


### 3.2.3 Entity-Relationship Diagram
![DatabaseDesign drawio](https://user-images.githubusercontent.com/69331153/172085589-be72fd29-8603-4793-b68f-ec8d97cfaa47.png)
<p align="center"><b>Figure 3.3: Entity-Relationship Diagram</b></p>


### 3.2.4 Relational-Schema Diagram
![image (2)](https://user-images.githubusercontent.com/69331153/172085838-a99212ca-1afa-4259-a996-3fe99ebdeb1e.png)
<p align="center"><b>Figure 3.4: Relational-Schema Diagram</b></p>


# 4. SYSTEM IMPLEMENTATION

# 5. CONCLUSION AND DISCUSSION
## 5.1 List of accomplished work
1.	The system allows Customers to create, log in and change password 
2.	The system allows Customers to view products, search product, add product to shopping cart and check out
3.	The system allows Admin to view list of managed Customers and confirm Customers' account
4.	The system allows Admin to search for a specific customer, add product and confirm orders.

## 5.2 Strength and Weakness

| Strength                                                    | Weakness                                                                  |
| ----------------------------------------------------------- | ------------------------------------------------------------------------- | 
| The system response quickly to the user’s request.          | The system still lacks some functions of a real-life shopping system.     |
| The system has friendly GUI, so it is easy to use.          | System doesn’t allow multimedia yet (videos, mp3 …).                      |
| Admin can closely manage orders and customers.              | Spend much time for waiting account confirmation from the admin           |                             

## 5.3 Future Work

1. Add function that admin can upload product introduction video.
2. Customers can give their reviews of purchased products.
3. Develop email account confirmation instead of confirming from the admin.
4. Develop a dilivery system inside the shopping website.

# 6. References
- [https://www.slideshare.net/gajapandiyan/online-shopping-16603063?fbclid=IwAR3DcQdVadUk5YkaKOMceum5gyMw0HMs02IG2yZx2RDoEsJWL6cG_J7BsYs](https://www.slideshare.net/gajapandiyan/online-shopping-16603063?fbclid=IwAR3DcQdVadUk5YkaKOMceum5gyMw0HMs02IG2yZx2RDoEsJWL6cG_J7BsYs)
- [https://core.ac.uk/download/pdf/5165156.pdf?fbclid=IwAR3RcbA0Hp41AuWzNVWAtLM1eWXjmjwvnRIrngihqjv6pZVk-esGYubKGRI](https://core.ac.uk/download/pdf/5165156.pdf?fbclid=IwAR3RcbA0Hp41AuWzNVWAtLM1eWXjmjwvnRIrngihqjv6pZVk-esGYubKGRI)
- [https://projectsinventory.com/functional-requirement-of-online-shopping-system/?fbclid=IwAR3DcQdVadUk5YkaKOMceum5gyMw0HMs02IG2yZx2RDoEsJWL6cG_J7BsYs](https://projectsinventory.com/functional-requirement-of-online-shopping-system/?fbclid=IwAR3DcQdVadUk5YkaKOMceum5gyMw0HMs02IG2yZx2RDoEsJWL6cG_J7BsYs)
- [https://kipalog.com/posts/Functional-requirements-va-non-functional-requirements?fbclid=IwAR3eBF8EPr_Cl_sfB8w6wOj_1kJAOLORnf3jlCllvP4QqcFWjEBdQ3knWGc](https://kipalog.com/posts/Functional-requirements-va-non-functional-requirements?fbclid=IwAR3eBF8EPr_Cl_sfB8w6wOj_1kJAOLORnf3jlCllvP4QqcFWjEBdQ3knWGc)

