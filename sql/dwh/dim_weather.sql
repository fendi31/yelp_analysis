CREATE OR REPLACE TABLE `adhoc_data_platform.dw_dim_weather` AS
SELECT
    t.date,
    t.min AS min_temperature,
    t.max AS max_temperature,
    t.normal_min AS normal_min_temperature,
    t.normal_max AS normal_max_temperature,
    p.precipitation,
    p.precipitation_normal
FROM
    `adhoc_data_platform.ods_temperature_degree` t
FULL JOIN
    `adhoc_data_platform.ods_precipitation` p
ON
    t.date = p.date
