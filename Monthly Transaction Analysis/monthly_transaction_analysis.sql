SELECT 
    TO_CHAR(transaction_date, 'YYYY-MM') AS year_month,
    COUNT(id) AS total_transactions,
    SUM(CASE WHEN transaction_type = 1 THEN amount ELSE 0 END) AS total_credits,
    SUM(CASE WHEN transaction_type = 2 THEN amount ELSE 0 END) AS total_debits,
    SUM(amount) AS total_amount
FROM 
    transactions
GROUP BY 
    TO_CHAR(transaction_date, 'YYYY-MM'), EXTRACT(MONTH FROM transaction_date)
ORDER BY 
    year_month;
