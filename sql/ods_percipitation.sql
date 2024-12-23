CREATE OR REPLACE TABLE adhoc_data_platform.ods_precipitation AS
SELECT
    parse_date('%Y%m%d', CAST(date AS STRING)) AS date,
    CASE
        WHEN precipitation.precipitation = 'T' THEN 0
        ELSE CAST(
            precipitation.precipitation AS FLOAT64
        )
    END AS precipitation,
    precipitation_normal,
FROM
    adhoc_data_platform.precipitation
