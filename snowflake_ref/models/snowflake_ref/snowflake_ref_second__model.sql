{{ config(materialized='view') }}

with snowflake_ref__result as (
    select * from {{ ref('snowflake_ref_first__model') }}
),

final as (
    select * from snowflake_ref__result
)

select * from final