# PowerBI_report
Data analyitics in PowerBi


## Description
PowerBI_report is a PowerBI based data analytics project, in which data was imported, cleaned, columns were trnasformed, a schema was made, measures were calculated, visualisation were made and arragange into pages. Additionally some measure were calculated with SQL.
The aim of this project was to apply the knowledge and skills gain in the Azure and PowerBI modules of AiCore to gain more experience. 


## Table of content
- [Description](#Description)
- [Intallation](#Intallation)
- [Usage](#Usage)
- [Main Features](#Main_Features)
- [Lincence](#Licence)
- [Contact Information](#Contact_information)


## Installation
The source of this code is currently hosted at: https://github.com/ChristianDaza/EDA_finance.git

Clone this git repository into your machine using the following code:
```
git clone https://github.com/ChristianDaza/EDA_finance.git
```


## Process

#### Importing data
- The Orders, Producst, Stores and Customers tables were imported from Azure SQL Database, Azure Blob Storage, or downloaded into the local machine.

- The data was transfomed, first cleaned from NUll, missing values and duplicates, then columns were rename and some columns were split or joined where appropriate using Power Query.

#### Build data model
- Created a Date table using the based on  smalles value of Order Date and largest value of Shipping Date from the Orders table. Additional columns added include: Day of Week, Month Number, Month Name, Quarter, Year, Start of Year, Start of Quarter, Start of the Month and Start of Week columns.

- A STAR schema was build between the tables using the followinf columns: product_code, store code, date, order Date and shipping data. All relationships were active, one-to-many and with single filter direction.

- A measure table was created and populated by the following: Total Orders, Total Revenue, Total Profit, Total costumers, Total Quantity, Profit YTD(Curretn year) and Revenue YTD(Curretn year) using DAX.

- In the Stores table a new column was created wich displayed their countries' full name based on the country code column.

-  Hieriachies were created for the dates table (Start Of Year, Star Of Quarter, Start Of Month, Start of Week, Date) and for the Stores table ( World Region, Country, Country region). The categories of the columns on the Stores table's hieriachies were chnged to more appropriate ones.


#### Report 

##### Customer detail paige
- Card visual: total number of customers.
- Card visual: revenue per customer (new measure).
- Donut chart: total number of customers per country.
- Column chart: number of customers per product category.
- Line chart: total number of customers per Start of year, quarter and moth using Date hierarchy and with forecats for the next 10 periods with 95% confidence interval.
-Table: top 20 customers based on revenue, displaying full name, revenue and number of orders.
- Card visual: Top customer's  full name, revenue and number of orders.
- In between year slicer.
- Navegation bar.

##### Executive summary page
- Card visuals: total revenue, total number of orders and total profit.
- Line chart: Total revenue with the date Hierarchy (start of year, start of quarter and start of month).
- Created donut chart  for revenue by country and store type.
- New measures: quarter profit, quarter revenue and quarter orders for current year.
- New measures: target measure for next quarter increasing previous quarter values by 5%.
- KPIs: quarter revenue, quarter profit and quarter orders (new measures) againts their target values (5% increase from original value) (new measure) as maximum value. If the target was not reach the values appear in red.
- Navegation bar.

##### Product Detail page
- New measures: current quarter orders, current quarter reveue and current quarter profit.
- New measures: quarterly targets for orders, revenue and profit (current quarter measure + 10%).
- New measure: difference between current quarter measures (Orders, Revenue and Profit) and targets. 
- Gauges: comparing the curretn quarter performance and agains quarterly targets based. The values will appear red if the targets has not been met.
- Filter cards: product category and country.
- Area chart: revenue by product category.
- Table: top 10 products wiht Product descirption, total revenue, total customers, total orders, total profit per oder columns.
- New measure: profit per item.
- Scatter graph: quantity sold against profit per item.
- Pop slice bar: country and product catgory using bookmarks.
- Navegation bar.

##### Store map page
- Map: based on the geography hierarchy od the tores table and bubbles size by ProfitYTD.
- Slicer: for  countries with the multiple and all selection options.
- New measure: Profit goal and revenue goal, a 20% increase on the previous year's year-to-date profit or revenue.
- Drill through page from the Map: 
   Top 5 product table (Description, Profit YTD, Total Orders and totla revenue), 
   Column chart total orders by category, 
   Gagues for current and goal profit and revenue, 
   Card visual for currently selected store.
- Store Tooltip: based on the store's year-to-date profit performance against the profit target.
- Navegation bar.

##### SQL metrics
Metrics for Users Outside the company Using SQL
- Connected to the Azure SQL server using.
- Created csv file with the names of all the tables within the database. 
- Create csv files with the column names for each table. 
- Query the SQL database save the results as .csv files and the query .sql.


## Main Featues
- Navegation bar to move between report pages.
- Pop up slicer in product detail page to select product category and country.
- Interactive map for store location displaying current vs goal profit for each store locations when hover.

## Licence
[GPL-3.0](https://github.com/ChristianDaza/PowerBI_report/blob/main/LICENSE)

## Contact Information
- Christian
- ch.arenasdaza@gmail.com
