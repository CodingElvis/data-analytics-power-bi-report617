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
