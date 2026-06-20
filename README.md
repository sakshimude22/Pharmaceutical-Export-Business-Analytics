# 💊 Pharmaceutical Export Business Analytics Dashboard

## 📌 Project Overview

This project analyzes pharmaceutical export business performance using SQL Server and Power BI.

The objective is to identify:

- Top-performing medicines
- Best export markets
- Revenue trends
- Shipment performance
- Business growth opportunities

The project simulates a real-world pharmaceutical export business and demonstrates the complete analytics workflow:

1. Data Preparation
2. Database Design
3. SQL Analysis
4. Dashboard Development
5. Business Insights & Recommendations

---

## 🎯 Business Problem

A pharmaceutical export company wants to understand:

- Which medicines generate the highest revenue?
- Which countries contribute the most revenue?
- Where shipment delays occur?
- When export demand peaks?
- Why certain medicines underperform?
- How revenue can be increased?

To answer these questions, an interactive analytics dashboard was developed.

---

## 🛠 Tools Used

- SQL Server
- Microsoft Excel
- Power BI

---

## 🗄 Database Schema

### Medicine Table

| Column |
|----------|
| medicine_id |
| medicine_name |
| drug_class |

---

### Export Orders Table

| Column |
|----------|
| order_id |
| medicine_id |
| country |
| quantity |
| unit_price |
| revenue |
| order_date |

---

### Shipment Table

| Column |
|----------|
| shipment_id |
| order_id |
| status |
| delay_days |
| shipping_cost |

---

## 🔗 Data Model

Relationships:

Medicine (1) ──── (Many) Export Orders

Export Orders (1) ──── (Many) Shipments

---

## 📊 Key Performance Indicators (KPIs)

### Revenue KPIs

- Total Revenue
- Revenue by Country
- Revenue by Drug Class

### Product KPIs

- Top 10 Medicines by Revenue
- Top 10 Medicines by Quantity Sold

### Operations KPIs

- Total Orders
- Average Shipment Delay
- Delayed Shipment Percentage
- Shipping Cost by Country

### Trend KPIs

- Monthly Revenue Trend
- Quarterly Revenue Trend

---

# 📈 Dashboard Pages

## 1️⃣ Executive Summary

Provides a high-level overview of:

- Total Revenue
- Total Orders
- Total Medicines
- Average Shipment Delay
- Revenue by Country
- Monthly Revenue Trend
- Shipment Status Distribution

---

## 2️⃣ Country Analysis

Analyzes:

- Revenue by Country
- Orders by Country
- Delayed Shipments by Country
- Average Delay by Country

Purpose:

Identify high-performing export markets and operational challenges.

---

## 3️⃣ Medicine Analysis

Analyzes:

- Top 10 Medicines by Revenue
- Top 10 Medicines by Quantity Sold
- Revenue by Drug Class

Purpose:

Understand product performance and demand patterns.

---

## 4️⃣ Shipment Analysis

Analyzes:

- Shipment Status Distribution
- Average Delay by Status
- Shipping Cost by Country
- Delayed Shipments by Country

Purpose:

Evaluate logistics efficiency and shipment performance.

---

## 5️⃣ Revenue Trends

Analyzes:

- Monthly Revenue Trend
- Quarterly Revenue Trend

Purpose:

Identify seasonal demand patterns and revenue fluctuations.

---

## 🔍 SQL Analysis

Examples of business questions answered using SQL:

### Total Revenue

```sql
SELECT sum(revenue) as Total_Revenue
FROM exportOrders;
```

### Revenue by Country

```sql
SELECT country, sum(revenue) as Revenue
FROM exportOrders
GROUP BY country
ORDER BY Revenue desc;
```

### Top Medicines by Revenue

```sql
SELECT TOP 10
    m.medicine_name,
    m.medicine_id,
    SUM(o.revenue) AS Revenue
FROM exportOrders o
JOIN medicine m
    ON o.medicine_id = m.medicine_id
GROUP BY m.medicine_id,m.medicine_name
ORDER BY Revenue DESC;
```

### Delayed Shipment Percentage

```sql
SELECT 
    ROUND(
        COUNT(CASE WHEN status='Delayed' THEN 1 END)*100.0
        / COUNT(*),
        2
    ) AS DelayedShipmentPercentage
FROM Shipment;
```

---

# 📌 Key Findings

### Revenue Performance

- UAE generated the highest export revenue.
- Germany and Australia were the next highest revenue contributors.

### Product Performance

- Ascabiol Emulsion was the highest revenue-generating medicine.
- Antibiotics contributed the largest share of overall revenue.

### Shipment Performance

- Germany recorded the highest average shipment delay.
- Approximately 10% of shipments were delayed.
- Most shipments were successfully delivered.

### Demand Trends

- Revenue peaked during April and May.
- Export demand showed seasonal fluctuations throughout the year.

### Underperforming Products

- Several medicines generated comparatively lower revenue and sales volume.

---

# 💡 Recommendations

## Market Expansion

- Increase focus on high-performing markets such as UAE and Germany.
- Explore additional distributor partnerships in strong-performing countries.

## Inventory Planning

- Maintain higher inventory levels for top-selling medicines.
- Prioritize production of high-demand drug classes.

## Logistics Improvement

- Investigate causes of shipment delays.
- Improve coordination with logistics partners.

## Product Strategy

- Promote underperforming medicines through targeted campaigns.
- Reassess inventory allocation for low-performing products.

## Revenue Growth

- Prepare inventory ahead of peak demand periods.
- Focus sales efforts on products and regions generating consistent revenue.

---

## 🚀 Interactive Features

The dashboard includes:

✅ Country Filters

✅ Drug Class Filters

✅ Dynamic KPI Cards

✅ Cross-Filtering Across Visuals

✅ Multi-Page Navigation

✅ Interactive Business Analysis

---

## 📂 Repository Structure

```text
Pharmaceutical-Export-Business-Analytics
│
├── Dataset
│   ├── medicine.csv
│   ├── exportOrders.csv
│   └── shipment.csv
│
├── SQL
│   └── analysis_queries.sql
│
├── PowerBI
│   └── Pharmaceutical_Export_Analytics.pbix
│
├── Screenshots
│   ├── Executive_Summary.png
│   ├── Country_Analysis.png
│   ├── Medicine_Analysis.png
│   ├── Shipment_Analysis.png
│   ├── Revenue_Trends.png
│   └── Business_Insights.png
│
└── README.md
```

---

## 👩‍💻 Author

**Sakshii Mude**

Aspiring Data Analyst | SQL | Power BI | Business Analytics

