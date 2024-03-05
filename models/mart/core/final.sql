{{
    config(
        materialized='table',
        database =  'my_third_dag',
        schema = 'my_third_schema',
        table='transformed_world_table'
    )
}}

with duniyadari as (
select * from {{ ref("stg_world") }}
),
final as (
    select
"Product Name",
case
when "Brand" in ('Brand A') then 'A'
when "Brand" in ('Brand B') then 'B'
when "Brand" in ('Brand C') then 'C'
 end AS cleaned_brand ,
"Sale Price","Mrp",
CONCAT("Discount Percentage",'%') as Discount_Percent,
"Number of Ratings","Number of Reviews","Star Rating","Ram"         
    from duniyadari
)
 
select * from final