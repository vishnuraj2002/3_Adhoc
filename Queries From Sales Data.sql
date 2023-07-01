use MegaInternship;
SELECT SUBSTRING(Order_ID, INSTR(Order_ID, "-")+1, length(Order_id)) as Order_id from Salesdata;

SELECT  month(STR_TO_DATE(Order_Date,'%d-%m-%Y')) as Order_month,
		year(STR_TO_DATE(Order_Date,'%d-%m-%Y')) as Order_Year
 from Salesdata;

SELECT SUBSTRING(Customer_id , INSTR(Customer_id , "-")+1, length(Order_id)) as Customer_id from Salesdata;

SELECT CONCAT(Region,'_',Country,'_', city,'_', state) AS location_info  from salesdata;
 