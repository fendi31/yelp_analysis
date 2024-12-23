CREATE OR REPLACE TABLE `adhoc_data_platform.dw_dim_user` AS
SELECT
    user_id,
    name,
    review_count,
    yelping_since,
    average_stars,
FROM
    `adhoc_data_platform.ods_user`
