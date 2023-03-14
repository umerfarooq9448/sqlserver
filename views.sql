use amazon

-- view of product and category
create view V_ListOfProducts as
select p.Productname , c.CategoryName From ProductTable p,Category c where p.CategoryId = c.CategoryId;

select * from V_ListOfProducts

--
create View V_ListOfUsersWithMoreThan10 as
select 


-- create product view VIew
create View V_ProductName as
select p.ProductName,p.ProductDescription,p.ProductPrice ,p.ManufactureDate, p.ExpiryData, p.Stock , c.CategoryName, Company.CompanyName from ProductTable p, Category c ,Company where p.CategoryId=c.CategoryId and p.CompanyId = Company.CompanyId


select * from V_ProductName



--search a product based on category
create procedure sp_SearchBasedonCategory @category varchar(20)		
as													
begin										
select * from V_ListOfProducts where CategoryName=@category
end

exec sp_SearchBasedonCategory Laptop


-- to get the max product
create View V_DetailsOfProductSold As
select p.ProductName , count( o.ProductId) as MaxCount from ProductTable p, Orders o where p.ProductID = o.ProductID group by p.ProductName


select  ProductName, MaxCount from V_DetailsOfProductSold where MaxCOunt=(select Max(MaxCount) from V_DetailsOfProductSold)


-- 
select  from 
