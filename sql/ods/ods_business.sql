CREATE OR REPLACE TABLE adhoc_data_platform.ods_business AS
SELECT
    business_id,
    name,
    address,
    city,
    state,
    postal_code,
    latitude,
    longitude,
    stars,
    review_count,
    CASE
        WHEN is_open = 1 THEN TRUE
        ELSE FALSE
    END AS is_open,
    attributes,
    categories,
    hours,
FROM
    adhoc_data_platform.business
