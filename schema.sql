CREATE TABLE tb_categories (
    categoryID int not null,
    categoryName varchar(255) NOT NULL, 
    description varchar(255),
    picture text
);

CREATE TABLE tb_customers (
    customerID int not null,
    companyName varchar(255) NOT NULL,
    contactName varchar(255) NOT NULL,
    contactTitle varchar(255) NOT NULL,
    address varchar(255) NOT NULL,
    city varchar(255) NOT NULL,
    region varchar(255) NOT NULL,
    postalCode varchar(255) NOT NULL,
    country varchar(255) NOT NULL,
    phone varchar(255) NOT NULL,
    fax varchar(255) NOT NULL
);

CREATE TABLE tb_employee_territories (
    employeeID int not null,
    territoryID int not null
);

CREATE TABLE tb_employees (
	employeeID INT NOT NULL,
	lastName VARCHAR(255) NOT NULL,
	firstName VARCHAR(255) NOT NULL,
	title VARCHAR(50) NOT NULL,
	titleOfCourtersy VARCHAR(255),
	birthDate DATE NOT NULL,
    hireDate DATE NOT NULL,
    address varchar(255) NOT NULL,
    city varchar(255) NOT NULL,
    region varchar(255) NOT NULL,
    postalCode varchar(255) NOT NULL,
    country varchar(255) NOT NULL,
    homePhone varchar(255) NOT NULL,
    extension text NOT NULL,
    photo text NOT NULL,
    notes text NOT NULL,
    reportsTo varchar(255) NOT NULL,
    photoPath varchar(255) NOT NULL
);

CREATE TABLE tb_order_details (
    orderID int not null,
    productID int not null,
    unitPrice float not null,
    quantity int not null,
    discount float not null
);

CREATE TABLE tb_orders (
    orderID int not null,
    customerID int not null,
    employeeID int not null,
    orderDate date not null,
    requiredDate date not null,
    shippedDate date not null,
    shipVia int not null,
    freight float not null,
    shipName varchar(255) not null,
    shipAddress varchar(255) not null,
    shipCity varchar(255) not null,
    shipRegion varchar(255) not null,
    shipPostalCode varchar(255) not null,
    shipCountry varchar(255) not null
);

CREATE TABLE tb_products (
    productID int not null,
    productName varchar(255) not null,
    supplierID int not NULL,
    categoryID INT NOT NULL,
    quantityPerUnit INT NOT NULL,
    unitPrice FLOAT NOT NULL,
    unitsInStock INT NOT NULL,
    unitsOnOrder INT NOT NULL,
    reorderLevel INT NOT NULL,
    discontinued BOOLEAN NOT NULL
);

CREATE TABLE tb_regions (
    regionID INT NOT NULL,
    regionDescription text NOT NULL
);

CREATE TABLE tb_shippers (
    shipperID INT NOT NULL,
    companyName VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL
);

CREATE TABLE tb_suppliers (
    supplierID INT NOT NULL,
    companyName VARCHAR(255) NOT NULL,
    contactName VARCHAR(255) NOT NULL,
    contactTitle VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    region VARCHAR(255) NOT NULL,
    postalCode VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    fax VARCHAR(255) NOT NULL,
    homePage VARCHAR(255) NOT NULL
);

CREATE TABLE tb_territories (
    territoryID INT NOT NULL,
    territoryDescription VARCHAR(255) NOT NULL,
    regionID INT NOT NULL
);