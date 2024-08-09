SELECT  
		CAST(SUM(orders.product_quantity * dim_product.Sale_price) as decimal)AS Revenue, 
		EXTRACT(month FROM (CAST(orders.order_date as date))) AS Months
FROM dim_product
	
LEFT JOIN orders
ON dim_product.product_code = orders.product_code
WHERE orders.order_date BETWEEN'2022-01-01 00:00:00' AND '2022-12-31 00:00:00'
GROUP BY Months
ORDER BY Revenue DESC;



		


