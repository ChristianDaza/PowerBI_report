SELECT 
		CAST(SUM(orders.product_quantity * dim_product.Sale_price) as decimal)AS Revenue,
		dim_store.country,
		dim_store.store_type
FROM dim_product	
JOIN orders
ON dim_product.product_code = orders.product_code
JOIN dim_store
ON orders.store_code = dim_store.store_code	
WHERE (orders.order_date BETWEEN'2022-01-01 00:00:00' AND '2022-12-31 00:00:00') AND (dim_store.country = 'Germany')
GROUP BY dim_store.country, dim_store.store_type
ORDER BY Revenue DESC;

	
		


