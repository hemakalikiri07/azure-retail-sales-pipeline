--Database creation---
--SQL databse
----Schema creation---
CREATE SCHEMA gold;
----View creation---
----Calender view-----
CREATE VIEW gold.calender
AS
select * from 
OPENROWSET(
    BULK 'https://awstorageaccountdatalake.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT='PARQUET') AS quer1
-------Customer view-----
CREATE VIEW gold.Customer
AS
select * from 
OPENROWSET(
    BULK 'https://awstorageaccountdatalake.dfs.core.windows.net/silver/AdventureWorks_Customer/',
    FORMAT='PARQUET') AS quer1
-------Products view-----
CREATE VIEW gold.Products
AS
select * from 
OPENROWSET(
    BULK 'https://awstorageaccountdatalake.dfs.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT='PARQUET') AS quer1
-------Product_categoeries view-----
CREATE VIEW gold.Product_categoeries
AS
select * from 
OPENROWSET(
    BULK 'https://awstorageaccountdatalake.dfs.core.windows.net/silver/AdventureWorks_Product_categoeries/',
    FORMAT='PARQUET') AS quer1
-------Returns view-----
CREATE VIEW gold.Returns
AS
select * from 
OPENROWSET(
    BULK 'https://awstorageaccountdatalake.dfs.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT='PARQUET') AS quer1
-------Sales view-----
CREATE VIEW gold.Sales
AS
select * from 
OPENROWSET(
    BULK 'https://awstorageaccountdatalake.dfs.core.windows.net/silver/AdventureWorks_s=Sales/',
    FORMAT='PARQUET') AS quer1
-------Territories view-----
CREATE VIEW gold.Territories
AS
select * from 
OPENROWSET(
    BULK 'https://awstorageaccountdatalake.dfs.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT='PARQUET') AS quer1
-------Product sub cate view-----
CREATE VIEW gold.Product_subcategoires
AS
select * from 
OPENROWSET(
    BULK 'https://awstorageaccountdatalake.dfs.core.windows.net/silver/AdventureWorks_Product_subcategoires/',
    FORMAT='PARQUET') AS quer1


