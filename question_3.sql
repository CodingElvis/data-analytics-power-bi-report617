SELECT 
    store_type, SUM("Product Quantity" * sale_price) AS revenue

FROM
    orders_powerbi
INNER JOIN
	dim_stores ON orders_powerbi."Store Code" = dim_stores."store code"
INNER JOIN
	dim_products ON dim_products.product_code = orders_powerbi.product_code
	
WHERE 
    SUBSTRING("Order Date", 1, 4) = '2022' AND country_code = 'DE'

GROUP BY
    store_type

ORDER BY
    revenue DESC