use myShop;
create table Categories(
CategoryID integer auto_increment primary key,
CategoryName varchar(50),
Description varchar(100)
);



create table Suppliers(
SuppliersID integer auto_increment primary key,
SuppliersName varchar(50),
City varchar(50),
Country varchar(50)
);



create table Products(
ProductID integer auo_increment primary key,
ProductName varchar(50),
SupplierID integer,
CategoryID integer,
Price decimal,
foreign key (SupplierID) REFERENCES Suppliers(SuppliersID ),
foreign key (CategoryID) REFERENCES Categories(CategoryID )
);



INSERT INTO Suppliers (SuppliersName  , City ,Country  )
VALUES 
('Exotic Liquid','London','UK'),
('New Orleans Cajun Delight','New Orleans','USA'),
('Grandma Kelly’s Homestead','Ann Arbor','USA'),
('Tokyo Traders','Tokyo','Japan'),
('Cooperativa de Quesos ‘Las Cabras’','Oviedo','Spain');



INSERT INTO Categories (CategoryName, Description )
VALUES 
('Beverages','Soft drinks, coffees, teas, beers, and ales'),
('Condiments','Sweet and savory sauces, relishes, spreads, and seasonings'),
('Confections','Desserts, candies, and sweet breads'),
('Dairy Products','Cheeses'),
('Grains/Cereals','Breads, crackers, pasta, and cereal');



INSERT INTO Products (ProductName   , SupplierID  ,CategoryID , Price)
VALUES 
('Chais','1','1','18.00'),
('Chang','1','1','19.00'),
('Aniseed Syrup','1','2','10.00'),
('Chef Antons Cajun ','2','2','22.00'),
('Chef Anton Gumbo Mix','2','2','21.35');



SELECT * FROM Products   WHERE ProductName LIKE 'C%';



SELECT ProductID, ProductName,SupplierID,CategoryID,Min(Price) from  Products



SELECT sum(Price) from Products, Suppliers
WHERE Suppliers.Country   ="USA";




SELECT ProductID AS Product_ID ,
                SuppliersName AS Suppliers_Name,
                CategoryName AS Category_Name,
                ProductName AS Product_Name
FROM Categories c
         INNER JOIN Products pon c.CategoryID = p.CategoryID
         INNER JOIN Suppliers S on p.SupplierID = S.SuppliersID
WHERE CategoryName = 'Condiments';



# INSERT INTO DATA IN TABLE Suppliers
INSERT INTO Suppliers (suppliersname, city, country)
    VALUE ('Norske Meierier','Львів','Україна');
# INSERT INTO DATA IN TABLE Categories
INSERT INTO Categories  (categoryname, description)
    VALUE ('Напої','Без алкогольні'),
            ('Condiments','Сорти чаю');
# INSERT INTO DATA IN TABLE Products
INSERT INTO Products ( productname, supplierid, categoryid, price)
    VALUE ('Зелений чай',1,1,10),
            ('Condiments',1,2,0);
