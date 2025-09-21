use pubs;



--- ############# Discussion 1 #############
--- show all table name query
SELECT name FROM sys.tables;


--- 1. Knowing the names of all the tables in a database.
select* from sysobjects
select name from sysobjects where xtype='U'


--- 2. Show all/specific records with all/ specific fields from a table . 

--- To show all the records with all the fields, the command is 
select* from authors
select address from authors
select au_id, phone from authors
select phone, au_id from authors

--- ii) To show all the records with specific fields, the command is,
select au_lname, city, state from authors

--- iii) To show all fields of specific records satisfying a condition, the command is 
select* from authors where city='Covelo'
select* from authors where au_lname='Green'
select* from authors where state='CA' and au_lname='White'


--- Task1: Show the name of the books which have yearly total sales of more than 8000. 
--- Task2: Show the name of the books which have royalty of 12 to 24. 
select* from titles
select title from titles

select title from titles where ytd_sales>8000

select title from titles where royalty>12 and royalty<24
select title from titles where  price>20


--- 3 Showing ordered list 

select price from titles order by price asc
select price from titles order by price desc


--- 4 Showing aggregate values
select max(price) from titles

select min(price) from titles

select avg(price) from titles

select count(price) from titles



--- 5 Showing aggregate values within groups
select* from titles
select type, max(price) from titles group by type
select pub_id,  avg(ytd_sales) from titles group by pub_id


--- 6 Showing aggregate values within groups having some condition
select type, avg(price) from titles group by type having avg(price)>15

---   Task3 Show average price of the books of each type, the total yearly sales of that book type along with book type
select type, avg(price) as avgprice, sum(ytd_sales) from titles group by type


--- 7 Showing formatted string with customized header

select "Name"=SUBSTRING(au_fname,1,1) + '.' + au_lname, phone from authors


--- Distnict opearion

select distinct city from authors


--- ############# Discussion 2 #############


--- 1. Joining Tables (Inner join] 
select* from authors
select* from titleauthor
select* from  titles
select* from publishers

select name from sys.tables

select au_lname, title_id from authors join titleauthor on authors.au_id = titleauthor.au_id

 
---Task 1: 
---i) Show the title of a book, the corresponding author name. 
---ii) Show the title of a book, the corresponding author and publisher name. 

select au_fname, au_lname, title from authors join titleauthor on authors.au_id = titleauthor.au_id join titles on titles.title_id = titleauthor.title_id

select au_fname +' '+ au_lname as author_name, title, pub_name from authors  join titleauthor on authors.au_id = titleauthor.au_id join titles on titles.title_id = titleauthor.title_id 
join publishers on titles.pub_id = publishers.pub_id


---  2. The Cartesian product 
select au_lname,pub_name from authors,publishers where authors.city=publishers.city
select au_lname,pub_name from authors,publishers 

--- iii) Show the author name, city, publisher name and city only for which the authors and the publishers live in the same city 
select* from authors
select* from publishers

select au_fname +' '+ au_lname as author_name, publishers.city , pub_name from authors join publishers on authors.city = publishers.city

---  3. Nested query 

select* from titles where royalty = (select avg(royalty) from titles)

select  (au_fname +' '+au_lname) as author_name  from authors
  join titleauthor on titleauthor.au_id= authors.au_id join titles on  (titleauthor.title_id=titles.title_id)
 where (royalty in(select avg(royalty ) from titles))

select  au_id from titles join titleauthor on  titles.title_id = titleauthor.title_id where royalty = (select max(royalty) from titles)

select title_id  from titles where royalty =(select max(royalty) from titles)

select au_id  from titles,titleauthor where royalty=(select max(royalty) from titles)

--- 4. Creating a table: 

CREATE TABLE CustomerAndSupplier
( 
    cusl_id CHAR(6) PRIMARY KEY CHECK (cusl_id LIKE '[CS][0-9][0-9][0-9][0-9][0-9]'), 
    cusl_fname CHAR(15) NOT NULL, 
    cusl_lname VARCHAR(15), 
    cusl_address TEXT, 
    cusl_telno CHAR(12) CHECK (cusl_telno LIKE '[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'), 
    cusl_city CHAR(12) DEFAULT 'Rajshahi', 
    sales_amnt MONEY CHECK (sales_amnt >= 0), 
    proc_amnt MONEY CHECK (proc_amnt >= 0)
);


INSERT INTO CustomerAndSupplier
(cusl_id, cusl_fname, cusl_lname, cusl_address, cusl_telno, cusl_city, sales_amnt, proc_amnt) 
VALUES 
('C00001', 'Iqbal', 'Hossain', '221/B Dhanmondi', '017-00000000', 'Dhaka', 0, 0);

select* from CustomerAndSupplier




CREATE TABLE Item 
( item_id CHAR (6) primary key check (item_id like '[P][0-9][0-9][0-9][0-9]'),

item_name char (12),
item_category char (10),
item_price float (12),
item_qoh int check(item_qoh>=0),
item_last_sold datetime  default getdate()
)


insert Item(item_id ,item_name,item_category,item_price ,item_qoh ,item_last_sold)
values('P0009','tofail','phone',57.8,23,'3-2-15')


insert Item(item_id ,item_name,item_category,item_price ,item_qoh )
values('P0002','tofail ah','laptop',56.8,23)

insert Item(item_id ,item_name,item_category,item_price ,item_qoh )
values('P0003','uzzal','car',100.8,24)

insert Item(item_id ,item_name,item_category,item_price ,item_qoh )
values('P0004','noamn','bus',200.8,25)

insert Item(item_id ,item_name,item_category,item_price ,item_qoh )
values('P0005','mahim','track',300.8,27)
select* from Item

--- delete opeartion
delete from Item where item_id='p0005'


--- Update operation

update Item set item_name='roble' where item_id='P0004'

--- Task 4
create table Transections
(
tran_id  character(10) primary key check (tran_id like '[T][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
item_id character(6) foreign key references Item(item_id),
cusl_id character(6) foreign key references CustomerAndSupplier(cusl_id),
tran_type character(1),
tran_quantity int check (tran_quantity >= 0),

tran_date datetime default getdate()

)
select* from Transections

-- INSERT INTO Transactions table
INSERT INTO Transections (tran_id, item_id, cusl_id, tran_type, tran_quantity) 
VALUES ('T000000001', 'P0002', 'C00001', 's', 10);

--- ########## Discussion 3 ##########---

--- Stored Procedure 
   DROP PROCEDURE sp_showTitleAndAuthor;

CREATE PROC sp_showTitleAndAuthor
AS
BEGIN
SELECT "Authors Last Name"=au_lname FROM authors where au_id in (select au_id from
titleauthor where title_id='BU1032')
END

EXEC sp_showTitleAndAuthor

--- Parameterized Stored procedure 

alter proc sp_showTitleAndAuthor @titleid char(15)
as 
begin
SELECT "Authors last name"=au_lname FROM authors WHERE au_id in
(SELECT au_id from titleauthor WHERE title_id=@titleid)

end

EXEC sp_showTitleAndAuthor 'BU1111'


---  Stored procedures with decision making/looping construct

create proc sp_updatePrice @titleid char(15)
as 
begin
declare @price money 
select @price = price from titles where title_id=@titleid
set @price = @price + 0.1* @price 
if @price <=20

update titles set price=@price where title_id = @titleid

end

exec sp_updatePrice 'BU2075'




--- stored procedure 
alter proc sp_updatePrice @titleid CHAR(15)
as
begin 
declare @price money
select @price = price from titles where title_id = @titleid 
set @price = @price + 0.1*@price
if @price <=20
begin
update titles set price=@price where title_id = @titleid
update titles set messag = 'updated' where title_id = @titleid
end
else
begin
update titles set messag='not updated' where title_id = @titleid
end

end

exec sp_updatePrice 'PS2091'
alter table titles add messag text
select * from titles

---- Task 1: 

alter proc sp_showTitleAndAuthor 
as
begin
select 'Category' = item_category, 'Total number of items'=sum(item_qoh), 
'Average Price' = avg(item_price) from Item group by item_category
end

exec sp_showTitleAndAuthor


--- Task 2
alter proc sp_showTitleAndAuthor @category_name char (15), @price_value money 
as
begin 
select* from Item where item_category = @category_name and item_price < @price_value
end 
exec sp_showTitleAndAuthor 'laptop',70

select* from Item


--- Task 3


alter proc sp_showTitleAndAuthor @catagory_name char(15),@price_value money
as 
begin 
 declare @price money
 select @price=avg(item_price) from item where item_category=@catagory_name
    
     while  @price<@price_value
        begin
          update item set item_price=item_price+item_price*.1 where item_category=@catagory_name
          select @price=avg(item_price) from item where item_category=@catagory_name
        end 
end
exec sp_showTitleAndAuthor 'phone',40
select avg(item_price) from item where item_category='phone'
select * from item



alter proc sp_showTitleAndAuthor @catagory_name char(15),@price_value money
as 
begin 
select * from item where item_category=@catagory_name and item_price=@price_value
end 
exec sp_showTitleAndAuthor 'Tab',12.1

select * from item


---########### Discussion 4 ##############

create trigger test_on on Item for insert
as
begin 
print 'Data inserted in Item Table'
end




create table Transections
(
tran_id  character(10) primary key check (tran_id like '[T][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
item_id character(6) foreign key references Item(item_id),
cusl_id character(6) foreign key references CustomerAndSupplier(cusl_id),
tran_type character(1),
tran_quantity int check (tran_quantity >= 0),

tran_date datetime default getdate()

)

select * from Transections
create trigger trg_update on Transections for insert 
as
begin 
declare 
@item_id char (6),
@tranamount int,
@tran_type char(1)
select @item_id = item_id,@tranamount=tran_quantity, @tran_type=tran_type from inserted
if ( @tran_type ='s')
update Item set item_qoh=item_qoh- @tranamount where item_id=@item_id
else
update Item set item_qoh=item_qoh+@tranamount where item_id = @item_id

end

select* from Transections
insert into Transections(tran_id,item_id, cusl_id, tran_type, tran_quantity) values
('T000000008', 'P0004','C00001','s',5)
select* from Item

select * from CustomerAndSupplier;


 ---Task 1: Write a trigger on Transaction that automatically updates the sold_amnt or proc_amnt field of
 --- CustomersAndSuppliers table whenever a transaction happens

CREATE TRIGGER UpdateCustomerAndSupplierAmounts
ON Transections
AFTER INSERT
AS
BEGIN
    -- Declare variables to hold the calculated amounts
    DECLARE @Amount MONEY;
    DECLARE @TranType CHAR(1);
    DECLARE @CustomerID CHAR(6);
    DECLARE @ItemID CHAR(6);
    DECLARE @ItemPrice MONEY;

    -- Get the transaction details from the inserted row
    SELECT @TranType = tran_type, 
           @CustomerID = cusl_id, 
           @ItemID = item_id, 
           @ItemPrice = item_price, 
           @Amount = item_price * tran_quantity
    FROM inserted i
    JOIN Item it ON i.item_id = it.item_id;

    -- Update the corresponding customer or supplier field based on the transaction type
    IF @TranType = 'c'  -- Customer transaction (Sales)
    BEGIN
        -- Update the sales amount for customers
        UPDATE CustomerAndSupplier
        SET sales_amnt = sales_amnt + @Amount
        WHERE cusl_id = @CustomerID;
    END
    ELSE IF @TranType = 's'  -- Supplier transaction (Purchase)
    BEGIN
        -- Update the procurement amount for suppliers
        UPDATE CustomerAndSupplier
        SET proc_amnt = proc_amnt + @Amount
        WHERE cusl_id = @CustomerID;
    END
END;



INSERT INTO Transections (tran_id, item_id, cusl_id, tran_type, tran_quantity) 
VALUES ('T000000004', 'P0002', 'C00002', 's', 10);

SELECT * FROM CustomerAndSupplier;



--- Extra ---------

-- Create Table 'Products'
CREATE TABLE Products
(
	ProductId int NOT NULL Identity(1,1) PRIMARY KEY,
	ProductName VARCHAR(200) NOT NULL,
	BrandName VARCHAR(200) NOT NULL,
	ReceiveDate DATE NULL,
	AvailableStock FLOAT NOT NULL,
	Price MONEY NOT NULL,
	CreateDate DateTime not null default getdate(),
	ModifyDate DateTime not null default getdate()
);



-- Inser Data
INSERT INTO Products (ProductName, BrandName, ReceiveDate, AvailableStock, Price)
VALUES 
('Logitech MX Master 3', 'Logitech', '2022-07-18', 100, 99.99),
('Apple Magic Keyboard', 'Apple', '2022-03-28', 200, 199.99),
('Samsung T7 Portable SSD', 'Samsung', '2022-04-15', 150, 179.99),
('990 Pro 2TB SSD', 'Samsung', '2022-09-07', 300, 279.99),
('Magic Mouse', 'Apple', '2022-03-28', 50, 99.99),
('SIGNATURE K650', 'Logitech', '2022-03-28', 100, 49.99),
('870 Evo SATA 250GB', 'Samsung', '2022-03-28', 75, 49.99),
('MX Key Mini', 'Logitech', '2022-03-28', 200, 99.99),
('Samsung T5 Portable SSD', 'Samsung', '2022-03-28', 100, 197.99),
('AirTag Leasther Loop', 'Apple', '2022-03-28', 20, 39.99)


INSERT INTO Products (ProductName, BrandName, ReceiveDate, AvailableStock, Price)
VALUES

('uzzzzal', 'dim', '2021-05-28', 20, 39.99)



INSERT INTO Products (ProductName, BrandName, ReceiveDate, AvailableStock, Price)
VALUES

('abirl', 'laptop', '2021-05-20', 20, 40.99)

-- Create Table AuditRecord
CREATE TABLE AuditRecord
(
	RecordId INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	ActionName VARCHAR(50) NOT NULL,
	TableName VARCHAR(50) NOT NULL,
	PK int,
	ColumnName VARCHAR(50) NULL,
	PreviousValue VARCHAR(500) NULL,
	ModifedValue VARCHAR(500) NULL,
	CreateDate DATETIME NOT NULL DEFAULT GETDATE() 
);

create trigger TR_Products_Insert
ON Products after insert
AS

BEGIN
	insert into AuditRecord (ActionName, TableName)
	values ('Insert', 'Products');

	print('This is a trigger!');

END;


-- ALTER Trigger
alter trigger TR_Products_Insert
ON Products instead of insert
AS

BEGIN
	insert into AuditRecord (ActionName, TableName)
	values ('Insert', 'Products');

	print('This is a trigger!');

END;

select* from Products
select* from AuditRecord



--- Previsou Year Question Solve

select* from authors
select* from titleauthor
select* from titles
select* from sales
select* from publishers

-- a. Show book title, author name (first initial + last name), publisher name
select "author name" = SUBSTRING(au_fname, 1,1)+ '.' + au_lname, title, pub_name from authors join titleauthor
on authors.au_id = titleauthor.au_id join titles on titles.title_id=titleauthor.title_id 
join publishers on publishers.pub_id = titles.pub_id


-- b. Titles with total quantity sold > 40, sorted ascending
select title, sum(qty) as total_qty  from titles join sales on titles.title_id = sales.title_id group by title having sum(qty) >40 order by total_qty asc

-- c. Stored Procedure to increase price until desired average

create proc soted_procedure
as
begin 
select "au name"=au_lname from authors where au_id in 
(select au_id from titleauthor where title_id='BU1032')
end


select* from Transections
select* from Item

exec soted_procedure

alter proc soted_procedure @category_name char(10), @price_value money
as
begin
declare @price money
select @price = avg(item_price) from Item where @category_name = item_category

while @price < @price_value
begin 
update Item set item_price = item_price + 0.1 * item_price where @category_name = item_category
select @price = avg(item_price) from Item where @category_name = item_category
end

end

exec soted_procedure 'laptop', 60


create table GoldenBasket
(
 customer_id char (6)  primary key check (customer_id like '[C][U][0-9][0-9][0-9][0-9]'),
 name varchar (15),
 phone_number varchar (15) check (phone_number like '[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
 gender char (1)

)
select* from GoldenBasket

insert into GoldenBasket(customer_id,name, phone_number,gender) values
('CU0001', 'uzzal', '017-10236514', 'M')


insert into GoldenBasket(customer_id,name, phone_number,gender) values
('CU0002', 'Nusrat Jahan', '018-87654321', 'F'),
('CU0003', 'Karim Ahmed', '019-11112222', 'M');
update GoldenBasket set phone_number = '019-20253035' where customer_id = 'CU0001'

create table product
(
product_id char(10) primary key check (product_id like '[P][R][0-9][0-9][0-9][0-9]'),
product_name varchar (20) not null,
price float check (price > 0),
quantity_available int check (quantity_available > 0)
)

-- 6. Insert Dummy Data into Products
INSERT INTO product (product_id, product_name, price, quantity_available)
VALUES
('PR0001', 'Laptop', 75000, 10),
('PR0002', 'Mobile', 25000, 50),
('PR0003', 'Chair', 3000, 100);

select* from product

-- 4. Create Purchases Table
CREATE TABLE Purchases
(
    Purchase_ID INT PRIMARY KEY,
    customer_id CHAR(6) foreign key references GoldenBasket(customer_id),
    product_id CHAR(10) foreign key references product(product_id),
    Enrollment_date DATETIME DEFAULT GETDATE(),

);

insert into Purchases(Purchase_ID,customer_id, product_id,Enrollment_date)
values (111, 'CU0001', 'PR0001', 12-12-2024)

INSERT INTO Purchases (Purchase_ID,customer_id, product_id)
VALUES
(123,'CU0002', 'PR0002'),
(124,'CU0003', 'PR0003');

select* from Purchases
select* from product
select* from GoldenBasket

--- Apply trigger to update the Quantity_Available field of the table Products whenever a product is purchased.

CREATE TRIGGER UpdateProductQuantity
ON Purchases
AFTER INSERT
AS
BEGIN
    -- Update the quantity available in the Products table
    UPDATE product
    SET quantity_available = quantity_available - 1
    FROM product
    INNER JOIN inserted i
    ON product.product_id = i.product_id;
END;


INSERT INTO Purchases (Purchase_ID, customer_id, product_id)
VALUES (125, 'CU0001', 'PR0001');

