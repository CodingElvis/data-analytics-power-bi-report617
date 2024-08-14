CREATE OR REPLACE VIEW question4 AS

SELECT 
    store_type,
	SUM("Product Quantity" * sale_price) AS sales,
	(SUM("Product Quantity" * sale_price) / SUM(SUM("Product Quantity" * sale_price)) OVER () * 100) AS percent_total_sales,    
	COUNT("Order Date") AS order_count

FROM 
    orders_powerbi
JOIN 
	dim_stores ON orders_powerbi."Store Code" = dim_stores."store code"
JOIN
	dim_products ON dim_products.product_code = orders_powerbi.product_code
GROUP BY 
	store_type