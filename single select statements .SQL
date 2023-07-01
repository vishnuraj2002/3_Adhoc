use MegaInternship;
Select count(*) from (
Select distinct order_id from salesdata) as t1;

Select count(*) from (
Select distinct product_name from Sales_order_info) as t2;

Select count(*) from (
Select distinct Segment from salesdata) as t3;

Select max(STR_TO_DATE(Order_Date,'%d-%m-%Y')) as Recent_Order_Date from salesdata;

Select min(STR_TO_DATE(Order_Date,'%d-%m-%Y')) as Old_Order_Date from salesdata;

Select Customer_ID,Customer_Name from salesdata where STR_TO_DATE(Order_Date,'%d-%m-%Y') in 
(Select max(STR_TO_DATE(Order_Date,'%d-%m-%Y')) as Recent_Order_Date from salesdata);

Select sum(if(State = "Texas",1,0)) as No_of_cust_texas,
	   sum(if(State = "New York",1,0)) as No_of_cust_New_york 
from salesdata 
where State = "Texas" or State = "New york";
