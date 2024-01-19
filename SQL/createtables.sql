CREATE TABLE goRetailers (
    RetailerCode INT not null,
    RetailerName VARCHAR(255) not null,
    Type VARCHAR(255) not null,
    Country VARCHAR(255) not null,
    PRIMARY KEY (RetailerCode)
);

CREATE TABLE goProducts (
    ProductNumber INT not null,
    ProductLine VARCHAR(255) not null,
    ProductType VARCHAR(255) not null,
    Product VARCHAR(255) not null,  
    ProductBrand VARCHAR(255) not null,
    ProductColor VARCHAR(255) not null,
    UnitCost DECIMAL(10, 2) not null,
    UnitPrice DECIMAL(10, 2) not null,
	PRIMARY KEY (ProductNumber)
);

CREATE TABLE goMethods (
    OrderMethodCode INT not null,
    OrderMethodType VARCHAR(255) not null,
    PRIMARY KEY (OrderMethodCode)
);

CREATE TABLE goDailySales (
    RetailerCode INT not null,
    ProductNumber INT not null,
    OrderMethodCode INT not null,
    Date varchar(255) not null,
    Quantity INT not null,
    UnitPrice DECIMAL(10, 2) not null,
    UnitSalePrice DECIMAL(10, 2) not null,
    FOREIGN KEY (RetailerCode) REFERENCES goRetailers (RetailerCode),
    FOREIGN KEY (ProductNumber) REFERENCES goProducts (ProductNumber),
    FOREIGN KEY (OrderMethodCode) REFERENCES goMethods (OrderMethodCode)
);

CREATE TABLE consumerComplaints (
	ComplaintIndex INT not null,
    Complaint INT not null,
    Product varchar(255) not null,
    SubProduct varchar(255),
    Issue varchar(4000),
    SubIssue varchar(4000),
    State varchar(3),
    ZIPCode INT,
    DateRecieved date,
    DateSentToCompany date,
    Company varchar(255),
    CompanyResponse varchar(255),
    TimelyResponse ENUM('Yes','No'),
    ConsumerDisputed ENUM('Yes','No','Unknown') DEFAULT 'Unknown',
    PRIMARY KEY (Complaint)
);



