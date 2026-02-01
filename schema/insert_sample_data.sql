INSERT INTO customers VALUES
(1, 'Alice', '2023-01-10', 'USA'),
(2, 'Bob', '2023-02-15', 'India'),
(3, 'Charlie', '2023-03-20', 'USA'),
(4, 'Diana', '2023-04-05', 'UK'),
(5, 'Evan', '2023-05-12', 'India');

INSERT INTO orders VALUES
(101, 1, '2023-06-01', 'Completed'),
(102, 1, '2023-06-15', 'Completed'),
(103, 2, '2023-06-20', 'Cancelled'),
(104, 3, '2023-07-05', 'Completed'),
(105, 4, '2023-07-10', 'Completed');

INSERT INTO order_items VALUES
(1, 101, 1001, 1, 1200),
(2, 101, 1003, 2, 100),
(3, 102, 1002, 1, 800),
(4, 104, 1004, 1, 150),
(5, 105, 1003, 1, 100);


INSERT INTO products VALUES
(1001, 'Laptop', 'Electronics'),
(1002, 'Phone', 'Electronics'),
(1003, 'Headphones', 'Accessories'),
(1004, 'Keyboard', 'Accessories');

