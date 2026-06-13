# Azure Retail Sales Pipeline

## Project Overview

This project demonstrates an end-to-end Azure Data Engineering pipeline.

## Technologies Used

- Azure Data Factory
- Azure Data Lake Gen2
- Azure Databricks
- Azure Synapse Analytics
- PySpark
- SQL

## Architecture

Source CSV Files
↓
ADF
↓
ADLS Bronze
↓
Databricks
↓
ADLS Silver
↓
Synapse SQL

## Project Flow

1. Ingest sales data using ADF
2. Store raw files in ADLS Bronze
3. Transform data using PySpark
4. Load curated data into Silver layer
5. Query using Synapse SQL

## Repository Structure

```text
adf/
architecture/
data/
notebooks/
screenshots/
sql/
```

## Author

Hema kalikiri
Azure Data Engineer Portfolio Project
