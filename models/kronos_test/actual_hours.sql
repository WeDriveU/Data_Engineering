{{ config(materialized='ephemeral') }}

select *

from raw_test.dbt_rchipman.kronos_hours