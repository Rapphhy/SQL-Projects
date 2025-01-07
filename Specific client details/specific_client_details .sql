SELECT transactions.id AS ID, transactions.amount AS AMOUNT,
transaction_request.description AS NARRATION, 
transactions.transaction_date AS TRANSACTION_DATE, 
payment_details.receipt_no AS SESSION_ID, 
transactions.app_id AS appuser_id,
CASE 
     WHEN transactions.transaction_type = 1 THEN 'CREDIT'
     WHEN transactions.transaction_type = 2 THEN 'DEBIT'
     ELSE 'OTHER'
END AS TRANSACTION_TYPE
FROM  transactions 
JOIN transaction_request ON transactions.client_id = transaction_request.transaction_id
JOIN payment_details ON transactions.merchant_id = payment_details.id
WHERE transactions.transaction_date > '2009-01-01' 
AND transactions.client_id = 1129  
ORDER BY transactions.id;





