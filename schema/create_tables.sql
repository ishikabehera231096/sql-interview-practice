CREATE TABLE customers(
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT,
    signup_date DATE,
    country TEXT
);

CREATE TABLE orders(
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date DATE,
    status TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items(
    order_item_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    unit_price REAL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

CREATE TABLE products(
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    category TEXT
);