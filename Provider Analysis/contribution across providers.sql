SELECT 
    CASE 
        WHEN app_id = 1 THEN 'Provider A'
        WHEN app_id = 3 THEN 'Provider B'
    END AS provider,
    COUNT(*) AS transaction_count,
    SUM(amount) AS total_amount
FROM 
    transactions
WHERE 
    app_id IN (1, 3)  -- Provider A and Provider B
GROUP BY 
    app_id;