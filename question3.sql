SELECT 
    store_type, SUM(product_quantity * sale_price) AS revenue

FROM
    forview

WHERE 
    SUBSTRING(dates, 1, 4) = '2022' AND country = 'Germany'

GROUP BY
    store_type

ORDER BY
    revenue DESC