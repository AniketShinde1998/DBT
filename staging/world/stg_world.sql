with source as (
 
    Select * from {{ source('world','world_table') }}
    
),
 
staged as (
 
    select
        *
    from source
 
)
 
select * from staged 