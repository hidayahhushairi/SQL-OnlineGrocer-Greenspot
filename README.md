# Greenspot Grocer SQL Database
![GitHub last commit (branch)](https://img.shields.io/github/last-commit/hidayahhushairi/SQL-OnlineGrocer-Greenspot/main)

## Introduction
Greenspot Grocer is an online grocer that conduct sales of household products. The store manage their vendors suppliers, stocks and customers details using a .CSV format file.

### Technologies Applied
Data cleaning on CSV file
Database Design Tool: MYSQL WORKBENCH 8.0 CE

## Approach
#### Database Design:
- The sample database was created in a.CSV file. Vendors, items, and customer data are stored in a table. As business and data processes are conducted invariably, business is prone to data entry errors,
measurement inaccuracies, or unexpected events. Consequentially, the file format has affected data quality with anomalies such as missing or extra delimiters, missmatched quotation marks, and unescaped line breaks.
Entity Relationship Diagram (EER) helps to address this issue by identifying relevant entities, attributes, and group relationships within the system for efficient placement.

  ![erd_greenspotgrocer](https://github.com/hidayahhushairi/SQL-OnlineGrocer-Greenspot/assets/106440459/bd49001a-805f-4443-9302-ded68c846822)

#### Database Creation:
- Data Definition Language (DDL) defines access rights to database objects, such as tables and indexes. A CREATE DATABASE statement is used to create a database. 
This next crucial part involves table creation by defining the columns for each table and setting appropriate data types. 
#### Database testing: 
- Joining tables includes one or more queries to validate the relationship between entries in the database. The main objectives of queries are to support customers's propensity to buy a product,
vendor performance, and their item quality process. For this project, five queries are being tested, shown as below:

    1. The highest overall customer purchase and the total spent by month;
    2. The frequency of regular membership customers purchasing items
    3. Vendors and their amounts of items by type of item
    4. Item name, unit, ID, and the number of items restocked
    5. Connect all three tables to identify the overview of business.
       
#### Insight and conclusion:
- The sample database has a data structure with no normalization, loaded with null values, repeating groups, and general column formats. Understanding functional dependencies and normalization in database design
are the best approaches to achieving schema design goals, reducing the chances of anomalies, and maintaining data integrity. Database design provides businesses with the foundation to effectively
aggregate information, integrate complex queries, and generate meaningful reports. These possible ways for databases to become more valuable in the future include improving data modeling, surrogating key
considerations, and linking with business intelligence and analytics tools.
 
 
 
