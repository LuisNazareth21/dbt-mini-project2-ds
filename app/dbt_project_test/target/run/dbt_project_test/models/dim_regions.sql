
  
    

  create  table "project_2"."public"."dim_regions__dbt_tmp"
  
  
    as
  
  (
    select 
    regionid,
    regiondescription
from "project_2"."public"."tb_regions"
  );
  