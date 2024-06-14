
  
    

  create  table "project_2"."public"."dim_employees__dbt_tmp"
  
  
    as
  
  (
    select  
    employeeid,
    firstname,
    lastname,
    title,
    birthdate,
    hiredate,
    address,
    city,
    region,
    postalcode,
    country,
    homephone,
    extension,
    photo,
    notes,
    reportsto,
    photopath,
    titleofcourtesy
from "project_2"."public"."tb_employees"
  );
  