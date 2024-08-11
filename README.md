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

Executive summary page
- Created card visuals for total Revenue, Total Orders and Total profit.
- Created  Total revenue line chart with the date Hierarchy for start of year, quarter and month.
- Created donut chart  for revenue by country and store type.
- Created Previous quarter profit, revenue and orders measures.
- Created target measure for next quarter increasing previous quarter values by 5%.
- Created KPI for total revenue, Total profit and total order using Total revenue, start of quarter and their target measures.
- Format KPI's, direction (High good), Bad color(red), Transparency(15%).


Product Detail page
- Create new measures: current quarter Orders, Reveue and profit.
- Create new measures: Quarterly target for orders, revenue and profit (current quarter measure + 10%).
- Create new measure: difference between current quarter measures (Orders, Revenue and Profit) and targets
- Added three gauges: comparing the curretn quarter performance and gains quarterly targets based on the previous measures. Applied conditional formatting  red if target has not been met.
- Added Filter crads for product category and country.
- Added an area chart for revenue by product category.
- Added a top product table wiht the following columns: Product descirption, Total revenue, Total customers, Totalm Orders, Total profit per Oder.
- Create new measure profit per item.
- Added scatter graph  of quantityt sold gainst profit per item using the Profit per item measure.
- Adde a pop slice bar for country and product catgory using bookmarks.



Storres map page
- Add map visualisation based on the geography hierarchy and bubbles size by ProfitYTD.
- Add a slicer for each of the countries wiht the multiple and all selection options.
- Create Profit goal and revenue goal measures , which should be a 20% increase on the previous year's year-to-date profit.
- Create a drill through page from the Map page containing:Table(Description, Profit YTD, Total Orders and totla revenue), Column chart total orders by category, Gaguses for current and goal profit, Card visual for currently selected store.
- Add a Store Tooltip page based on the  store's year-to-date profit performance against the profit target.



Cross-filtering and navigation
-  Edit inetrations  for visual in the Executive summary, Customer Detail and Product detail pages.

- Complete navegation bars, with icons for each main page, which chnage color when hover and when ctl + shif + click it move to the page assigned ot the icon.

Metrics for Users Outside the company Using SQL
- Connect to the AZure SQL server using PGADMIN4
- Create csv file wiht the names of all the tables. 
- Create csv files with the column names of for each table. 
- Query the SQL database save the results as .csv files and the query .sql.





## Main Featues

- 
-  

## Licence
[GPL-3.0](https://github.com/ChristianDaza/PowerBI_report/blob/main/LICENSE)

## Contact Information
- Christian
- ch.arenasdaza@gmail.com
