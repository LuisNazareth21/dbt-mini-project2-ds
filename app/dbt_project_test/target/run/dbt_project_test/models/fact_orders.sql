
  
    

  create  table "project_2"."public"."fact_orders__dbt_tmp"
  
  
    as
  
  (
    with 
orders as (
    select *
    from "project_2"."public"."tb_orders"
),

order_details as (
    select *
    from "project_2"."public"."tb_order_details"
)

select 
	orders.orderid,
	customerid,
	employeeid,
	orderdate,
	requireddate,
	shippeddate,
	shipvia,
	freight,
	shipname,
	shipaddress,
	shipcity,
	shipregion,
	shippostalcode,
	shipcountry,
	sum((unitprice-(unitprice*discount))*quantity) gross_revenue
from orders
join order_details on orders.orderid = order_details.orderid
group by 
	orders.orderid,
	customerid,
	employeeid,
	orderdate,
	requireddate,
	shippeddate,
	shipvia,
	freight,
	shipname,
	shipaddress,
	shipcity,
	shipregion,
	shippostalcode,
	shipcountry
  );
  