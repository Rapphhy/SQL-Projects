# Data Insights and Validation 

## Query Name
`data-insights-and-quality-checks.sql`

### Description
This repository contains SQL queries designed to support both data exploration and data quality assurance. These queries provide a foundational understanding of dataset structures while ensuring the integrity of critical data. By combining sample data extraction with data integrity checks, these scripts serve as essential tools for exploratory data analysis and validation.

### Query Purpose
The purpose of the first query is to perform **sample data extraction for insight** 
- **Identify Table Structure**: Understand the column names, data types, and the layout of each table.  
- **Review Sample Data**: See a representative row to gain a sense of the kinds of data stored in the table.  
- **Plan Data Exploration**: Use this insight as a foundation to design further analysis, cleaning, or transformation steps.  

The purpose of the second query is to perform a **data integrity check** 
- **Data Quality:** Pinpoint missing or incomplete data for further investigation and resolution.  
- **Reliability:** Validate the dataset's readiness for  analysis or reporting.    

### Use Cases  

1. **Exploratory Data Analysis**  
   - Use the sample data extraction queries during the initial exploration phase to understand the dataset structure and schema.  

2. **Data Integrity Validation**  
   - Apply the data quality check query as part of your data cleansing process to ensure the dataset is ready for analysis.  
   - Ensure that the transactional data is complete, accurate, and dependable for further analysis.


### How to Run
Ensure you have access to the dataset by following the steps in  [root readme](https://github.com/Rapphhy/SQL-Projects/blob/main/README.md) 

1. **Data Insight**  
   - Run the first set of queries in your SQL client or query editor.  
   - Examine the structure and content of each table using the extracted rows.  

2. **Data Quality Check**  
   - Execute the second query on the `transactions` table.  
   - Review the returned rows to identify missing critical data and take corrective actions.
   - This process can be repeated for the other tables as well.  



