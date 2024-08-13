SELECT 
    month_name, SUM(product_quantity * sale_price) AS monthly_revenue

FROM
    forview

WHERE 
    SUBSTRING(dates, 1, 4) = '2022'

GROUP BY
    month_name

ORDER BY
    monthly_revenue DESC