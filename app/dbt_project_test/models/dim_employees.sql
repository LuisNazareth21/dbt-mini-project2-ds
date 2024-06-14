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
from {{ source('raw', 'tb_employees')}}

