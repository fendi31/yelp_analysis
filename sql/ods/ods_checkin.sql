CREATE OR REPLACE TABLE adhoc_data_platform.ods_checkin AS
SELECT
    business_id,
    ARRAY(
        SELECT
            TIMESTAMP(TRIM(value))
        FROM
            UNNEST(SPLIT(date, ',')) AS value
    ) AS date
FROM
    adhoc_data_platform.checkin
