# Logistics Risk Dashboard - Inventory At-Risk Analysis

## 🚨 Problem Statement
A warehouse with 3,204 SKUs is at risk of stock-outs. Management needed visibility on which items need urgent reordering and which categories are most exposed.

## 🎯 Solution
Built an end-to-end analytics solution: MySQL for data flagging & logic, Power BI for executive dashboard.

### SQL Logic Used
1.  **Flagged At-Risk Items:** `WHERE stock_level <= reorder_point` → Found 240 items (7.5%)
2.  **Category Breakdown:** `GROUP BY category ORDER BY COUNT DESC` → Automotive highest at 54 items
3.  **Urgency Metric:** Created new KPI `days_left = stock_level / daily_demand` to prioritize orders
4.  **Critical Filter:** Found 9 items with < 1 day of stock left

### Dashboard Features (Power BI)
- KPI Cards: Total SKUs vs Items at Risk
- Bar Chart: Items at Risk by Category (Automotive, Apparel, Groceries, Electronics, Pharma)
- Donut Chart: % at Risk by Category
- Detail Table: item_id, category, stock_level, daily_demand, Days Left
- Key Insights for business action

### Key Insights
- 7.5% of SKUs at Risk (240/3204)
- Automotive category most at risk: 54 items
- Action Required: Prioritize reordering for Pharma & Electronics (lowest days left)

## 🛠️ Tools & Skills
- **SQL:** MySQL Workbench, WHERE filtering, GROUP BY, ORDER BY, Calculated fields (ROUND)
- **Visualization:** Power BI, DAX, KPI Cards, Bar & Donut Charts
- **Data Storytelling:** Translating stock levels into business risk

## 📁 Files
- `queries.sql` - All SQL queries used
- `Power BI dashboard.png` - Final Power BI dashboard
- `logistics_dataset` - 3204 rows, warehouse inventory data

## 🔗 Let's Connect
Looking for Data Admin / Junior Data Analyst roles in Johannesburg (Boksburg area). Open to SQL + Power BI projects.
