
  
    

  create  table "project_2"."public"."dim_products__dbt_tmp"
  
  
    as
  
  (
    select  
    productid,
    productname,
    supplierid,
    categoryid,
    quantityperunit,
    unitprice,
    unitsinstock,
    unitsonorder,
    reorderlevel,
    discontinued
from "project_2"."public"."tb_products"
  );
  