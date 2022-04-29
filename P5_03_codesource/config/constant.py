config = {
    "user": "root",
    "password": "Kundera1",
    "host": "localhost"
    }

DB_NAME = "OpenFoodFacts"

TABLES = {}

TABLES[
    "product"
] = """CREATE TABLE `product` (id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR (1000) NOT NULL UNIQUE,
    description VARCHAR (5000) NULL,
    store VARCHAR (2000) NOT NULL,
    url VARCHAR (2000) NOT NULL,
    nutriscore VARCHAR(1000) NOT NULL,
    PRIMARY KEY(id))"""

TABLES[
    "category"
] = """CREATE TABLE `category` (id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR (1000) NOT NULL,
    PRIMARY KEY(id))"""

TABLES[
    "product_category"
] = """CREATE TABLE `product_category` (
    product_id INT NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product (id)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (category_id) REFERENCES category (id)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    PRIMARY KEY(product_id, category_id))"""

TABLES[
    "favorite"
] = """CREATE TABLE `favorite` (id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR (1000) NOT NULL,
    description VARCHAR (5000) NULL,
    store VARCHAR (2000) NOT NULL,
    url VARCHAR (2000) NOT NULL,
    PRIMARY KEY(id))"""
