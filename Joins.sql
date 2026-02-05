-- 1. INNER JOIN
-- Purpose: Retrieve all transactions with complete customer and account details
-- Use Case: Analyze active transactions with valid customer and product information
SELECT 
    t.transaction_id,
    t.reference_number,
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    r.region_name,
    a.account_number,
    a.account_type,
    t.transaction_type,
    t.amount,
    t.transaction_date,
    t.description
FROM TRANSACTIONS t
INNER JOIN ACCOUNTS a ON t.account_id = a.account_id
INNER JOIN CUSTOMERS c ON a.customer_id = c.customer_id
INNER JOIN REGIONS r ON c.region_id = r.region_id
ORDER BY t.transaction_date DESC;


-- 2. LEFT JOIN
-- Purpose: Identify customers who have never made any transactions
-- Use Case: Find inactive customers for targeted re-engagement campaigns
SELECT 
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    c.email,
    c.phone,
    r.region_name,
    c.registration_date,
    CASE 
        WHEN t.transaction_id IS NULL THEN 'No Transactions'
        ELSE 'Has Transactions'
    END AS transaction_status,
    COUNT(t.transaction_id) AS total_transactions
FROM CUSTOMERS c
LEFT JOIN ACCOUNTS a ON c.customer_id = a.customer_id
LEFT JOIN TRANSACTIONS t ON a.account_id = t.account_id
INNER JOIN REGIONS r ON c.region_id = r.region_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.email, c.phone, 
         r.region_name, c.registration_date, t.transaction_id
HAVING COUNT(t.transaction_id) = 0
ORDER BY c.registration_date;

-- 3. RIGHT JOIN
-- Purpose: Detect accounts with no transaction activity
-- Use Case: Identify dormant accounts for account maintenance or closure
SELECT 
    a.account_id,
    a.account_number,
    a.account_type,
    c.first_name || ' ' || c.last_name AS customer_name,
    r.region_name,
    a.balance,
    a.opening_date,
    CASE 
        WHEN t.transaction_id IS NULL THEN 'Dormant Account'
        ELSE 'Active Account'
    END AS account_status,
    COUNT(t.transaction_id) AS transaction_count
FROM TRANSACTIONS t
RIGHT JOIN ACCOUNTS a ON t.account_id = a.account_id
INNER JOIN CUSTOMERS c ON a.customer_id = c.customer_id
INNER JOIN REGIONS r ON c.region_id = r.region_id
GROUP BY a.account_id, a.account_number, a.account_type, c.first_name, 
         c.last_name, r.region_name, a.balance, a.opening_date, t.transaction_id
HAVING COUNT(t.transaction_id) = 0
ORDER BY a.opening_date;


-- 4. FULL OUTER JOIN
-- Purpose: Compare all customers and all accounts including unmatched records
-- Use Case: Comprehensive data quality audit and system integrity check
SELECT 
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    c.email,
    a.account_id,
    a.account_number,
    a.account_type,
    a.balance,
    r.region_name,
    CASE 
        WHEN c.customer_id IS NULL THEN 'Account without Customer (Data Error)'
        WHEN a.account_id IS NULL THEN 'Customer without Account'
        ELSE 'Valid Customer-Account Pair'
    END AS data_status
FROM CUSTOMERS c
FULL OUTER JOIN ACCOUNTS a ON c.customer_id = a.customer_id
LEFT JOIN REGIONS r ON c.region_id = r.region_id
WHERE c.customer_id IS NULL OR a.account_id IS NULL
ORDER BY data_status, c.customer_id, a.account_id;

-- 5. SELF JOIN
-- Purpose: Compare customers within the same region
-- Use Case: Identify multiple customers from the same region for regional analysis
SELECT 
    c1.customer_id AS customer1_id,
    c1.first_name || ' ' || c1.last_name AS customer1_name,
    c2.customer_id AS customer2_id,
    c2.first_name || ' ' || c2.last_name AS customer2_name,
    r.region_name,
    r.region_code,
    c1.registration_date AS customer1_reg_date,
    c2.registration_date AS customer2_reg_date,
    ABS(c1.registration_date - c2.registration_date) AS days_between_registration
FROM CUSTOMERS c1
INNER JOIN CUSTOMERS c2 ON c1.region_id = c2.region_id 
    AND c1.customer_id < c2.customer_id
INNER JOIN REGIONS r ON c1.region_id = r.region_id
WHERE ABS(c1.registration_date - c2.registration_date) <= 7
ORDER BY r.region_name, days_between_registration;


-- Additional Analysis: Transaction Patterns by Region (Bonus)
SELECT 
    r.region_name,
    COUNT(DISTINCT c.customer_id) AS total_customers,
    COUNT(DISTINCT a.account_id) AS total_accounts,
    COUNT(t.transaction_id) AS total_transactions,
    ROUND(AVG(t.amount), 2) AS avg_transaction_amount,
    SUM(t.amount) AS total_transaction_value
FROM REGIONS r
LEFT JOIN CUSTOMERS c ON r.region_id = c.region_id
LEFT JOIN ACCOUNTS a ON c.customer_id = a.customer_id
LEFT JOIN TRANSACTIONS t ON a.account_id = t.account_id
GROUP BY r.region_name
ORDER BY total_transaction_value DESC;
