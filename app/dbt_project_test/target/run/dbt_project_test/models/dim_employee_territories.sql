
  
    

  create  table "project_2"."public"."dim_employee_territories__dbt_tmp"
  
  
    as
  
  (
    select 
    employeeid,
    territoryid
from "project_2"."public"."tb_employee_territories"
  );
  