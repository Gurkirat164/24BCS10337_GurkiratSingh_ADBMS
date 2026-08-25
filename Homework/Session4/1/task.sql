WITH LatestTransactions AS (
  SELECT 
    user_id, 
    MAX(transaction_date) AS max_date
  FROM user_transactions
  GROUP BY user_id
)
SELECT 
  ut.transaction_date, 
  ut.user_id, 
  COUNT(ut.product_id) AS purchase_count
FROM user_transactions ut
JOIN LatestTransactions lt
  ON ut.user_id = lt.user_id 
  AND ut.transaction_date = lt.max_date
GROUP BY 
  ut.transaction_date, 
  ut.user_id
ORDER BY 
  ut.transaction_date ASC;