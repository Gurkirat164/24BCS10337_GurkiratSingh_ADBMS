/* Write a query to join the table 'Customer' and 'Purchase' using Customer_id as the common column in the table.
Output the joined table. */

SELECT * FROM Customer c 
JOIN Purchase p
ON c.Customer_id = p.Customer_id;