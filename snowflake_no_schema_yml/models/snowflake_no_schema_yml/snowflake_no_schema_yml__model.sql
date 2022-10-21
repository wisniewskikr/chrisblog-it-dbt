/* 
Default result type is "view". 
Please uncomment it if you want to display result as type "table".

{{ config(materialized='table') }}
*/

with snowflake_no_schema_yml__result as (
    select * from "DEMO_DB"."DEMO_SCHEMA"."DEMO_TABLE"
),

final as (
    select * from snowflake_no_schema_yml__result
)

select * from final