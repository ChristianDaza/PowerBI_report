CREATE VIEW Stores_sales AS
SELECT 
		dim_store.store_type,
		SUM(orders.product_quantity) AS Total_sales,
		(orders.product_quantity / SUM(orders.product_quantity)*100) AS Percentage_total_sales,
		SUM(dim_product.Sale_price - dim_product.cost_price)* SUM(orders.product_quantity) AS Profit,
		COUNT(orders) AS Order_count
FROM dim_product
JOIN orders
ON dim_product.product_code = orders.product_code
JOIN dim_store
ON orders.store_code = dim_store.store_code
GROUP BY dim_store.store_type, orders.product_quantity;

	
		

 
