CREATE OR REPLACE TABLE `adhoc_data_platform.dw_fact_reviews` AS
SELECT
    review_id,
    business_id,
    user_id,
    CAST(date AS DATE) AS date,
    date AS timestamp,
    stars AS rating,
    useful AS useful_votes,
    funny AS funny_votes,
    cool AS cool_votes
FROM
    `adhoc_data_platform.ods_review`
