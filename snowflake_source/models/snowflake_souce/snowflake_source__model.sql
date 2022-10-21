with snowflake_source__result as (
    select * from {{ source('snowflake_source__source', 'demo_table') }}
),

final as (
    select * from snowflake_source__result
)

select * from final