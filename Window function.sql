
-- CATEGORY 1: RANKING FUNCTIONS
-- 1.1 ROW_NUMBER() - Assign unique sequential numbers to transactions per account
SELECT 
    t.transaction_id,
    a.account_number,
    c.first_name || ' ' || c.last_name AS customer_name,
    t.transaction_type,
    t.amount,
    t.transaction_date,
    ROW_NUMBER() OVER (PARTITION BY a.account_id ORDER BY t.transaction_date) AS transaction_sequence
FROM TRANSACTIONS t
INNER JOIN ACCOUNTS a ON t.account_id = a.account_id
INNER JOIN CUSTOMERS c ON a.customer_id = c.customer_id
ORDER BY a.account_number, transaction_sequence;

-- 1.2 RANK() - Rank customers by total transaction amount per region
SELECT 
    r.region_name,
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    COUNT(t.transaction_id) AS total_transactions,
    SUM(t.amount) AS total_transaction_amount,
    RANK() OVER (PARTITION BY r.region_id ORDER BY SUM(t.amount) DESC) AS customer_rank
FROM CUSTOMERS c
INNER JOIN REGIONS r ON c.region_id = r.region_id
INNER JOIN ACCOUNTS a ON c.customer_id = a.customer_id
LEFT JOIN TRANSACTIONS t ON a.account_id = t.account_id
GROUP BY r.region_name, r.region_id, c.customer_id, c.first_name, c.last_name
ORDER BY r.region_name, customer_rank;

-- 1.3 DENSE_RANK() - Dense ranking of accounts by balance within account type
SELECT 
    a.account_type,
    a.account_number,
    c.first_name || ' ' || c.last_name AS customer_name,
    a.balance,
    DENSE_RANK() OVER (PARTITION BY a.account_type ORDER BY a.balance DESC) AS balance_rank
FROM ACCOUNTS a
INNER JOIN CUSTOMERS c ON a.customer_id = c.customer_id
ORDER BY a.account_type, balance_rank;

-- 1.4 PERCENT_RANK() - Calculate percentile ranking of transaction amounts
SELECT 
    t.transaction_id,
    t.reference_number,
    c.first_name || ' ' || c.last_name AS customer_name,
    t.transaction_type,
    t.amount,
    ROUND(PERCENT_RANK() OVER (ORDER BY t.amount) * 100, 2) AS percentile_rank
FROM TRANSACTIONS t
INNER JOIN ACCOUNTS a ON t.account_id = a.account_id
INNER JOIN CUSTOMERS c ON a.customer_id = c.customer_id
ORDER BY percentile_rank DESC;

-- CATEGORY 2: AGGREGATE WINDOW FUNCTIONS
-- 2.1 SUM() OVER - Running total of deposits by account
SELECT 
    a.account_number,
    c.first_name || ' ' || c.last_name AS customer_name,
    t.transaction_date,
    t.transaction_type,
    t.amount,
    SUM(CASE WHEN t.transaction_type = 'DEPOSIT' THEN t.amount ELSE 0 END) 
        OVER (PARTITION BY a.account_id ORDER BY t.transaction_date 
              ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_deposit_total
FROM TRANSACTIONS t
INNER JOIN ACCOUNTS a ON t.account_id = a.account_id
INNER JOIN CUSTOMERS c ON a.customer_id = c.customer_id
WHERE a.account_id IN (5001, 5002, 5003, 5004, 5006)
ORDER BY a.account_number, t.transaction_date;

-- 2.2 AVG() OVER with RANGE - Calculate moving average of transaction amounts
SELECT 
    t.transaction_date,
    c.first_name || ' ' || c.last_name AS customer_name,
    a.account_type,
    t.amount,
    ROUND(AVG(t.amount) OVER (PARTITION BY a.account_type 
                              ORDER BY t.transaction_date 
                              RANGE BETWEEN INTERVAL '7' DAY PRECEDING AND CURRENT ROW), 2) 
        AS weekly_avg_amount
FROM TRANSACTIONS t
INNER JOIN ACCOUNTS a ON t.account_id = a.account_id
INNER JOIN CUSTOMERS c ON a.customer_id = c.customer_id
ORDER BY a.account_type, t.transaction_date;


-- 2.3 MIN() and MAX() OVER - Find minimum and maximum transactions within regions
SELECT 
    r.region_name,
    c.first_name || ' ' || c.last_name AS customer_name,
    t.amount AS transaction_amount,
    MIN(t.amount) OVER (PARTITION BY r.region_id) AS regional_min_transaction,
    MAX(t.amount) OVER (PARTITION BY r.region_id) AS regional_max_transaction,
    t.amount - MIN(t.amount) OVER (PARTITION BY r.region_id) AS diff_from_min,
    MAX(t.amount) OVER (PARTITION BY r.region_id) - t.amount AS diff_from_max
FROM TRANSACTIONS t
INNER JOIN ACCOUNTS a ON t.account_id = a.account_id
INNER JOIN CUSTOMERS c ON a.customer_id = c.customer_id
INNER JOIN REGIONS r ON c.region_id = r.region_id
ORDER BY r.region_name, t.amount DESC;


-- 2.4 SUM() OVER with ROWS - 3-month rolling sum by account type
SELECT 
    TO_CHAR(t.transaction_date, 'YYYY-MM') AS transaction_month,
    a.account_type,
    COUNT(t.transaction_id) AS monthly_transaction_count,
    SUM(t.amount) AS monthly_total,
    SUM(SUM(t.amount)) OVER (PARTITION BY a.account_type 
                             ORDER BY TO_CHAR(t.transaction_date, 'YYYY-MM') 
                             ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS three_month_rolling_sum
FROM TRANSACTIONS t
INNER JOIN ACCOUNTS a ON t.account_id = a.account_id
GROUP BY TO_CHAR(t.transaction_date, 'YYYY-MM'), a.account_type
ORDER BY a.account_type, transaction_month;

-- CATEGORY 3: NAVIGATION FUNCTIONS
-- 3.1 LAG() - Month-over-month transaction comparison
WITH monthly_transactions AS (
    SELECT 
        TO_CHAR(t.transaction_date, 'YYYY-MM') AS transaction_month,
        COUNT(t.transaction_id) AS transaction_count,
        SUM(t.amount) AS total_amount
    FROM TRANSACTIONS t
    GROUP BY TO_CHAR(t.transaction_date, 'YYYY-MM')
)
SELECT 
    transaction_month,
    transaction_count,
    total_amount,
    LAG(total_amount, 1) OVER (ORDER BY transaction_month) AS previous_month_amount,
    total_amount - LAG(total_amount, 1) OVER (ORDER BY transaction_month) AS absolute_change,
    ROUND(((total_amount - LAG(total_amount, 1) OVER (ORDER BY transaction_month)) / 
           NULLIF(LAG(total_amount, 1) OVER (ORDER BY transaction_month), 0)) * 100, 2) AS percent_change
FROM monthly_transactions
ORDER BY transaction_month;

-- 3.2 LEAD() - Compare current transaction with next transaction
SELECT 
    a.account_number,
    c.first_name || ' ' || c.last_name AS customer_name,
    t.transaction_date AS current_transaction_date,
    t.amount AS current_amount,
    LEAD(t.transaction_date, 1) OVER (PARTITION BY a.account_id ORDER BY t.transaction_date) 
        AS next_transaction_date,
    LEAD(t.amount, 1) OVER (PARTITION BY a.account_id ORDER BY t.transaction_date) 
        AS next_amount,
    LEAD(t.transaction_date, 1) OVER (PARTITION BY a.account_id ORDER BY t.transaction_date) 
        - t.transaction_date AS days_until_next_transaction
FROM TRANSACTIONS t
INNER JOIN ACCOUNTS a ON t.account_id = a.account_id
INNER JOIN CUSTOMERS c ON a.customer_id = c.customer_id
WHERE a.account_id IN (5001, 5003, 5004, 5006, 5010)
ORDER BY a.account_number, t.transaction_date;

-- CATEGORY 4: DISTRIBUTION FUNCTIONS
-- 4.1 NTILE(4) - Segment customers into quartiles based on transaction frequency
WITH customer_activity AS (
    SELECT 
        c.customer_id,
        c.first_name || ' ' || c.last_name AS customer_name,
        r.region_name,
        COUNT(t.transaction_id) AS transaction_count,
        SUM(t.amount) AS total_transaction_amount
    FROM CUSTOMERS c
    INNER JOIN REGIONS r ON c.region_id = r.region_id
    INNER JOIN ACCOUNTS a ON c.customer_id = a.customer_id
    LEFT JOIN TRANSACTIONS t ON a.account_id = t.account_id
    GROUP BY c.customer_id, c.first_name, c.last_name, r.region_name
)
SELECT 
    customer_id,
    customer_name,
    region_name,
    transaction_count,
    total_transaction_amount,
    NTILE(4) OVER (ORDER BY transaction_count DESC) AS activity_quartile,
    CASE 
        WHEN NTILE(4) OVER (ORDER BY transaction_count DESC) = 1 THEN 'Very Active'
        WHEN NTILE(4) OVER (ORDER BY transaction_count DESC) = 2 THEN 'Active'
        WHEN NTILE(4) OVER (ORDER BY transaction_count DESC) = 3 THEN 'Moderate'
        ELSE 'Low Activity'
    END AS customer_segment
FROM customer_activity
ORDER BY activity_quartile, transaction_count DESC;

-- 4.2 CUME_DIST() - Cumulative distribution of account balances
SELECT 
    a.account_id,
    a.account_number,
    a.account_type,
    c.first_name || ' ' || c.last_name AS customer_name,
    a.balance,
    ROUND(CUME_DIST() OVER (ORDER BY a.balance) * 100, 2) AS cumulative_distribution_pct,
    CASE 
        WHEN CUME_DIST() OVER (ORDER BY a.balance) <= 0.25 THEN 'Bottom 25%'
        WHEN CUME_DIST() OVER (ORDER BY a.balance) <= 0.50 THEN '25-50%'
        WHEN CUME_DIST() OVER (ORDER BY a.balance) <= 0.75 THEN '50-75%'
        ELSE 'Top 25%'
    END AS balance_tier
FROM ACCOUNTS a
INNER JOIN CUSTOMERS c ON a.customer_id = c.customer_id
ORDER BY cumulative_distribution_pct DESC;

-- COMPREHENSIVE ANALYSIS: Top 5 Customers Per Region
-- Combining Multiple Window Functions
WITH customer_metrics AS (
    SELECT 
        r.region_name,
        c.customer_id,
        c.first_name || ' ' || c.last_name AS customer_name,
        COUNT(DISTINCT a.account_id) AS account_count,
        COUNT(t.transaction_id) AS transaction_count,
        COALESCE(SUM(t.amount), 0) AS total_transaction_value,
        COALESCE(AVG(t.amount), 0) AS avg_transaction_amount,
        RANK() OVER (PARTITION BY r.region_id ORDER BY COALESCE(SUM(t.amount), 0) DESC) AS regional_rank,
        NTILE(4) OVER (PARTITION BY r.region_id ORDER BY COALESCE(SUM(t.amount), 0) DESC) AS value_quartile
    FROM REGIONS r
    INNER JOIN CUSTOMERS c ON r.region_id = c.region_id
    LEFT JOIN ACCOUNTS a ON c.customer_id = a.customer_id
    LEFT JOIN TRANSACTIONS t ON a.account_id = t.account_id
    GROUP BY r.region_id, r.region_name, c.customer_id, c.first_name, c.last_name
)
SELECT 
    region_name,
    customer_name,
    account_count,
    transaction_count,
    total_transaction_value,
    ROUND(avg_transaction_amount, 2) AS avg_transaction_amount,
    regional_rank,
    value_quartile,
    CASE 
        WHEN value_quartile = 1 THEN 'Platinum Customer'
        WHEN value_quartile = 2 THEN 'Gold Customer'
        WHEN value_quartile = 3 THEN 'Silver Customer'
        ELSE 'Standard Customer'
    END AS customer_tier
FROM customer_metrics
WHERE regional_rank <= 5
ORDER BY region_name, regional_rank;

