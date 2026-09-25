	/*Requirement:
	Analyze how customer tenure, contract type, and subscribed services are associated with customer churn.
*/

select * 
from customer_churn;

-- Which tenure groups have higher churn rates?
select 
		case when `Tenure Months` <=12 then '0 - 12 Months'
			when `Tenure Months` <=24 then '13 - 24 Months'
            when `Tenure Months` <=12 then '25 - 48 Months'
            else '49+ Months'
		end as `tenure groups`,
        count(*) as total_customer,
        sum(`Churn Label` = 'Yes') as `churned_customers`,
        round
			(sum(`Churn Label` = 'Yes')* 100.0	 / count(*),2)
        as `churn_rates`
from customer_churn
group by `tenure groups`
order by churn_rates desc;



-- Which contract type has the highest churn?
select 
		Contract,
        count(*) as total_customer,
        sum(`Churn Label` = 'Yes') as `churned_customers`,
        round
			(sum(`Churn Label` = 'Yes')* 100.0	 / count(*),2)
        as `churn_rates`
        from customer_churn
        group by Contract
        order by `churn_rates` desc;
	

-- Which Internet Service has higher churn?
select 
		`Internet Service`,
        count(*) as total_customers,
        sum(`Churn Label` = 'Yes') as `churned_customers`,
        round
			(sum(`Churn Label` = 'Yes')* 100.0	 / count(*),2)
        as `churn_rates`
        from customer_churn
        group by `Internet Service`
        order by `churn_rates` desc;
        
		
-- Are services such as Tech Support or Online Security associated with different churn rates?
select 
		'Tech Support' as service,
        `Tech Support` as status,
        count(*) as total_customers,
        sum(`Churn Label` = 'Yes') as `churned_customers`,
        round
			(sum(`Churn Label` = 'Yes')* 100.0	 / count(*),2)
        as `churn_rates`
        from customer_churn
        group by `Tech Support`
        
union all
select 
		'Online Backup' as service,
        `Online Backup` as status,
        count(*) as total_customers,
        sum(`Churn Label` = 'Yes') as `churned_customers`,
        round
			(sum(`Churn Label` = 'Yes')* 100.0	 / count(*),2)
        as `churn_rates`
        from customer_churn
        group by `Online Backup`
		order by service, churn_rates desc;
        
        





