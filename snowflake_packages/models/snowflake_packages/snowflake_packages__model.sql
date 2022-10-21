/* {{ config(materialized='view') }} */

with snowflake_packages__result as (
    select 'Hello World' as message    
),

final as (
    select * from snowflake_packages__result
)

select * from final