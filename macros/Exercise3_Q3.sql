{% macro discount(args, percentage) %}
    {{ args }} * {{ percentage}}/100
{% endmacro %}