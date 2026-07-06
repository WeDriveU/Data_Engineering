{% macro parse_kronos_time(column_name, date_column='DATE') %}
    TRY_TO_TIMESTAMP(
        CONCAT({{ date_column }}, ' ', REGEXP_REPLACE(REGEXP_REPLACE({{ column_name }}, 'a$', ' AM'), 'p$', ' PM')),
        'YYYY-MM-DD HH12:MI AM'
    )
{% endmacro %}
