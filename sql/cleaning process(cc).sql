-- 1. Remove Duplicates
-- 2. Standardize the Data -> If there is an issue with the spellings etc,..
-- 3. Null values or blank values
-- 4. Remove Any Column if unnecessary

SET GLOBAL local_infile = 1;

SHOW VARIABLES LIKE 'local_infile';

use customer_churn; 

select * from customer_churn;

select count(*)
from customer_churn;

-- 1. check for Duplicates 

SELECT 
    CustomerID,
    COUNT(*) AS count
FROM customer_churn
GROUP BY CustomerID
HAVING COUNT(*) > 1;


SELECT COUNT(*) AS total_rows
FROM customer_churn;

SELECT COUNT(DISTINCT CustomerID) AS unique_customers
FROM customer_churn;

-- 2. Standardize the Data -> No Issue

-- 3. Null values or blank values
select `Churn Label`
from customer_churn
where `Churn Label` is null;  

select count(*) as missing_count
from customer_churn
where `Tenure Months` is null;

-- 4. Remove Any Column if unnecessary
alter table customer_churn
drop column `Count`,
drop column `Country`,
drop column `State`,
drop column `Zip Code`,
drop column `Lat Long`,
drop column `Latitude`,
drop column `Longitude`,
drop column `Churn Value`,
drop column `Churn Score`;

describe customer_churn;


alter table customer_churn
add column `Churn Value` int;

update `customer_churn` 
set `Churn Value` = 
	case
		when `Churn Label` = 'Yes' then 1
        when `Churn Label` = 'No' then 0
	end;