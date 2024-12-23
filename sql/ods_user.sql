CREATE OR REPLACE TABLE adhoc_data_platform.ods_user AS
SELECT
    user_id,
    name,
    review_count,
    yelping_since,
    ARRAY(
        SELECT
            TRIM(value)
        FROM
            UNNEST(SPLIT(friends, ',')) AS value
    ) AS friends,
    useful,
    funny,
    cool,
    fans,
    ARRAY(
        SELECT
            CAST(
                value AS INT64
            )
        FROM
            UNNEST(
                REGEXP_EXTRACT_ALL(CAST(elite AS STRING), r'\d{4}')
            ) AS value
    ) AS elite,
    average_stars,
    compliment_hot,
    compliment_more,
    compliment_profile,
    compliment_cute,
    compliment_list,
    compliment_note,
    compliment_plain,
    compliment_cool,
    compliment_funny,
    compliment_writer,
    compliment_photos,
FROM
    adhoc_data_platform.user
