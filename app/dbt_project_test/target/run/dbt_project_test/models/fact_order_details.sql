
  
    

  create  table "project_2"."public"."fact_order_details__dbt_tmp"
  
  
    as
  
  (
    with
order_details as (
    select *
    from "project_2"."public"."tb_order_details"
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
  );
  