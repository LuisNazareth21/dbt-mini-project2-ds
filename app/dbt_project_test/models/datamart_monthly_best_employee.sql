
with 
fact_orders as (
    select *
    from {{ ref('fact_orders')}}
),

dim_employees as (
    select *
    from {{ ref('dim_employees')}}
)

select 
	date_trunc('month', orderdate)::date order_month, 
	concat(firstname,' ',lastname) employeename ,
	sum(gross_revenue) gross_revenue,
	rank() over(partition by date_trunc('month', orderdate)::date order by sum(gross_revenue) desc) ranking
from fact_orders fo
join dim_employees using(employeeid)
where shippeddate is not null
group by 1,2