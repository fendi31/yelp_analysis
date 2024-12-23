CREATE OR REPLACE TABLE adhoc_data_platform.ods_review AS
SELECT
    review_id,
    user_id,
    business_id,
    date,
    stars,
    text,
    cool,
    funny,
    useful,
FROM
    adhoc_data_platform.review
