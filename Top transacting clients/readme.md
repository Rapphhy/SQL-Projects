# Top transacting clients(Q1 2010)

### Query Name
`top_transacting_clients.sql`

## Description
This SQL query identifies the top 20 clients based on transaction activity during the first quarter of 2010 (January to March).

### **Query Details**

#### **Source Tables**
- The query uses two tables:
  1. **`transactions`**: Contains details of all transactions, including transaction dates, amounts, and associated client and merchant IDs.
  2. **`payment_details`**: Stores details about merchants, including their unique identifiers (`id`) and other relevant information.

#### **Join Condition**
- The query joins the `transactions` table with the `payment_details` table using the relationship:  
  **`transactions.merchant_id = payment_details.id`**.  
  This ensures that each transaction is linked to its corresponding merchant, providing additional contextual information.

#### **Date Filter**
- The query filters transactions to include only those that occurred in the **first quarter of 2010 (January to March)**.  
  This is achieved using the `EXTRACT` function:
  - **`EXTRACT(YEAR FROM transaction_date) = 2010`**: Filters for transactions where the year is 2010.
  - **`EXTRACT(MONTH FROM transaction_date) BETWEEN 1 AND 3`**

#### **Aggregations**
- The query performs the following calculations for each client:
  1. **Count of transactions (`transaction_count`)**:  
     - Counts the number of individual transactions conducted by each client (`COUNT(transactions.id)`).
     - This shows how active each client was during the specified time period.
  2. **Sum of transaction values (`total_transaction_value`)**:  
     - Calculates the total monetary value of all transactions made by each client (`SUM(transactions.amount)`).
     - This helps identify high-value clients and their contribution to the total revenue.

## Use Case
This query is useful for:
- Understanding client activity in a specific quarter,or even on a monthly basis by adjusting the query to specific month.
- Identifying high-value or high-activity clients during the first quarter of 2010.
- Supporting time-based analyses for trends, seasonality, or business performance.


