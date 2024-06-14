select
    territoryid,
    territorydescription,
    regionid
from {{ source('raw','tb_territories')}}