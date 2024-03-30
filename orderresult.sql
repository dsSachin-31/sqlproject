SELECT `Product ID`, SUM(Sales) AS total_sales
FROM ordertable.dataset
GROUP BY `Product ID`;
