/*
===============================================================================
Customer Churn & Retention Analysis
===============================================================================

Objective 4: Analyze Charges, Billing & Customer Value

Purpose:
    - Compare monthly charges between churned and retained customers.
    - Analyze the relationship between paperless billing and churn.
    - Identify whether high-value customers are also churning.
    - Compare the average CLTV of churned and retained customers.

Business Questions:
    1. How do monthly charges differ between churned and retained customers?
    2. Does paperless billing relate to churn?
    3. Are high-value customers also churning?
    4. What is the average CLTV of churned customers?

SQL Functions Used:
    - COUNT()
    - AVG()
    - SUM()
    - ROUND()
    - CASE
    - GROUP BY
    - ORDER BY
===============================================================================
*/

select * 
from customer_churn;


-- Which payment methods have higher churn?
select 
		`Payment Method` as Payment_Method, 
        count(*) as total_customers,
        sum(`Churn Label` = 'Yes') as `churned_customers`,
        round
			(sum(`Churn Label` = 'Yes')* 100.0	 / count(*),2)
        as `churn_rates`
        from customer_churn
        group by `Payment Method`
		order by churn_rates desc;
        
-- How do monthly charges differ between churned and retained customers?
select 
		`Churn Label` as churn_status,
		count(*) as total_customers,
        round(max(`Monthly Charges`)) as max_monthly_charges,
        round(min(`Monthly Charges`)) as min_monthly_charges,
        round(avg(`Monthly Charges`)) as avg_monthly_charges
from customer_churn
group by `Churn Label`
order by avg_monthly_charges desc;


-- Does paperless billing relate to churn?

select 
		`Paperless Billing` as paperless_billing,
        count(*) as total_customers,
        sum(`Churn Label` = 'Yes') as `churned_customers`,
        round
			(sum(`Churn Label` = 'Yes')* 100.0	 / count(*),2)
        as `churn_rates`
        from customer_churn
        group by `Paperless Billing`
		order by churn_rates desc;
        

-- Are high-value customers also churning?
select 
		case when CLTV >=(
			select avg(CLTV)
            from customer_churn)
			then 'High Value'
            else 'Lower Value'
        end as customer_value_segment,
        count(*) as total_customers,
        sum(`Churn Label` = 'Yes') as `churned_customers`,
        round
			(sum(`Churn Label` = 'Yes')* 100.0	 / count(*),2)
        as `churn_rates`
        from customer_churn
        group by customer_value_segment
		order by churn_rates desc;
        
        
-- What is the average CLTV of churned customers?
select
    `Churn Label` AS churn_status,
    count(*) AS total_customers,
    round(avg(CLTV), 2) as average_cltv
from customer_churn
group by `Churn Label`;


