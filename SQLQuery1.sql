create database NimapInfotechTask
use NimapInfotechTask

create table Category(CId int primary key identity(1,1),CategoryName varchar(50))

insert into Category values('Electronics'),('Clothing')

create table Product (ProductId int primary key identity(1,1),ProductName varchar(50),
CategoryId int foreign key references Category(CId))

insert into Product values('Dell',1),('Jeans',1)

select * from Product
select * from Category


create procedure SpGetCategory
as
begin
select * from Category 
end


create procedure SpGetCategoryById(@CId int)
as 
begin
Select * from Category where CId=@CId 
end


create procedure SpInsertCategory(@CategoryName varchar(50))
as 
begin
insert into Category values(@CategoryName)
end


create procedure SpUpdateCategory(@CId int, @CategoryName varchar(50))
as
begin
update Category set CategoryName=@CategoryName where CId=@CId
end



create procedure SpDeleteCategory(@CId int)
as
begin
Delete from Category where CId=@CId
end



create procedure SpGetProduct
as
begin
select * from Product 
end

create procedure SpGetProducts
as
begin
select * from Product
inner join Category
on Product.CategoryId=Category.CId
end

exec SpGetProducts

create procedure SpGetProductById(@ProductId int)
as 
begin
Select * from Product where ProductId=@ProductId 
end

create procedure SpInsertProduct(@ProductName varchar(50),@CategoryId int)
as 
begin
insert into Product values(@ProductName,@CategoryId)
end


create procedure SpUpdateProduct(@ProductId int, @ProductName varchar(50),@CategoryId int)
as
begin
update Product set ProductName=@ProductName,CategoryId=@CategoryId where ProductId=@ProductId
end



create procedure SpDeleteProduct(@ProductId int)
as
begin
Delete from Product where ProductId=@ProductId
end


use ProductsDb
select * from Product
select * from Categories


insert into Products

sp_help Products

select * from Product


select * from Products

insert into Categories values('Electronics'),('Clothing'),('Grocery')

insert into Products values ('Dell',1),('lenovo',1),('colombo',2),('sugar',3)

