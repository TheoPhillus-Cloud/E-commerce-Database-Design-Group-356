🛍️ E-Commerce Database Project

📌 Structured Database Design for E-Commerce Platforms

📖 Overview

This project defines a comprehensive e-commerce database schema, ensuring optimized product storage, categorization, and variation tracking. The structure includes products, brands, colors, attributes, and sizes, supporting an interactive online shopping experience.

📌 Key Features

✅ Entity Relationship Diagram (ERD) – Visualizes data structure and relationships.
✅ Optimized Schema Design – Well-structured tables ensuring efficient queries.
✅ Foreign Keys & Constraints – Enforces data integrity and relationships.
✅ Local & Scalable Setup – Designed for MySQL, PostgreSQL, or MariaDB.
✅ Performance Best Practices – Includes indexing, caching, and partitioning strategies.

🗃️ Tables Created
| Table | Description | 
| product | Stores general product details | 
| product_image | Stores image URLs for products | 
| color | Manages available colors | 
| product_category | Classifies products into categories | 
| brand | Stores brand-related data | 
| product_item | Represents purchasable items with specific variations | 
| product_variation | Links products to colors & sizes | 
| size_category | Groups sizes into categories | 
| size_option | Lists specific sizes | 
| product_attribute | Stores custom attributes (e.g., material, weight) | 
| attribute_category | Groups attributes into logical categories | 
| attribute_type | Defines attribute types (e.g., text, boolean, number) | 


📌 ERD Visualization
![image](https://github.com/user-attachments/assets/60bf765a-b18c-4151-8718-f94a9be81f91)

🚀 Installation & Setup
1️⃣ Clone the repository:
git clone https://github.com/YOUR_USERNAME/ecommerce-db.git
cd ecommerce-db


2️⃣ Import Database Schema into MySQL/PostgreSQL:
CREATE DATABASE ecommerce;
USE ecommerce;
SOURCE ecommerce.sql;


3️⃣ Verify Table Structure:
SHOW TABLES;


4️⃣ Run Sample Queries for Testing:
SELECT * FROM product;
SELECT * FROM product_category;

📜 License
This project is open-source under the MIT License.
