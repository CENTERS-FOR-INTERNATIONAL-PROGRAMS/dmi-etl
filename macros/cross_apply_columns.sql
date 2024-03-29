{% macro cross_apply_columns(table_name, columns_list) %}
    select
        t.*,
        ca.column_name,
        ca.column_value
    from {{ table_name }} as t
    cross join lateral (
        values
            {% for column in columns_list %}
                ('{{ column }}', t."{{column}}"::text)
                {% if not loop.last %}
                    ,
                {% endif %}
            {% endfor %}
    ) as ca (column_name, column_value)
{% endmacro %}
