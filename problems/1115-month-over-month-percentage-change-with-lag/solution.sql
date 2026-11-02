-- your query
SELECT 
    month,
    current_total AS total,
    ROUND(
        ((current_total - LAG(current_total) OVER (ORDER BY month)) / 
        LAG(current_total) OVER (ORDER BY month)) * 100, 
    2) AS pct_change
FROM (
    -- Inner query: Aggregate the total amount per month
    SELECT 
        DATE_TRUNC('month', sale_date) AS month,
        SUM(amount) AS current_total
    FROM sales
    GROUP BY DATE_TRUNC('month', sale_date)
) AS monthly_sales
ORDER BY month;