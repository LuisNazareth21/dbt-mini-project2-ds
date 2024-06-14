
  
    

  create  table "project_2"."public"."dim_categories__dbt_tmp"
  
  
    as
  
  (
    select
    categoryID,
    categoryName,
    description,
    picture
from "project_2"."public"."tb_categories"
  );
  