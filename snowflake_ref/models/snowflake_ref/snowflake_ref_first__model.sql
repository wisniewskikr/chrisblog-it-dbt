{{ config(materialized='view') }}

with snowflake_ref__result as (
    select * from "DEMO_DB"."DEMO_SCHEMA"."DEMO_TABLE"
),

final as (
    select * from snowflake_ref__result
)

select * from final