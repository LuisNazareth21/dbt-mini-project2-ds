with 
fact_order_details as (
    select *
    from {{ ref('fact_order_details')}}
),

fact_orders as (
    select *
    from {{ ref('fact_orders')}}
),

dim_products as (
    select *
    from {{ ref('dim_products')}}
),

dim_categories as (
    select *
    from {{ ref('dim_categories')}}
)

select 
	date_trunc('month', orderdate)::date order_month, 
	categoryname ,
	sum(quantity) total_item_sold
from fact_order_details fod
join fact_orders using(orderid)
join dim_products using(productid)
join dim_categories using(categoryid)
where shippeddate is not null
group by 1,2