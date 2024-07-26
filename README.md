# Data Analytics - PowerBI Report

## Introduction

This repository hosts a PowerBI report documenting data analysis undertaken by David Lewis as part of AiCore's Skills Bootcamp in Data Analytics.

## Milestone 1

Milestone 1 involved creating this repository.

## Milestone 2

Milestone 2 involved extracting the project dataset from various sources, undertaking some basic transformations on the dataset to suit the analysis and then loading the transformed data into PowerBI (ETL process).

Four data sources were used required dat to be sourced from:
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
