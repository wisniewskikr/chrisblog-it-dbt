/* {{ config(materialized='view') }} */

with snowflake_test__result as (
    select 'Hello World' as message
    union all
    select 'Hello World' as message
),

final as (
    select * from snowflake_test__result
)

select * from final