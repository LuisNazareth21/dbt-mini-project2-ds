select
    categoryID,
    categoryName,
    description,
    picture
from {{ source('raw','tb_categories')}}