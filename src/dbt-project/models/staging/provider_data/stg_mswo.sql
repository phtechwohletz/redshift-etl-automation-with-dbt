with source as
    ( select *
     from {{source("spike_provider_data","optum")}}
     limit 10), 
renamed as
    (select "prac id" as prac_id,
            "last name" as last_name,
            "first name" as first_name,
            gender,
            designator,
            licn_output_change,
            "group name" as group_name,
            addr1,
            addr2,
            city,
            county,
            state,
            "zip code" as zip_code,
            "phone number" as phone_number,
            "language(s)" as languages,
            "accepting new patient?" as accepting_new_patients,
            ethnicity,
            program,
            specialty
     from source)
select *
from renamed