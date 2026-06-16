--We need SQL endpoint to connect synapse and powr BI
--awproject-synapse-hema-ondemand.sql.azuresynapse.net from syanpse workspace
--Get data in power BI-->connection--->azure--->sysnapse create
--will see data base aif needed use pwd to login into Db to see tables in power BI
---do reports as requires


/********************overview****************/
----PHASE-1-----
--Load data into bronze layer using ADF pipeline and storage account
----PHASE-2-----
--Did the transformation using databrick nootebook and loaded the data trnasofrmed data into 
--silver layer
----PHASE-3-----
--used the azure syanpse SQL serverless pool to load data in gold layer by pulling from silver
--after that connected gold layer data using syanpse workspace SQL endpoint to the powr bi 
--for the reporting purpose