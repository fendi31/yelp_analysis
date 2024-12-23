CREATE OR REPLACE TABLE adhoc_data_platform.ods_temperature_degree AS
SELECT
    PARSE_DATE('%Y%m%d', CAST(date AS STRING)) AS date,
    min,
    max,
    normal_min,
    normal_max
FROM
    adhoc_data_platform.temperature_degree
