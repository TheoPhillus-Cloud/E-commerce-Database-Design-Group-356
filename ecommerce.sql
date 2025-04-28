CREATE TABLE brand (
    brand_id INT PRIMARY KEY AUTO_INCREMENT,
    brand_name VARCHAR(255) NOT NULL
);

CREATE TABLE product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    brand_id INT,
    base_price DECIMAL(10,2),
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id)
);

CREATE TABLE product_variation (
    variation_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    color_id INT,
    size_id INT,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id),
    FOREIGN KEY (size_id) REFERENCES size_option(size_id)
);

-- Data Insertion Queries
INSERT INTO brand (brand_name) VALUES ('TechNova'), ('StyleWave');

INSERT INTO product (name, brand_id, base_price) VALUES 
('Smartphone X', 1, 799.99), 
('Running Shoes', 2, 99.99);

INSERT INTO product_variation (product_id, color_id, size_id) VALUES 
(1, 3, NULL), -- Smartphone has no size, only color
(2, 2, 5); -- Shoes have both color and size

-- Data Retrieval Queries
-- Fetch product with their brand name
SELECT p.name, b.brand_name, p.base_price 
FROM product p
JOIN brand b ON p.brand_id = b.brand_id;
-- Retrieve all variations for specific product
SELECT pv.variation_id, p.name, c.color_name, s.size_label
FROM product_variation pv
JOIN product p ON pv.product_id = p.product_id
JOIN color c ON pv.color_id = c.color_id
LEFT JOIN size_option s ON pv.size_id = s.size_id
WHERE p.product_id = 2;

-- Updating and Managing Data
UPDATE product 
SET base_price = 89.99 
WHERE name = 'Running Shoes';
-- Delete a variation if no longer ofered
DELETE FROM product_variation 
WHERE variation_id = 2;