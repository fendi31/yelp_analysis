SELECT
    w.date,
    w.min_temperature,
    w.max_temperature,
    w.precipitation,
    AVG(r.rating) AS avg_rating,
    COUNT(r.review_id) AS total_reviews
FROM
    `adhoc_data_platform.dw_fact_reviews` r
JOIN
    `adhoc_data_platform.dw_dim_weather` w
ON
    r.date = w.date
GROUP BY ALL
ORDER BY 1
