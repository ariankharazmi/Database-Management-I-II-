CREATE DATABASE [Electronics Store]


USE [Electronics Store]
Go

Create SCHEMA ELECTRONICS
Go
--Create tables, establish primary keys and foreign keys, establish constraints

--Using the Electronics Schema

--The Customer Table with CUST_ID as the PK
CREATE TABLE ElECTRONICS.Customer(
CUST_FNAME varchar(50) NOT NULL,
CUST_LNAME varchar(50) NOT NULL,
CUST_EMAIL varchar(50) NOT NULL,
CUST_PHONE varchar(50) NOT NULL,
CUST_ID varchar(50) NOT NULL,
PRIMARY KEY (CUST_ID)
);
--The Product Table with PROD_ID as the PK
CREATE TABLE ELECTRONICS.Product(
PROD_ID varchar(50) NOT NULL,
PROD_NAME varchar(50) NOT NULL,
PROD_DESC varchar(50) NOT NULL,
PROD_PRICE varchar(50) NOT NULL,
SUPPLIER_ID varchar(50),
PRIMARY KEY (PROD_ID),
);
--The Employee Table with EMP_ID as the PK
CREATE TABLE ELECTRONICS.Employee(
EMP_ID varchar(50) NOT NULL,
EMP_FNAME varchar(50) NOT NULL,
EMP_LNAME varchar(50) NOT NULL,
EMP_JOB_ID varchar(50) NOT NULL,
EMP_HIRE_DATE datetime NOT NULL,
PRIMARY KEY (EMP_ID)
);
--The Supplier Table with SUPPLIER_ID as the PK
CREATE TABLE ELECTRONICS.Supplier(
SUPPLIER_ID varchar(50) NOT NULL,
SUPPLIER_NAME varchar(50) NOT NULL,
SUPPLIER_CITY varchar(50) NOT NULL,
PROD_ID varchar(50) NOT NULL,
EMP_ID varchar(50),
PRIMARY KEY (SUPPLIER_ID),
FOREIGN KEY (EMP_ID) REFERENCES ELECTRONICS.Employee(EMP_ID),
FOREIGN KEY (PROD_ID) REFERENCES ELECTRONICS.Product(PROD_ID)
);
--Altering the Product table to add foregin key relationship
ALTER TABLE ELECTRONICS.Product
ADD FOREIGN KEY (SUPPLIER_ID) REFERENCES
ELECTRONICS.Supplier(SUPPLIER_ID);

--The Invoice Table with TNV_ID as the Primary Key
CREATE TABLE ELECTRONICS.Invoice(
INV_ID varchar(50) NOT NULL,
PROD_ID varchar(50) NOT NULL,
CUST_ID varchar(50),
INV_DATE datetime NOT NULL,
INV_PAY_METHOD varchar(50) NOT NULL,
EMP_ID varchar(50) NOT NULL,
SUPPLIER_ID varchar(50),
PRIMARY KEY (INV_ID),
FOREIGN KEY(EMP_ID) REFERENCES ELECTRONICS.Employee(EMP_ID),
FOREIGN KEY(CUST_ID) REFERENCES ELECTRONICS.Customer(CUST_ID),
FOREIGN KEY(PROD_ID) REFERENCES ELECTRONICS.Product(PROD_ID),
FOREIGN KEY(SUPPLIER_ID) REFERENCES
ELECTRONICS.Supplier(SUPPLIER_ID)
);