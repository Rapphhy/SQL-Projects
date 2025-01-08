SELECT 
    transactions.client_id,
    COUNT(transactions.id) AS transaction_count,
    SUM(transactions.amount) AS total_transaction_value
FROM 
    transactions
JOIN 
    payment_details ON transactions.merchant_id = payment_details.id
WHERE 
    EXTRACT(YEAR FROM transactions.transaction_date) = 2010 
    AND EXTRACT(MONTH FROM transactions.transaction_date) BETWEEN 1 AND 3
GROUP BY 
    transactions.client_id
ORDER BY 
    transaction_count DESC
LIMIT 20;
