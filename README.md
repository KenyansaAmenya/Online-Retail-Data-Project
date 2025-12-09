# Online-Retail-Data-Project


## Project Overview
This project performs a complete data pipeline on the **Online Retail dataset**, including ingestion, cleaning, storage, transformation, and analysis. The goal is to prepare reliable insights on customer behavior, revenue trends, and global demand.

---

## PHASE 1 — Data Ingestion
- Loaded the Online Retail Excel file using `pandas`.
- Inspected structure using:
  - `df.head()`
  - `df.shape`
  - `df.describe()`
  - `df.info()`
- Converted `InvoiceDate` to datetime format.
- Ensured text fields (`Country`, `Description`) were treated as string types.

---

## PHASE 2 — Data Storage (SQL Layer)
- Designed a PostgreSQL table with fields:
  - InvoiceNo, StockCode, Description  
  - Quantity, InvoiceDate, UnitPrice  
  - CustomerID, Country
- Loaded the raw dataset into PostgreSQL using SQLAlchemy.
- Validated:
  - Table schema
  - Data types
  - Row counts

---

## PHASE 3 — Data Preparation (Cleaning & Transformation)

### Quantity Validation
- Removed records where `Quantity < 1`.

### Unit Price Validation
- Removed records where `UnitPrice < 0`.

### Additional Cleaning
- Removed invoice cancellations (InvoiceNo starting with **"C"**).
- Dropped rows with missing `CustomerID`.
- Removed duplicate rows.
- Added new calculated fields:
  - **Revenue** = Quantity × UnitPrice
  - **Year**, **Month**, **Day** extracted from `InvoiceDate`.

- Stored the cleaned dataset in a new SQL table:  
  **`online_retail_clean`**

---

## PHASE 4 — Data Analysis

### 1. Time Series Analysis (2011)
- Filtered dataset to only 2011 records.
- Calculated monthly revenue totals.
- Identified clear seasonal trends and month-to-month changes.

### 2. Country Performance (excluding the UK)
- Ranked countries by total revenue.
- Identified top 10 revenue-generating countries.
- Calculated both revenue and quantity sold.

### 3. Top Customers by Revenue
- Ranked all customers by total revenue.
- Extracted the top 10 highest-spending customers.

### 4. Global Product Demand
- Computed total quantity sold per country.
- Removed the United Kingdom.
- Ranked countries by product demand.
- Highlighted high-opportunity markets.

---

## Final Deliverables
- Cleaned dataset stored in SQL.
- Python scripts for all phases.
- Analytical outputs including:
  - Time-series revenue trends
  - Country performance
  - Customer ranking
  - Demand analysis
- Summary of key findings.
- This downloadable `README.md` documenting the workflow.

---

## Author
Prepared for Online Retail Data Processing & Analysis Project.
"""

# Create README.md using pypandoc
output_path = "/mnt/data/README.md"
pypandoc.convert_text(readme_text, 'md', format='md', outputfile=output_path, extra_args=['--standalone'])

output_path
