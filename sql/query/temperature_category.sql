SELECT
    CASE 
        WHEN w.max_temperature < 32 THEN 'Very Cold'
        WHEN w.max_temperature BETWEEN 32 AND 59 THEN 'Cold'
        WHEN w.max_temperature BETWEEN 60 AND 79 THEN 'Moderate'
        WHEN w.max_temperature BETWEEN 80 AND 95 THEN 'Warm'
        ELSE 'Hot'
    END AS temperature_category,
    COUNT(r.review_id) AS review_count
FROM
    `adhoc_data_platform.dw_fact_reviews` r
JOIN
    `adhoc_data_platform.dw_dim_weather` w
ON
    CAST(r.timestamp AS DATE) = w.date
GROUP BY
    temperature_category
ORDER BY
    temperature_category
