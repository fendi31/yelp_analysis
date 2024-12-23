CREATE OR REPLACE TABLE `adhoc_data_platform.dw_dim_business` AS
SELECT
    business_id,
    name,
    city,
    state,
    categories,
    stars AS average_rating,
    review_count
FROM
    `adhoc_data_platform.ods_business`
