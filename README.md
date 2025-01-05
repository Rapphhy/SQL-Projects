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
    id SERIAL PRIMARY KEY,
    transaction_type INT,
    transaction_date TIMESTAMP,
    client_id INT,
    amount NUMERIC,
    merchant_id INT,
    app_id INT
);
```
#### Import Data:
```sql
\COPY transactions(id, transaction_type, transaction_date, client_id, amount, merchant_id, app_id)
FROM '/path/to/transactions.csv'
DELIMITER ','
CSV HEADER;
```

#### Create the `payment_details` Table
```sql
CREATE TABLE payment_details (
    id SERIAL PRIMARY KEY,
    receipt_no VARCHAR(255),
    acct_open_date DATE
);
```
#### Import Data:
```sql
\COPY payment_details(id, receipt_no, acct_open_date)
FROM '/path/to/payment_details.csv'
DELIMITER ','
CSV HEADER;
```

#### Create the `transaction_request` Table
```sql
CREATE TABLE transaction_request (
    transaction_id INT PRIMARY KEY,
    description TEXT
);
```
#### Import Data:
```sql
\COPY transaction_request(transaction_id, description)
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
     - `transaction_type`: Type of transaction (e.g., purchase, transfer).
     - `transaction_date`: When the transaction occurred.
     - `client_id`: The client involved in the transaction.
     - `amount`: The monetary value of the transaction.
     - `merchant_id`: The merchant associated with the transaction.
     - `app_id`: The application used for the transaction.

2. **`payment_details` Table**:
   - Tracks payment information.
   - Key columns:
     - `receipt_no`: Receipt number of the transaction.
     - `acct_open_date`: The account opening date.

3. **`transaction_request` Table**:
   - Captures additional transaction details.
   - Key columns:
     - `description`: Details of the transaction or item.

### Implementations:
- [**Data Exploration and Validation:**](https://github.com/Rapphhy/SQL-Projects/tree/main/Data%20Exploration%20and%20Validation)
This SQL queries designed to support both data exploration and data quality assurance. These queries provide a foundational understanding of dataset structures while ensuring the integrity of critical data. By combining sample data extraction with data integrity checks, these scripts serve as essential tools for exploratory data analysis and validation.
- [**Monthly Transaction Analysis Query:**](https://github.com/Rapphhy/SQL-Projects/tree/main/Monthly%20Transaction%20Analysis)
This SQL query performs a month-on-month analysis of transaction data from the transactions table. It provides insights into the total number of transactions, total credits, total debits, and the overall transaction amounts for each month.

---

## 5️⃣ Share Your Insights 💡
Run your analyses, share queries, and help others learn! ✨ Don't forget to **star** this repository if you find it helpful!


Cheers!!
