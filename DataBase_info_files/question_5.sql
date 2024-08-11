SELECT 
		SUM(dim_product.Sale_price - dim_product.cost_price)* SUM(orders.product_quantity) AS Profit,
		dim_product.category,
		dim_store.country,
		dim_store.country_region
FROM dim_product
LEFT JOIN orders
ON dim_product.product_code = orders.product_code
LEFT JOIN dim_store
ON orders.store_code = dim_store.store_code
WHERE 
		(orders.order_date BETWEEN'2021-01-01 00:00:00' AND '2021-12-31 00:00:00') AND
		(dim_store.country = 'UK') AND
		(dim_store.country_region = 'Wiltshire')
GROUP BY dim_product.category, dim_store.country, dim_store.country_region
ORDER BY Profit DESC;


 
