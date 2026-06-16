create DATABASE SCOPED CREDENTIAL cred_hema
WITH 
IDENTITY='managed identity'

CREATE DATABASE SCOPED CREDENTIAL credential_name
WITH IDENTITY = 'identity_name'
    [ , SECRET = 'secret' ]
[ ; ]

---external data source---

create EXTERNAL data SOURCE source_silver
WITH
(
    path='https://awstorageaccountdatalake.dfs.core.windows.net/silver/',
    credential=cred_hema
)

----Gold layer source
create EXTERNAL data SOURCE source_gold
WITH
(
    path='https://awstorageaccountdatalake.dfs.core.windows.net/gold/',
    credential=cred_hema
)

create EXTERNAL file FORMAT format_parquet
WITH
(
    FORMAT_TYPE='Parquet',
    DATA_COMPRESSION = org.apache.hadoop.io.compress.GzipCodec

)
-----External tabels-------
--push data from silver layer view to gold and it will create external tabel on top of the data
--using CETAS-create external table as syntax



CREATE EXTERNAL TABLE gold.ext_sales
WITH(
    LOCATION='ext_sales',
    DATA_SOURCE=source_gold,
    FORMAT_TYPE='Parquet'
)
AS
Select * from gold.Sales

select * from gold.ext_sales
----view just to store data but in external table we will have data in gold layer











