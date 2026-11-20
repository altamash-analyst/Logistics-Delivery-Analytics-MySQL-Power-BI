# Logistics & Delivery Analytics | MySQL & Power BI

An end-to-end **Logistics & Delivery Analytics** project using **MySQL 8.0 and Power BI** to analyze shipment performance, delivery operations, route efficiency, driver performance, warehouse operations, revenue, costs, and profitability.

The project transforms relational logistics data into an analytical SQL view and an interactive five-page Power BI dashboard to support operational and management decision-making.

![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi&logoColor=black)
![SQL](https://img.shields.io/badge/SQL-Data%20Analytics-blue)
![Dataset](https://img.shields.io/badge/Dataset-Synthetic-orange)

**Project Type:** Data Analytics Portfolio Project  
**Database:** MySQL 8.0  
**SQL Environment:** MySQL Shell  
**Visualization:** Microsoft Power BI  
**Dataset:** Synthetic / Practice Data

---

## Project Overview

Logistics businesses need to monitor shipment volumes, delivery timelines, transportation costs, route efficiency, and profitability to maintain reliable operations.

This project explores these areas through a structured logistics dataset containing shipment transactions and related customer, driver, route, warehouse, and shipment-item information.

The analysis focuses on understanding:

- How efficiently are shipments being delivered?
- What proportion of delivered shipments meet their expected delivery dates?
- Which routes and regions contribute most to revenue and profit?
- How do drivers and vehicle types perform?
- Which warehouses handle the greatest shipment volumes?
- How do shipping, fuel, and driver costs affect profitability?
- How do delivery types and shipment statuses relate to operational performance?

**Project type:** Data Analytics | Business Intelligence | Logistics Analytics
**Dataset:** Synthetic / practice dataset
**Database:** MySQL 8.0
**Visualization:** Microsoft Power BI

---

## Dataset Overview

The project uses six relational tables.

| Table            | Description                                                                                                    |
| ---------------- | -------------------------------------------------------------------------------------------------------------- |
| `shipments`      | Shipment transactions, dates, status, delivery type, payment method, weight, revenue, costs, and delay minutes |
| `shipment_items` | Shipment item categories, descriptions, quantities, item values, and weights                                   |
| `customers`      | Customer demographics, city, state, region, segment, and registration date                                     |
| `drivers`        | Driver demographics, vehicle information, experience, ratings, region, and joining date                        |
| `routes`         | Route names, origins, destinations, regions, distances, and route types                                        |
| `warehouses`     | Warehouse locations, regions, types, capacity, and operating costs                                             |

### Dataset Size

| Table          |    Records |
| -------------- | ---------: |
| Shipments      |     30,000 |
| Shipment Items |     54,000 |
| Customers      |      5,000 |
| Drivers        |      1,000 |
| Routes         |        500 |
| Warehouses     |        100 |
| **Total**      | **90,600** |

*Record counts are based on the INSERT statements in the supplied SQL exports. They have not been independently verified against a live database.*

---

## Database & SQL Analysis

**Database name:** `logistics_delivery_analytics`

The project uses MySQL to structure and analyze logistics data.

### Analytical SQL View

The project includes the view:

`vw_logistics_shipments`

It joins the following five tables:

- `shipments`
- `customers`
- `warehouses`
- `drivers`
- `routes`

The view brings shipment transactions and their related operational dimensions into one analytical dataset.

The `shipment_items` table remains a separate source table and is not included in this view.

### Key SQL Calculations

**1. Total Cost**

```sql
Total Cost = Shipping Cost + Fuel Cost + Driver Cost
```

**2. Profit**

```sql
Profit = Shipping Revenue - Total Cost
```

**3. On-Time Delivery Flag**

A shipment receives an on-time flag of `1` when:

- Shipment status is `Delivered`.
- Actual delivery date is on or before the expected delivery date.

Otherwise, the flag is `0`.

**4. Delivery Days**

```sql
Delivery Days = Actual Delivery Date - Shipment Date
```

These calculations are defined in the SQL view and provide the foundation for the Power BI analysis.

**Profitability scope:** The calculated profit excludes warehouse operating costs and other costs not included in the SQL view. It should therefore be interpreted as shipment-level profit based on shipping revenue, shipping cost, fuel cost, and driver cost—not complete company net profit.

---

## Power BI Dashboard

The Power BI report contains five analytical pages.

### 1. Executive Logistics Overview

Provides a management-level summary of logistics performance.

Key metrics and analysis:

- Total Shipments
- Shipping Revenue
- Total Profit
- Profit Margin
- Average Delivery Days
- On-Time Delivery
- Shipment Status
- Delivery Type
- Regional Performance

### 2. Route & Regional Analysis

Evaluates transportation efficiency and regional performance.

Key metrics and analysis:

- Route Performance
- Regional Revenue and Profit
- Route Type Analysis
- Total Distance
- Average Distance
- Revenue per KM
- Profit per Shipment
- Route-Level Shipment Volume

### 3. Driver & Carrier Performance

Analyzes driver productivity and performance.

Key metrics and analysis:

- Active Drivers
- Average Driver Rating
- Shipments per Driver
- Driver Experience
- Vehicle Type Performance
- Driver-Level Revenue and Profit
- On-Time Delivery Performance

### 4. Delivery Operations

Focuses on shipment execution and warehouse operations.

Key metrics and analysis:

- Delivered Shipments
- Delayed Shipments
- Cancelled Shipments
- On-Time Delivery Percentage
- Average Delivery Days
- Average Delay Minutes
- Warehouse Performance
- Delivery Type Analysis
- Shipment Status Distribution

### 5. Cost, Revenue & Profitability

Examines financial performance and transportation costs.

Key metrics and analysis:

- Shipping Revenue
- Total Cost
- Total Profit
- Profit Margin
- Revenue per Shipment
- Cost per Shipment
- Cost Breakdown
- Regional Profitability
- Route-Level Profitability

---

## Business Objectives

The project aims to support logistics management through:

1. **Delivery Performance:** Monitor delivery timelines, delays, and on-time delivery.
2. **Route Optimization:** Evaluate route distance, route types, revenue, and profitability.
3. **Driver Performance:** Understand driver productivity, experience, ratings, and vehicle utilization.
4. **Warehouse Efficiency:** Compare shipment activity across warehouse locations and types.
5. **Financial Analysis:** Understand shipping revenue, transportation costs, and shipment-level profit.
6. **Management Reporting:** Consolidate operational and financial KPIs into an interactive dashboard.

---

## Key Performance Indicators (KPIs)

| KPI                   | Description                                                     |
| --------------------- | --------------------------------------------------------------- |
| Total Shipments       | Number of unique shipment transactions                          |
| Shipping Revenue      | Total revenue generated from shipments                          |
| Total Cost            | Shipping cost + fuel cost + driver cost                         |
| Total Profit          | Shipping revenue − total cost                                   |
| Profit Margin %       | Profit as a percentage of shipping revenue                      |
| On-Time Delivery %    | Share of eligible delivered shipments meeting the expected date |
| Average Delivery Days | Average elapsed days between shipment and actual delivery       |
| Delayed Shipments     | Shipments classified as delayed                                 |
| Average Delay Minutes | Average recorded shipment delay in minutes                      |
| Revenue per KM        | Shipping revenue relative to route distance                     |
| Cost per Shipment     | Total cost relative to shipment volume                          |
| Profit per Shipment   | Total profit relative to shipment volume                        |

*Exact DAX definitions and denominator choices should be documented from the final Power BI measures before treating these KPI descriptions as formal calculation specifications.*

---

## Tools & Technologies

- **MySQL 8.0** — Relational database and SQL analysis
- **MySQL Shell** — Database interaction and SQL execution
- **Microsoft Power BI** — Interactive dashboard development
- **DAX** — KPI calculations and analytical measures
- **Power Query** — Data preparation and transformation
- **SQL** — Joins, views, aggregations, and calculated fields

---

## Data Quality & Validation

Recommended validation checks include:

- Primary-key uniqueness
- Foreign-key consistency
- Missing values and duplicate records
- Shipment status and delivery-date consistency
- Expected versus actual delivery dates
- Delay-minute consistency
- Negative or unusual financial values
- Route distance and shipment relationships
- Shipment-item aggregation and join duplication
- Warehouse operating-cost treatment

The dataset is synthetic and may contain artificial geographic or operational combinations. Findings should be interpreted as analytical practice rather than verified real-world logistics performance.

---

## Repository Structure

```text
Logistics-Delivery-Analytics/
│
├── README.md
│
├── dataset/
│   ├── Customers.sql
│   ├── Drivers.sql
│   ├── Routes.sql
│   ├── Warehouses.sql
│   ├── Shipments.sql
│   └── Shipment Items.sql
│
├── sql/
│   └── Routines.sql
│
├── powerbi/
│   └── Logistics Delivery Analytics.pbix
│
├── screenshots/
│   ├── executive-logistics-overview.png
│   ├── route-regional-analysis.png
│   ├── driver-carrier-performance.png
│   ├── delivery-operations.png
│   └── cost-revenue-profitability.png
│
└── documentation/
    ├── project-overview.md
    ├── business-requirements.md
    ├── database-schema.md
    ├── data-dictionary.md
    ├── sql-analysis.md
    ├── kpi-dictionary.md
    ├── dashboard-documentation.md
    └── data-validation.md
```

*Adjust file and folder names to match the final repository.*

---

## How to Use This Project

### 1. Clone the Repository

```bash
git clone https://github.com/altamash-analyst/Logistics-Delivery-Analytics.git
```

```bash
cd Logistics-Delivery-Analytics
```

### 2. Create the Database

Open MySQL Shell and execute:

```sql
CREATE DATABASE logistics_delivery_analytics;
USE logistics_delivery_analytics;
```

### 3. Import the SQL Files

Import the six table scripts in this order:

1. Customers
2. Drivers
3. Routes
4. Warehouses
5. Shipments
6. Shipment Items

Then import the SQL view definition from `Routines.sql`.

Ensure the SQL files are available in your working directory and update paths as necessary.

### 4. Open the Power BI Report

1. Open `Logistics Delivery Analytics.pbix` in Power BI Desktop.
2. Configure the database connection if required.
3. Refresh the data.
4. Review the five dashboard pages.

---

## Skills Demonstrated

- Relational Database Analysis
- MySQL and SQL
- Data Modeling
- SQL Joins and Views
- Business Intelligence
- Power BI Dashboard Development
- DAX Measures
- KPI Development
- Logistics & Supply Chain Analytics
- Delivery Performance Analysis
- Route and Regional Analysis
- Driver and Warehouse Performance
- Cost and Profitability Analysis
- Data Quality Validation
- Business Reporting

---

## Future Improvements

- Incorporate warehouse operating costs into a broader profitability model.
- Develop route-level cost and efficiency benchmarks.
- Analyze driver utilization and workload distribution.
- Introduce shipment-item revenue and weight analysis.
- Add more detailed delivery-delay categories.
- Improve geographic validation and location standardization.
- Develop forecasting for shipment volume and delivery demand.
- Add automated SQL data-quality checks.

---

## Author

**Altamash Nizamuddin**

Data Analyst | Excel • Power BI • Python • MySQL

- GitHub: [@altamash-analyst](https://github.com/altamash-analyst)
  
- Email: [altamash9876@gmail.com](mailto:altamash9876@gmail.com)
  
- **LinkedIn:** https://www.linkedin.com/in/altamash-nizamuddin-a208152a3?utm_source=share_via&utm_content=profile&utm_medium=member_android

---

## Project Tags & SEO Keywords

`Logistics Analytics` `Delivery Analytics` `Supply Chain Analytics` `MySQL` `MySQL Shell` `SQL` `Power BI` `DAX` `Business Intelligence` `Shipment Analysis` `Route Optimization` `Delivery Performance` `Driver Performance` `Warehouse Analytics` `Transportation Cost Analysis` `Profitability Analysis` `Data Analytics Portfolio`

---

*This is a synthetic-data portfolio project created for data analytics and business intelligence practice. Financial values are presented in the dataset's original numeric units; the currency is unspecified.*
