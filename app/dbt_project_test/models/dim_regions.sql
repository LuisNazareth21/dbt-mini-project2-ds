select 
    regionid,
    regiondescription
from {{ source('raw','tb_regions')}}