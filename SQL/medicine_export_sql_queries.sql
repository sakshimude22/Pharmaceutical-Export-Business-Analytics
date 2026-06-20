/* CREATE DATABASE PharmaExportAnalysis;
GO
*/
USE PharmaExportAnalysis;
GO 
/* CREATE TABLE medicines(
    medicine_id INT PRIMARY KEY,
    medicine_name VARCHAR(255),
    drug_class VARCHAR(100)
);

CREATE TABLE export_orders(
    order_id INT PRIMARY KEY,
    medicine_id INT,
    country VARCHAR(100),
    quantity INT,
    unit_price DECIMAL(10,2),
    revenue DECIMAL(12,2),
    order_date DATE,
    FOREIGN KEY (medicine_id)
    REFERENCES medicines(medicine_id)
);

CREATE TABLE shipments(
    shipment_id INT PRIMARY KEY,
    order_id INT,
    shipment_status VARCHAR(50),
    delay_days INT,
    shipping_cost DECIMAL(12,2),
    FOREIGN KEY (order_id)
    REFERENCES export_orders(order_id)
);

SELECT COUNT(*) FROM medicine;
SELECT COUNT(*) FROM exportOrders;
SELECT COUNT(*) FROM Shipment;

select * from medicine;
select * from exportOrders;
select * from Shipment;


KPIs
1] Total revenue
select sum(revenue) as Total_Revenue
from exportOrders;

2] Reveneue by country
select country, sum(revenue) as Revenue
from exportOrders
group by country
order by Revenue desc;

3] Top medicines
SELECT TOP 10
    m.medicine_name,
    m.medicine_id,
    SUM(o.revenue) AS Revenue
FROM exportOrders o
JOIN medicine m
    ON o.medicine_id = m.medicine_id
GROUP BY m.medicine_id,m.medicine_name
ORDER BY Revenue DESC;

4] Top 10 Medicines by Quantity Sold 
SELECT TOP 10
    m.medicine_name,
    SUM(o.quantity) AS TotalQuantity
FROM exportOrders o
JOIN medicine m
    ON o.medicine_id = m.medicine_id
GROUP BY m.medicine_name
ORDER BY TotalQuantity DESC;

5] Top orders
SELECT COUNT(*) AS TotalOrders
FROM exportOrders;

6] Average Shipment Delay

SELECT AVG(CAST(delay_days AS DECIMAL(10,2))) AS AvgShipmentDelay
FROM Shipment;

7] Average Delay for Only Delayed Shipments
SELECT AVG(CAST(delay_days AS DECIMAL(10,2))) AS AvgDelayedShipmentDays
FROM Shipment
WHERE status = 'Delayed';

8] Delayed Shipments %

*/

SELECT 
    ROUND(
        COUNT(CASE WHEN status='Delayed' THEN 1 END)*100.0
        / COUNT(*),
        2
    ) AS DelayedShipmentPercentage
FROM Shipment;