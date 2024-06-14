
  
    

  create  table "project_2"."public"."dim_shippers__dbt_tmp"
  
  
    as
  
  (
    select
    shipperid,
    companyname,
    phone
from "project_2"."public"."tb_shippers"
  );
  