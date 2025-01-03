# Monthly Transaction Analysis Query

## Query Name
`monthly_transaction_analysis.sql`

## Description
This SQL query performs a month-on-month analysis of transaction data from the `transactions` table. It provides insights into the total number of transactions, total credits, total debits, and the overall transaction amounts for each month.

## Columns Generated
The query generates the following columns in its result set:

1. **year_month**: Displays the year and month of the transactions in `YYYY-MM` format.
2. **total_transactions**: The total number of transactions recorded in that month.
3. **total_credits**: The sum of all credit transactions (where `transaction_type = 1`) for that month.
4. **total_debits**: The sum of all debit transactions (where `transaction_type = 2`) for that month.
5. **total_amount**: The total sum of transaction amounts (credits and debits combined) for that month.

## Query Logic
1. **Data Extraction**:
   - Extracts the `transaction_date` column in `YYYY-MM` format to group transactions by month.
   - Counts the total transactions for each month.
2. **Conditional Aggregation**:
   - Credits and debits are summed separately using conditional aggregation.
   - Total amounts (irrespective of transaction type) are summed.
3. **Sorting**:
   - The result is ordered by `year_month` in ascending order to show a chronological sequence.

## Use Cases
- **Business Insights**: Assess monthly cash inflows (credits) and outflows (debits).
- **Transaction Insights**: Identify patterns, trends, and seasonality in transaction activity

## How to Run
1. See root readme on how to set up dataset in database.
2. Ensure you have access to a dataset by downloading the file containing the `transactions` table.
3. Execute the SQL query in your preferred SQL client or database interface.

## Notes
- Ensure that the `transaction_type` values are consistent and correctly defined:
  - `1` for credits
  - `2` for debits
- The `amount` column should store transaction values in a numeric format (e.g., integer or decimal).

