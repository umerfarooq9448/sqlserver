use amazon
CREATE TABLE UserLog  (
    loginId int NOT NULL,
    UserId int NOT NULL,
    LogInDate date,

);

CREATE TABLE Category  (
    CategoryId int NOT NULL Primary key,
    CategoryName varchar(50) NOT NULL,
    
);

CREATE TABLE Company  (
    CompanyId int NOT NULL Primary key,
    CompanyName varchar(50) NOT NULL,
    
);

CREATE TABLE Role  (
    RoleID int NOT NULL Primary key,
    RoleName varchar(50) NOT NULL,
    
);

CREATE TABLE UserTable  (
    userID int NOT NULL Primary key,
    FirstName varchar(50) NOT NULL,
	LastName varchar(50) NOT NULL,
	UserName varchar(50) NOT NULL,
	UserPassword varchar(50) NOT NULL,
	RoleId int NOT NULL ,
	FOREIGN KEY (RoleId) REFERENCES Role(RoleID)

    
);

CREATE TABLE ProductTable  (
    ProductID int NOT NULL Primary key,
    ProductName varchar(50) NOT NULL,
	ProductDescription varchar(50) NOT NULL,
	ProductPrice int NOT NULL,
	ManufactureDate date NOT NULL,
	ExpiryData date NOT NULL,
	Stock int NOT NULL ,
	CategoryId int NOT NUL ,
	CompanyId int NOT NULL ,

	Foreign key (CategoryId) References Category(CategoryId),

	FOREIGN KEY (CompanyId) REFERENCES Company(CompanyId)

    
);

alter table ProductTable Add foreign key (UserId) references UserTable(UserID)

create Table Orders(

OrderID Int NOT null Primary Key,
userID Int Not Null,
ProductId Int Not NUll,

foreign key (userID) references UserTable(userID),
foreign key (ProductId) references ProductTable(ProductID)




);







