CREATE DATABASE Manufacturer;

USE Manufacturer

CREATE TABLE Product (
    prod_id INT,
    prod_name VARCHAR(50),
    quantity INT
    PRIMARY KEY (prod_id)
);

CREATE TABLE Component (
    comp_id INT,
    comp_name VARCHAR(50),
    description VARCHAR(50),
    quantity_comp INT,
    PRIMARY KEY (comp_id)
);

CREATE TABLE Supplier (
    supp_id INT,
    supp_name VARCHAR(50),
    is_activate BIT
    PRIMARY KEY(supp_id)
);

CREATE TABLE Prod_Comp (
    prod_id INT,
    comp_id INT,
    FOREIGN KEY (prod_id) REFERENCES Product (prod_id),
    FOREIGN KEY (comp_id) REFERENCES Component (comp_id),
    quantity_comp INT,
    PRIMARY KEY (prod_id , comp_id)
);

CREATE TABLE CompSupp (
    comp_id INT,
    supp_id INT,
    FOREIGN KEY (comp_id) REFERENCES Component (comp_id),
    FOREIGN KEY (supp_id) REFERENCES Supplier (supp_id),
    PRIMARY KEY (comp_id,supp_id)
);
