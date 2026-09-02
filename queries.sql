-- Total SKUs
SELECT COUNT(*) FROM logistics_dataset;

-- Items at risk (240)
SELECT COUNT(*) AS items_at_risk
FROM logistics_dataset
WHERE stock_level <= reorder_point;

-- Risk by category
SELECT category, COUNT(*) AS items_at_risk
FROM logistics_dataset
WHERE stock_level <= reorder_point
GROUP BY category
ORDER BY items_at_risk DESC;

-- Days left (urgency)
SELECT item_id, category, stock_level, daily_demand,
ROUND(stock_level / daily_demand, 1) AS days_left
FROM logistics_dataset
ORDER BY days_left
LIMIT 15;
