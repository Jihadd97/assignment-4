CREATE DATABASE `store_management`;

USE `store_management`;

CREATE TABLE
    governorates (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100) NOT NULL
    );

CREATE TABLE
    stores (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        address TEXT NOT NULL,
        governorate_id INT ,
        FOREIGN KEY(governorate_id) REFERENCES governorates(id)
    );

CREATE TABLE
    suppliers (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        phone VARCHAR(100) NOT NULL,
        email VARCHAR(100) NOT NULL,
        brief_data TEXT NOT NULL
    );

CREATE TABLE
    products (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        code VARCHAR(100) UNIQUE NOT NULL,
        description TEXT NOT NULL,
        price DECIMAL(10, 2) NOT NULL,
        supplier_id INT,
        FOREIGN KEY (supplier_id) REFERENCES suppliers(id)
    );

CREATE TABLE
    store_products (
       store_id INT,
       product_id INT, 
       PRIMARY KEY (store_id , product_id),
       FOREIGN KEY (store_id) REFERENCES stores(id),
       FOREIGN KEY (product_id) REFERENCES products(id)
    );

    