-- Requirement:
-- Analyze the overall customer churn and retention situation of the telecommunications company.

-- 1. What is the total number of customers?
select count(distinct CustomerID) as Total_customers
from customer_churn;

-- 2. How many customers have churned?

select `Churn Label`,
		count(*)
from customer_churn
where `Churn Label` = 'Yes';

-- 3. What is the overall churn rate?

select 
		round(sum(`churn label` = 'Yes') * 100 / count(*),2)
        as `churn rate`
from customer_churn;

-- 4. What percentage of customers have been retained?

select 
		round(
				100 - (sum(`churn Label` = 'Yes') * 100.0 / count(*)),2)
                as `retained customers`
from customer_churn;

/*
SELECT
    SUM(`Churn Value` = 0) AS retained_customers,
    SUM(`Churn Value` = 1) AS churned_customers
FROM customer_churn;
*/




























