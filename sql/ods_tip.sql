CREATE OR REPLACE TABLE adhoc_data_platform.ods_tip AS
SELECT
    user_id,
    business_id,
    date,
    text,
    compliment_count,
FROM
    adhoc_data_platform.tip
