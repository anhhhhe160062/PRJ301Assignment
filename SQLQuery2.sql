CREATE DATABASE AShopCMS

CREATE TABLE Student (
   id   INT    NOT NULL identity(1,1),
   name NVARCHAR (32)     NOT NULL,
   gender BIT	  NOT NULL,
   dob  DATE NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE Account(
	ID INT NOT NULL identity(1,1),
	UserName NVARCHAR (32) NOT NULL,
	Password NVARCHAR (32) NOT NULL,
	Role	NVARCHAR (32) NOT NULL,
	PRIMARY KEY (ID)
)

CREATE TABLE Profile(
	ID INT NOT NULL identity(1,1),
	Role NVARCHAR (32) NOT NULL,
	Name NVARCHAR (32) NOT NULL,
	Gender BIT NOT NULL,
	DOB DATE NOT NULL,
)

CREATE TABLE Customer(
	CustomerID INT NOT NULL identity(1,1),
	[Full Name] NVARCHAR (32) NOT NULL,
	[Phone Number] INT NOT NULL,
	ProductID INT NOT NULL,
	[Shop Points] INT NOT NULL,
)

CREATE TABLE DiscountCode(
	ID INT NOT NULL identity(1,1),
	DiscountContent NVARCHAR (32) NOT NULL,
	StartDate DATE NOT NULL,
	EndDate DATE NOT NULL,
	Status BIT NOT NULL,
	ProductID INT NOT NULL,
)

CREATE TABLE Product(
	ProductID INT NOT NULL identity(1,1),
	[Product Name] NVARCHAR(32) NOT NULL,
	Stock INT NOT NULL,
)