select
    shipperid,
    companyname,
    phone
from {{ source('raw','tb_shippers')}}