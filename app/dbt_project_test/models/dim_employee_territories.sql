select 
    employeeid,
    territoryid
from {{ source('raw','tb_employee_territories')}}