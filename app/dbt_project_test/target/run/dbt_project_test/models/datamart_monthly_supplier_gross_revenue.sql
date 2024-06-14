
  
    

  create  table "project_2"."public"."datamart_monthly_supplier_gross_revenue__dbt_tmp"
  
  
    as
  
  (
    with 
fact_order_details as (
    select *
    from "project_2"."public"."fact_order_details"
),

fact_orders as (
    select *
    from "project_2"."public"."fact_orders"
),

dim_products as (
    select *
    from "project_2"."public"."dim_products"
),

dim_suppliers as (
    select *
    from "project_2"."public"."dim_suppliers"
)

select 
	date_trunc('month', orderdate)::date order_month, 
	companyname, 
	sum((fod.unitprice-(fod.unitprice*discount))*quantity) gross_revenue
from fact_order_details fod
join fact_orders using(orderid)
join dim_products using(productid)
join dim_suppliers using(supplierid)
where shippeddate is not null
group by 1,2
  );
  