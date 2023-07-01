use MegaInternship;
create table Sales_order_info (
Product_ID Double
,Category varchar(100)
,Sub_Category varchar(100)
,Product_Name varchar(100)
,Sales Double
,Quantity Integer
, per_quantity_price Double
, sales_type varchar(10)
,Discount Double
,Profit Double
, Loss Integer)


SELECT SUBSTRING(Product_ID,8, length(Product_ID)) as "product id" from Salesdata;

Select Sales/Quantity as per_quantity_price from salesdata;

Select 
	Case 
			when sales >= 1000 Then 'Super'
			when sales >= 400 and sales < 1000 Then 'Average'
            when sales < 400 Then 'Low'
	End as sales_type 
From salesdata;


Select 
	Case
		when profit < 0 Then 1
        when profit > 0 Then 0
	End as cLoss
from salesdata;





SELECT SUBSTRING(Product_ID,8, length(Product_ID)) as "product id",
Category,Sub_Category,Product_Name,Sales,Quantity,
Sales/Quantity as per_quantity_price 
,	Case 
			when sales >= 1000 Then 'Super'
			when sales >= 400 and sales < 1000 Then 'Average'
            when sales < 400 Then 'Low'
	End as sales_type ,
    Discount,
	Case
		when profit < 0 Then 1
        when profit > 0 Then 0
	End as cLoss
from Salesdata;



insert into Sales_order_info 
(Product_ID,Category,Sub_Category,Product_Name,Sales,Quantity
,per_quantity_price,sales_type,Discount,Profit,Loss)
(
SELECT SUBSTRING(Product_ID,8, length(Product_ID)) as "product id",
Category,Sub_Category,Product_Name,Sales,Quantity,
Sales/Quantity as per_quantity_price 
,	Case 
			when sales >= 1000 Then 'Super'
			when sales >= 400 and sales < 1000 Then 'Average'
            when sales < 400 Then 'Low'
	End as sales_type ,
    Discount,Profit,
	Case
		when profit < 0 Then 1
        when profit > 0 Then 0
	End as cLoss
from Salesdata);

