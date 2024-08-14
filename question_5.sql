SELECT 
	category,
	SUM ("Product Quantity" * (sale_price - cost_price)) AS profit
FROM
	orders_powerbi
INNER JOIN
	dim_stores ON orders_powerbi."Store Code" = dim_stores."store code"
INNER JOIN
	dim_products ON dim_products.product_code = orders_powerbi.product_code
WHERE
	SUBSTRING("Order Date", 1, 4) = '2021' AND country_region = 'Wiltshire'
GROUP BY
	category
ORDER BY
	profit DESC
	