# Data Analytics - PowerBI Report

## Introduction

This repository hosts a PowerBI report documenting data analysis undertaken by David Lewis as part of AiCore's Skills Bootcamp in Data Analytics.

## Milestone 1

Milestone 1 involved creating this repository.

## Milestone 2

Milestone 2 involved extracting the project dataset from various sources, undertaking some basic transformations on the dataset to suit the analysis and then loading the transformed data into PowerBI (ETL process).

Four data sources were used:
- an Azure SQL database
- a provided CSV file
- a CSV file requirding extraction from Azure blob storage
- a zipped folder containing three CSV files that were extracted and combined through the PowerBi folder connector.

Transformations on the data included:
- splitting columns eg seperating Datetime into Date column and Time column 
- combining columns eg to create A Full Name identifier from first name and last name
- removing columns, to respect data privacy or where columns were redundant
- removing duplicates
- filtering out records where certain fields had missing data.

## Milestone 3

Milestone 3 focused on creating the data model for the project.

First a date table was created.  To ensure that the full range of dates was included we used the DAX CALENDAR function, with parameters of the start of the earliest year and the end of the latest year featuring in the dataset.
The date table was then expanded with fields such as Year, Month, Weekday, and Start of Year, Month, Week.

The data model was then created using a star-based schema.  We used a central fact table (the orders table) and appropriately linked this table to four dimension tables (date, stores, customers, products).

Next we created a measures table and populated it with key measures that will be used in the report such as:
- Total Orders (using COUNT and the orders table)
- Total Revenue and Profit (using SUMX on the orders table gathering RELATED information from the products table)
- Total Customers (COUNT of unique customers in th e Orders table)
- Total Quantity (SUM of quantities in the Orders table)
- Revenue YTD and Profit YTD (using TOTALYTD and our existing measures).

- Finally, we handled some issues with the geography in the stores table, and created Date and Geography hierarchies.

## Milestone 4

Milestone 4 involved creating the basic structure for the report and its navigation.

## Milestone 5

The Customer Detail page of the report was constructed during Milestone 5.

First, we created card visuals showing Total Customers and Average Revenue per Customer (also creating a new measure calculaing the latter).

Second, we created donut and column charts showing customers by location (country) and product category respectively.

Third, we created a line chart showing Total Revenue over time.  We used the date hierarchy established earlier so that a report user can drill down as far as individual months.  We also used options in Power BI to add a trend line and forecast with 95% confidence interval for ten periods.

Fourth, we created a Table showing the Top 20 Customers by Revenue (filetering the data using Power BI's Top N feature, and created card visuals highlighted the top customer with revenuie and orders from them (again using Top N filtering with N=1.

Finally we added a "between" slicer, allowing the report user to set the period (by years) for the dataset used to build all the visuals on this page,

## Milestone 6

Milestone 6 required the construction of the Executive Summary page of the report.

First, we added card visuals showing Total Revenue, Orders and Profit.  This could be achieved by copying and repurposing card visuals from Milestone 5.

Second, we copied and repurposed the line chart from Milestone 5 to show revenue over time.

Third, we inserted a pair of donut charts showing the split of revenue between countries and between store types.  Again, this involved repurposing the donut chart from Milestone 5.

We then repurposed the Milestone 5 column chart in order to show a bar chart of orders by product category.

Finally we created KPI card visuals for quarterly revenue, orders and profit.  We began by creating measures of these quantities in the previous quarter, and used these to set a target based on 5% growth.
We then showed performance against this measure on a formatted KPI visual card.

## Milestone 7

To complete Milestone 7 we created the Product Detail page of the report.

First, we created gauge filters showing current quarter performance for orders, revenue and profit versus a target set as a 10% increase on the previous quarter.  This required creating measures of the previous quarter performance, target performance and QTD.  We formatted the gauges to show current QTD, with a "full bar" defined by target performance.  We added colour formatting to the callout QTD value based on whether the target had been achieved (involving setting up a measure of the performance gap and testing if it was positive or negative).

Second we added card visuals showing which ccountry and product category filters were currently affecting the page (based on a template DAX query).

Third, we added an area chart showing revenue over time by product catgeory.

Fourth, we added a table of the ten top selling products (by revenue) showing revenue, orders, total customers (( and profit per order )), borrowing the table format from Milestone 5.

Fifth, we added a scatter chart showing profit per item (a new calculated column) and quantity sold, thus allowing identification of high profit high volume data points.

Finally we built a toolbar allowing the selections of product category and / or country to be made, allowing multiple options to be selected.  We allowed this to be opened and closed by creating bookmarks of the page with the slicers visible and hidden, then assigning them to "open filter" and "back" buttons respectively.
