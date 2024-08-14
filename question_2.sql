SELECT 
    SUBSTRING("Order Date", 6, 2) AS month_number, 
	SUM("Product Quantity" * sale_price) AS monthly_revenue

FROM
    orders_powerbi
INNER JOIN
	dim_products ON dim_products.product_code = orders_powerbi.product_code

WHERE 
    SUBSTRING("Order Date", 1, 4) = '2022'

GROUP BY
    month_number

ORDER BY
    monthly_revenue DESC