with 
orders as (
    select *
    from {{ source('raw','tb_orders')}}
),

order_details as (
    select *
    from {{ source('raw', 'tb_order_details')}}
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