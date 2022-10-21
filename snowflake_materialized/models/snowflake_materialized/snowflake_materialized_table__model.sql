with snowflake_materialized__result as (
    select * from "DEMO_DB"."DEMO_SCHEMA"."DEMO_TABLE"
),

final as (
    select * from snowflake_materialized__result
)

select * from final