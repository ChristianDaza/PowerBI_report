# PowerBI_report
Data analyitics in PowerBi

## Description
 
PowerBI_report is a PowerBI based data analytics project, in which data was imported from the Azure SQL Database,  Azure Blob Storage, or downloaded. These were then cleaned using Power Query for NUll, missing values, duplicates, splitting and joining columns, Changed column names. 

The aim of this project was to apply the knowledge and skills gain in the Azure and PowerBI modules of AiCore to gain more experience. From this experience I leanerd  ...

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
Extracting Data
- Imported Sales data from the Azure SQL Database,  Azure Blob Storage, or downloaded.

Cleaning
- using Power Query for NUll, missing values, duplicates, splitting and joining columns, Changed column names. 

Data Model
- Date table
   Created data table  based earliest date of  Orders['Order Date'] column anf latest date of Orders['Shipping Date']. Then     it  was populated with : Day of Week, Month Number, Month Name, Quarter, Year, Start of Year, Start of Quarter, Start of     Month and  Start of Week columns by using DAX formulas.

- Build start schema
  Create relationships  between tables sharing product code, Store code.
  Make relationship between  Store User UUID-User ID
  Make relayionship between date and Order date, date and shipping date.
  Only oder date-Shipping Date  is the active relationhsip, while all other  are one to many  wiht single direction filter

- Create measures
  Created measure tables and populated them wiht: Total Orders, Total Revenue, Total Profit, Total costumers, Total Quantity, Profit YTD(Curretn year) and Revenue YTD(Curretn year).


 - Hieriachies 
    Creatted the following hierarchy on dates table: Start Of Year, Star Of Quarter, Start Of Month, Start of Week, , Date.
    Swithce contry codes to their corresponding country name.
    Create a full greography name for the store table: country region, Country name.
    Make sure World region, Country and country regions columns hae the appropriate data category.
   Create gepgraphy ctegory in store table: World Region, Country, Country region.
   

Report setup

Customer detail paige
Executive summary page
Product Detail page

Storres map page

Cross-filtering and navigation
Metrics for Users Outside the company Using SQL





## Main Featues

- 
-  

## Licence
[GPL-3.0](https://github.com/ChristianDaza/PowerBI_report/blob/main/LICENSE)

## Contact Information
- Christian
- ch.arenasdaza@gmail.com
