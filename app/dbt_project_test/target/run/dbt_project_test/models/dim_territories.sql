
  
    

  create  table "project_2"."public"."dim_territories__dbt_tmp"
  
  
    as
  
  (
    select
    territoryid,
    territorydescription,
    regionid
from "project_2"."public"."tb_territories"
  );
  