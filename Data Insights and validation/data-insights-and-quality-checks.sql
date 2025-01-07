------ **Data Insight** (understand what the dataset entails)

SELECT * FROM payment_details
limit 1;

select * from transaction_request
limit 1;

select * from transactions
limit 1;





-------- **Data Quality Check** (check for missing data)
SELECT *
FROM transactions
WHERE 
    id IS NULL OR
    transaction_type IS NULL OR
    transaction_date IS NULL OR
    amount IS NULL OR
    client_id IS NULL OR
    merchant_id IS NULL OR
    app_id IS NULL;


