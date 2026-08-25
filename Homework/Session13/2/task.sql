/* Write a query to join the table 'Customer' and 'Purchase' using Customer_id as the common column in the table.
Output the joined table including the list of customers who hasn't made any purchases yet. */

SELECT * FROM customer c 
LEFT JOIN purchase p 
ON c.Customer_id = p.Customer_id;