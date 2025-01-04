# SQL-Projects
A collection of SQL projects showcasing advanced queries, data analysis, and real-world datasets. 🌟


# Before you begin:

Welcome to this data analysis project! 🚀 This guide will help you set up PostgreSQL, create a database called **finance**, and import the datasets to explore meaningful insights. Follow the steps below to join the adventure!

---

## 1️⃣ Install PostgreSQL 🛠️

### Windows:
1. [Download PostgreSQL](https://www.postgresql.org/download/) for Windows.
2. Run the installer and follow the prompts.
   - Remember your **username**, **password**, and **port number** during installation (default port: `5432`).
3. Launch **pgAdmin** after installation to manage your database.

## 2️⃣ Set Up Your Database 🎯

1. Launch your PostgreSQL shell (`psql`) or open **pgAdmin**.
2. Create a new database named **finance**:
   ```sql
   CREATE DATABASE finance;
   ```

---

## 3️⃣ Import the Datasets 📂

### Step 1: Download the Files
Make sure you have the following CSV files ready:
- `transactions.csv`
- `payment_details.csv`
- `transaction_request.csv`

### Step 2: Create Tables in PostgreSQL
Use the commands below to create tables and import the data.

#### Create the `transactions` Table
```sql
CREATE TABLE transactions (
    transaction_id SERIAL PRIMARY KEY,
    session_id VARCHAR(255),
    client_id INT,
    transaction_date TIMESTAMP,
    transaction_type VARCHAR(255),
    amount NUMERIC
);
```
#### Import Data:
```sql
\COPY transactions(session_id, client_id, transaction_date, transaction_type, amount)
FROM '/path/to/transactions.csv'
DELIMITER ','
CSV HEADER;
```

#### Create the `payment_details` Table
```sql
CREATE TABLE payment_details (
    payment_id SERIAL PRIMARY KEY,
    transaction_id INT REFERENCES transactions(transaction_id),
    provider VARCHAR(255),
    payment_status VARCHAR(50)
);
```
#### Import Data:
```sql
\COPY payment_details(transaction_id, provider, payment_status)
FROM '/path/to/payment_details.csv'
DELIMITER ','
CSV HEADER;
```

#### Create the `transaction_request` Table
```sql
CREATE TABLE transaction_request (
    request_id SERIAL PRIMARY KEY,
    session_id VARCHAR(255),
    client_id INT,
    request_date TIMESTAMP,
    request_status VARCHAR(50)
);
```
#### Import Data:
```sql
\COPY transaction_request(session_id, client_id, request_date, request_status)
FROM '/path/to/transaction_request.csv'
DELIMITER ','
CSV HEADER;
```

Replace `/path/to/` with the actual file paths to your CSV files.

---

## 4️⃣ Explore the Data 📊

### Dataset Descriptions:
1. **`transactions` Table**: 
   - Records all financial transactions.
   - Key columns:
     - `transaction_date`: When the transaction occurred.
     - `amount`: The monetary value of the transaction.
     - `transaction_type`: Nature of the transaction (e.g., credit, debit).

2. **`payment_details` Table**: 
   - Tracks payment information linked to transactions.
   - Key columns:
     - `provider`: Payment service provider (e.g., PayPal, Stripe).
     - `payment_status`: Status of the payment (e.g., successful, pending).

3. **`transaction_request` Table**:
   - Captures client requests for transactions.
   - Key columns:
     - `request_status`: Status of the request (e.g., completed, failed).

### Implementations:
- [**Monthly Transaction Analysis Query:**](https://github.com/Rapphhy/SQL-Projects/tree/main/Monthly%20Transaction%20Analysis)
This SQL query performs a month-on-month analysis of transaction data from the transactions table. It provides insights into the total number of transactions, total credits, total debits, and the overall transaction amounts for each month.

---

## 5️⃣ Share Your Insights 💡
Run your analyses, share queries, and help others learn! ✨ Don't forget to **star** this repository if you find it helpful!


Cheers!!
