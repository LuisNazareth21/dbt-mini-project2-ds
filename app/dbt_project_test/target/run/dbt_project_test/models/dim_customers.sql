
  
    

  create  table "project_2"."public"."dim_customers__dbt_tmp"
  
  
    as
  
  (
    select
    customerid,
    companyname,
    contactname,
    contacttitle,
    address,
    city,
    region,
    postalcode,
    country,
    phone,
    fax
from "project_2"."public"."tb_customers"
  );
  