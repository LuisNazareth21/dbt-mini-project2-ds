
  
    

  create  table "project_2"."public"."dim_suppliers__dbt_tmp"
  
  
    as
  
  (
    select
    supplierid,
    companyname,
    contactname,
    contacttitle,
    address,
    city,
    region,
    postalcode,
    country,
    phone,
    fax,
    homepage
from "project_2"."public"."tb_suppliers"
  );
  