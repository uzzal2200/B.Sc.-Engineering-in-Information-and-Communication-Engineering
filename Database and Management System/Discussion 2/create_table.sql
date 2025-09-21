

CREATE TABLE CustomerAndSuppliers 
( 
cusl_id CHAR (6) PRIMARY KEY CHECK (cusl_id LIKE '[CS][0-9][0-9][0-9][0-9][0-9]'), 
cusl_fname CHAR(15) NOT NULL, 
cusl_lname VARCHAR (15), 
cusl_address TEXT, 
cusl_telno CHAR (12) CHECK (cusl_telno LIKE '[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'), 
cusl_city CHAR (12) DEFAULT 'Rajshahi', 
sales_amnt MONEY CHECK (sales_amnt>=0), 
proc_amnt MONEY CHECK (proc_amnt>=0) 
) 

select * from CustomerAndSuppliers 
 
 INSERT CustomerAndSuppliers 
(cusl_id,cusl_fname,cusl_lname,cusl_address,cusl_telno,cusl_city,sales_amnt,proc_amnt) VALUES 
('C00002','uzzal','Hasan','221/B sherpur','017-61890982','sherpur',10,00) 



 INSERT CustomerAndSuppliers 
(cusl_id,cusl_fname,cusl_lname,cusl_address,cusl_telno,cusl_city,sales_amnt,proc_amnt) VALUES 
('C00009','sohel','boka','221/B Brammon','017-60090982','Brahmon',80,00) 

UPDATE CustomerAndSuppliers 
SET cusl_lname = 'chandra'
where cusl_id = 'c00009
'