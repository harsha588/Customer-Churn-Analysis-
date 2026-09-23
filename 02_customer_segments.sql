/*
===============================================================================
Customer Churn & Retention Analysis
===============================================================================

Objective 2: Identify Customer Segments with Higher Churn

Purpose:
    - Identify customer segments with relatively higher churn rates.
    - Compare churn rates across different customer characteristics.

Customer Characteristics Analyzed:
    - Gender
    - Senior Citizen
    - Partner
    - Dependents

Business Questions:
    1. Which customer segments have higher churn rates?
    2. Does churn vary by senior-citizen status?
    3. Does churn vary by partner or dependent status?
    4. Which customer characteristics are associated with higher churn?

SQL Functions Used:
    - COUNT()
    - SUM()
    - ROUND()
    - GROUP BY
    - UNION ALL
===============================================================================
*/


/*Requirement:
Identify customer segments that have relatively higher churn rates.
*/
select * 
from customer_churn;


-- Which customer segments have higher churn rates?
-- Churn Rate by Gender
select Gender,
		count(*) as total_customer,
        sum(`Churn Label` = 'Yes') as `churned_customers`,
        round
			(sum(`Churn Label` = 'Yes')* 100.0	 / count(*),2)
        as `churn_rates`		
from customer_churn
group by Gender
order by churn_rates desc;


-- Does churn vary by senior-citizen status?

select 
		`Senior Citizen`,
		count(*) as total_customer,
        sum(`Churn Label` = 'Yes') as `churned_customers`,
        round
			(sum(`Churn Label` = 'Yes')* 100.0	 / count(*),2)
        as `churn_rates`		
from customer_churn
group by `Senior Citizen`
order by churn_rates desc;


-- Does churn vary by partner or dependent status?
select 
		'Partner' as Segments,
		Partner as Status,
		count(*) as total_customer,
        sum(`Churn Label` = 'Yes') as `churned_customers`,
        round
			(sum(`Churn Label` = 'Yes')* 100.0	 / count(*),2)
        as `churn_rates`		
from customer_churn
group by Partner	
union all
select 
		'Dependents' as Segments,
		Dependents as Status,
		count(*) as total_customer,
        sum(`Churn Label` = 'Yes') as `churned_customers`,
        round
			(sum(`Churn Label` = 'Yes')* 100.0	 / count(*),2)
        as `churn_rates`		
from customer_churn
group by Dependents
order by Segments,churn_rates desc;


-- 4. Which customer characteristics are associated with higher churn?

select
		'Gender' as characteristic,
		Gender,
		count(*) as total_customer,
        sum(`Churn Label` = 'Yes') as `churned_customers`,
        round
			(sum(`Churn Label` = 'Yes')* 100.0	 / count(*),2)
        as `churn_rates`		
from customer_churn
group by Gender

UNION ALL 
select 
		'Senior Citizen' as characteristic,
		`Senior Citizen`,
		count(*) as total_customer,
        sum(`Churn Label` = 'Yes') as `churned_customers`,
        round
			(sum(`Churn Label` = 'Yes')* 100.0	 / count(*),2)
        as `churn_rates`		
from customer_churn
group by `Senior Citizen`

union all
select 
		'Partner' as characteristic,
		Partner as Status,
		count(*) as total_customer,
        sum(`Churn Label` = 'Yes') as `churned_customers`,
        round
			(sum(`Churn Label` = 'Yes')* 100.0	 / count(*),2)
        as `churn_rates`		
from customer_churn
group by Partner	
union all
select 
		'Dependents' as characteristic,
		Dependents as Status,
		count(*) as total_customer,
        sum(`Churn Label` = 'Yes') as `churned_customers`,
        round
			(sum(`Churn Label` = 'Yes')* 100.0	 / count(*),2)
        as `churn_rates`		
from customer_churn
group by Dependents
order by churn_rates desc;
