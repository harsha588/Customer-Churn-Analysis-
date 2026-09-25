/*
===============================================================================
Customer Churn & Retention Analysis
===============================================================================

Objective 5: Analyze Churn Reasons

Requirement:
    Identify the major reasons customers leave the telecommunications company
    and determine the most common churn patterns.

Purpose:
    - Identify the most common reasons for customer churn.
    - Determine which churn reasons account for the largest proportion of
      churned customers.
    - Analyze whether high-value customers are associated with specific
      churn reasons.

Business Questions:
    1. What are the most common reasons customers churn?
    2. Which churn reasons account for the largest proportion of all
       churned customers?
    3. Are high-value customers associated with specific churn reasons?

SQL Functions Used:
    - COUNT()
    - ROUND()
    - AVG()
    - MIN()
    - MAX()
    - GROUP BY
    - ORDER BY
    - Subquery
===============================================================================
*/

select *
from customer_churn;
-- What are the most common churn reasons?

select
    `Churn Reason` as churn_reason,
    count(*) as churned_customers
from customer_churn
where `Churn Label` = 'Yes'
  and `Churn Reason` is not null
  and trim(`Churn Reason`) <> ''
group by `Churn Reason`
order by churned_customers desc;


-- Which reasons account for the largest proportion of churn?
select
    `Churn Reason` as churn_reason,
    count(*) as churned_customers,
    round(
        count(*) * 100.0 /
        (select count(*)
         from customer_churn
         where `Churn Label` = 'Yes'),
        2
    ) as percentage_of_churned_customers
from customer_churn
where `Churn Label` = 'Yes'
  and `Churn Reason` is not null
  and trim(`Churn Reason`) <> ''
group by `Churn Reason`
order by churned_customers desc;



-- Are high-value customers associated with specific churn reasons?
select 
		`Churn Reason` as churn_reason,
		count(*) as churned_customers,
        round(max(CLTV),2) as max_cltv,
        round(min(CLTV),2) as min_cltv,
        round(avg(CLTV),2) as avg_cltv
from customer_churn
where `Churn Label` = 'Yes'
		and `Churn Reason` is not null
        and trim(`Churn Reason`) <> ''
group by `Churn Reason`
order by avg_cltv desc;
