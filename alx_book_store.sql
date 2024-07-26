CREATE DATABASES alx_book_store;
USE alx_book_store;

CREATE TABLE Books (
    book_id PRIMARY KEY,
    title VARCHAR(130),
    author_id,
    price DOUBLE,
    publication_date DATE
);

CREATE TABLE Authors (
    author_id PRIMARY KEY
    author_name VARCHAR(215)
    FOREIGN KEY(author_id) REFERENCES Books(author_id)
):

CREATE TABLE Customers (
    customer_id PRIMARY KEY
    customer_name VARCHAR(215)
    email VARCHAR(215)
    address_ TEXT
);

CREATE TABLE Orders (
    order_id (Primary Key)
    customer_id
    order_date DATE
    FOREIGN KEY(customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details(
    order_detail PRIMARY KEY
    order_id
    book_id
    quantity DOUBLE
    FOREIGN KEY(order_id) REFERENCES Orders(order_id)
    FOREIGN KEY(book_id) REFERENCES Books(book_id)
);