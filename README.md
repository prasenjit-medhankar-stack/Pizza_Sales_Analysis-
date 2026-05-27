<h1 align="center">Pizza Sales Data Analytics Project</h1>

<p align="center">
End-to-End Data Analytics Project using MS Excel, PostgreSQL, and Power BI
</p>

<p align="center">
This project analyzes pizza sales data to uncover business insights such as revenue trends, customer ordering behavior, top-selling pizzas, and category performance.
</p>


# Project Overview

This project demonstrates a complete data analytics workflow starting from raw data cleaning to dashboard visualization.

The project includes:

Cleaning and preprocessing pizza sales data in MS Excel  
Performing SQL analysis using PostgreSQL  
Building an interactive Power BI dashboard  
Generating business insights from sales data  

The goal of this project is to transform raw transactional data into meaningful visual insights that support business decision-making.


# Dataset Information

### Dataset Name
`pizza_sales.csv`

### Total Records

**48,620 rows**  
**12 columns**

### Dataset Columns

| Column Name | Description |
|---|---|
| pizza_id | Unique ID for each pizza sale |
| order_id | Unique order identifier |
| pizza_name_id | Pizza code/name ID |
| quantity | Number of pizzas ordered |
| order_date | Date of order |
| order_time | Time of order |
| unit_price | Price per pizza |
| total_price | Total transaction value |
| pizza_size | Pizza size (S, M, L, XL) |
| pizza_category | Pizza category |
| pizza_ingredients | Ingredients used |
| pizza_name | Full pizza name |


# Tools & Technologies

<table align="center">
<tr>
<th>Tool</th>
<th>Purpose</th>
</tr>

<tr>
<td><b>MS Excel</b></td>
<td>Data cleaning and preprocessing</td>
</tr>

<tr>
<td><b>PostgreSQL</b></td>
<td>SQL querying and data analysis</td>
</tr>

<tr>
<td><b>Power BI</b></td>
<td>Dashboard creation and visualization</td>
</tr>
</table>


# Project Workflow

## Data Cleaning in MS Excel

Performed preprocessing tasks such as:

Removing duplicates  
Handling missing values  
Correcting data formatting  
Standardizing column names  
Checking data consistency  
Preparing clean dataset for SQL analysis  


## SQL Analysis using PostgreSQL

The cleaned dataset was imported into PostgreSQL for analysis.

### SQL Tasks Performed

Created `pizza_sales` table  
Imported dataset into PostgreSQL  
Performed analytical SQL queries  

### SQL Concepts Used

`SELECT`  
`WHERE`  
`GROUP BY`  
`ORDER BY`  
Aggregate Functions  
Date Functions  
Filtering & Sorting  

### Business Questions Solved

Total revenue generated  
Average order value  
Total pizzas sold  
Total customer orders  
Average pizzas per order  
Daily order trends  
Monthly sales trends  
Best-selling pizza categories  
Top-performing pizza sizes  


# Power BI Dashboard

An interactive Power BI dashboard was built to visualize sales performance and customer behavior.

## Dashboard Features

Revenue KPI Cards  
Daily & Monthly Sales Trends  
Best-Selling Pizza Analysis  
Category-wise Performance  
Pizza Size Distribution  
Interactive Filters & Slicers  
Dynamic Charts & Visuals  


# Key Insights

## Business Insights Generated

Identified top-selling pizza categories  
Analyzed peak sales periods  
Found customer ordering patterns  
Measured revenue contribution by pizza size  
Tracked overall business performance  


# How to Run the Project

## Step 1: Data Cleaning

Open `pizza_sales.csv` in MS Excel  
Perform cleaning and preprocessing  

## Step 2: SQL Analysis

Open PostgreSQL  
Create database and table  
Run queries from `pizza_sales.sql`  

## Step 3: Power BI Dashboard

Open `pizza_sales_report_dash.pbix`  
Refresh dataset connection if required  


# Project Outcome

This project demonstrates practical skills in:

Data Cleaning  
SQL Querying  
Data Visualization  
Dashboard Development  
Business Intelligence  


