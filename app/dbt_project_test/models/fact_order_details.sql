with
order_details as (
    select *
    from {{ source('raw','tb_order_details')}}
)

select 
 concat(orderid, productid) orderdetailid,
 orderid,
 productid ,
 unitprice ,
 quantity ,
 discount ,
 unitprice * quantity - discount item_price
from order_details