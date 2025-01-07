
# Client Transaction Details Query

## Query Name
`specific_client_details.sql`

## Overview
This SQL query retrieves detailed transaction information for a specific client from a financial dataset. It joins three tables (`transactions`, `transaction_request`, and `payment_details`) to provide insights into the client's transactions based on defined criteria.

## Query Features
- Retrieves key transaction details such as:
  - **Transaction ID**: Unique identifier for each transaction.
  - **Amount**: Value of the transaction.
  - **Narration**: Description of the transaction.
  - **Transaction Date**: Date the transaction occurred.
  - **Session ID**: Reference to the session or payment receipt.
  - **App User ID**: Identifier for the app user.
  - **Transaction Type**: Categorizes transactions as `CREDIT`, `DEBIT`, or `OTHER`.
- Filters transactions for a specific client (`client_id = 1129`) that occurred after January 1, 2009.
- Orders results by transaction ID for easy analysis.

## SQL Logic
- Utilizes `JOIN` statements to combine data from three related tables:
  - `transactions`: Primary table containing transaction records.
  - `transaction_request`: Table providing additional transaction descriptions.
  - `payment_details`: Table linking merchant and session details.
- Includes a `CASE` statement to classify transaction types as `CREDIT`, `DEBIT`, or `OTHER`.

## How to Use
1. Run the query in your preferred SQL editor or database management tool.
2. Replace the `client_id` in the `WHERE` clause if you wish to analyze transactions for a different client.
3. Review the results, which are ordered by transaction ID for clarity.

## Use cases
This query can be used to:
- Analyze transaction patterns for a specific client.
- Identify high-value or unusual transactions.
- Provide insights for business decisions related to a specific client's transaction.