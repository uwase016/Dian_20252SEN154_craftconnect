
-- CraftConnect Rwanda
-- Sample Data Insertion Script
-- Student: Ishimwe Uwase Diane
-- Student ID: 20252SEN154

-- 1. ARTISAN

INSERT INTO ARTISAN (first_name, last_name, phone, email, location)
VALUES ('Jean', 'Niyonzima', '0788123456', 'jean@gmail.com', 'Kigali');

INSERT INTO ARTISAN (first_name, last_name, phone, email, location)
VALUES ('Alice', 'Uwimana', '0788234567', 'alice@gmail.com', 'Huye');

INSERT INTO ARTISAN (first_name, last_name, phone, email, location)
VALUES ('Eric', 'Mugisha', '0788345678', 'eric@gmail.com', 'Musanze');


-- 2. CATEGORY

INSERT INTO CATEGORY (category_name, description)
VALUES ('Basketry', 'Handmade baskets and woven products');

INSERT INTO CATEGORY (category_name, description)
VALUES ('Jewelry', 'Handmade necklaces and bracelets');

INSERT INTO CATEGORY (category_name, description)
VALUES ('Pottery', 'Handmade clay pots and ceramic products');


-- 3. CUSTOMER

INSERT INTO CUSTOMER (first_name, last_name, phone, email, address)
VALUES ('Diane', 'Ishimwe', '0788112233', 'diane@gmail.com', 'Kigali');

INSERT INTO CUSTOMER (first_name, last_name, phone, email, address)
VALUES ('Grace', 'Uwase', '0788223344', 'grace@gmail.com', 'Huye');

INSERT INTO CUSTOMER (first_name, last_name, phone, email, address)
VALUES ('David', 'Mugisha', '0788334455', 'david@gmail.com', 'Musanze');


-- 4. PRODUCT

INSERT INTO PRODUCT (artisan_id, category_id, product_name, description, price, quantity_in_stock)
VALUES (1, 1, 'Traditional Basket', 'Handwoven Rwandan basket', 15000, 10);

INSERT INTO PRODUCT (artisan_id, category_id, product_name, description, price, quantity_in_stock)
VALUES (1, 1, 'Decorative Basket', 'Handmade decorative basket', 20000, 8);

INSERT INTO PRODUCT (artisan_id, category_id, product_name, description, price, quantity_in_stock)
VALUES (2, 2, 'Beaded Necklace', 'Handmade colorful necklace', 8000, 15);

INSERT INTO PRODUCT (artisan_id, category_id, product_name, description, price, quantity_in_stock)
VALUES (2, 2, 'Handmade Bracelet', 'Traditional beaded bracelet', 5000, 20);

INSERT INTO PRODUCT (artisan_id, category_id, product_name, description, price, quantity_in_stock)
VALUES (3, 3, 'Clay Pot', 'Handcrafted clay pot', 12000, 10);

INSERT INTO PRODUCT (artisan_id, category_id, product_name, description, price, quantity_in_stock)
VALUES (3, 3, 'Decorative Vase', 'Handmade pottery vase', 18000, 6);


-- 5. ORDERS

INSERT INTO ORDERS (customer_id, status, total_amount)
VALUES (1, 'Pending', 0);

INSERT INTO ORDERS (customer_id, status, total_amount)
VALUES (2, 'Completed', 0);

INSERT INTO ORDERS (customer_id, status, total_amount)
VALUES (3, 'Pending', 0);


-- 6. ORDER_ITEMS

INSERT INTO ORDER_ITEMS (order_id, product_id, quantity, unit_price)
VALUES (1, 1, 2, 15000);

INSERT INTO ORDER_ITEMS (order_id, product_id, quantity, unit_price)
VALUES (1, 3, 1, 8000);

INSERT INTO ORDER_ITEMS (order_id, product_id, quantity, unit_price)
VALUES (2, 5, 2, 12000);

INSERT INTO ORDER_ITEMS (order_id, product_id, quantity, unit_price)
VALUES (3, 2, 1, 20000);

INSERT INTO ORDER_ITEMS (order_id, product_id, quantity, unit_price)
VALUES (3, 4, 2, 5000);


-- 7. PAYMENT

INSERT INTO PAYMENT (order_id, payment_method, amount, payment_status)
VALUES (1, 'Mobile Money', 38000, 'Paid');

INSERT INTO PAYMENT (order_id, payment_method, amount, payment_status)
VALUES (2, 'Cash', 24000, 'Paid');

INSERT INTO PAYMENT (order_id, payment_method, amount, payment_status)
VALUES (3, 'Mobile Money', 30000, 'Pending');


-- 8. STOCK_MOVEMENTS

INSERT INTO STOCK_MOVEMENTS (product_id, movement_type, quantity, notes)
VALUES (1, 'OUT', 2, 'Items sold in order 1');

INSERT INTO STOCK_MOVEMENTS (product_id, movement_type, quantity, notes)
VALUES (3, 'OUT', 1, 'Items sold in order 1');

INSERT INTO STOCK_MOVEMENTS (product_id, movement_type, quantity, notes)
VALUES (5, 'OUT', 2, 'Items sold in order 2');

INSERT INTO STOCK_MOVEMENTS (product_id, movement_type, quantity, notes)
VALUES (2, 'OUT', 1, 'Items sold in order 3');

INSERT INTO STOCK_MOVEMENTS (product_id, movement_type, quantity, notes)
VALUES (4, 'OUT', 2, 'Items sold in order 3');

COMMIT;
