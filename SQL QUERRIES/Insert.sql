-- Insert REGIONS Data
INSERT INTO REGIONS (region_id, region_name, region_code, manager_name) VALUES 
(seq_region_id.NEXTVAL, 'Kigali City', 'KGL', 'Jean Paul HABIMANA');

INSERT INTO REGIONS (region_id, region_name, region_code, manager_name) VALUES 
(seq_region_id.NEXTVAL, 'Eastern Province', 'EAST', 'Marie Claire UWASE');

INSERT INTO REGIONS (region_id, region_name, region_code, manager_name) VALUES 
(seq_region_id.NEXTVAL, 'Western Province', 'WEST', 'Eric NIYONZIMA');

INSERT INTO REGIONS (region_id, region_name, region_code, manager_name) VALUES 
(seq_region_id.NEXTVAL, 'Northern Province', 'NORTH', 'Grace MUKAMANA');

INSERT INTO REGIONS (region_id, region_name, region_code, manager_name) VALUES 
(seq_region_id.NEXTVAL, 'Southern Province', 'SOUTH', 'Patrick MUGISHA');

-- Insert CUSTOMERS Data (30 customers across regions)
INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Alice', 'MUGABO', 'alice.mugabo@email.com', '0788123456', 1, DATE '2024-01-15');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Bob', 'NKUSI', 'bob.nkusi@email.com', '0788234567', 1, DATE '2024-02-20');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Carol', 'IRAKOZE', 'carol.irakoze@email.com', '0788345678', 1, DATE '2024-03-10');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'David', 'HABIMANA', 'david.habimana@email.com', '0788456789', 1, DATE '2024-01-25');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Emma', 'MUTESI', 'emma.mutesi@email.com', '0788567890', 1, DATE '2024-04-05');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Frank', 'UWIMANA', 'frank.uwimana@email.com', '0788678901', 1, DATE '2024-02-14');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Grace', 'KAYITESI', 'grace.kayitesi@email.com', '0788789012', 2, DATE '2024-01-18');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Henry', 'NSABIMANA', 'henry.nsabimana@email.com', '0788890123', 2, DATE '2024-03-22');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Irene', 'UWERA', 'irene.uwera@email.com', '0788901234', 2, DATE '2024-02-28');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'James', 'NIYOMUGABO', 'james.niyomugabo@email.com', '0788012345', 2, DATE '2024-04-12');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Kelly', 'MUKAMAZIMPAKA', 'kelly.mukamazimpaka@email.com', '0788123789', 2, DATE '2024-01-30');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Leo', 'BIZIMANA', 'leo.bizimana@email.com', '0788234890', 2, DATE '2024-03-15');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Maria', 'INGABIRE', 'maria.ingabire@email.com', '0788345901', 3, DATE '2024-02-08');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Nathan', 'NSHIMIYIMANA', 'nathan.nshimiyimana@email.com', '0788456012', 3, DATE '2024-01-12');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Olivia', 'MUKAMANA', 'olivia.mukamana@email.com', '0788567123', 3, DATE '2024-03-25');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Peter', 'HAKIZIMANA', 'peter.hakizimana@email.com', '0788678234', 3, DATE '2024-02-19');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Queen', 'UMUHOZA', 'queen.umuhoza@email.com', '0788789345', 3, DATE '2024-04-01');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Robert', 'MUNYAKAZI', 'robert.munyakazi@email.com', '0788890456', 3, DATE '2024-01-28');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Sarah', 'UWINEZA', 'sarah.uwineza@email.com', '0788901567', 4, DATE '2024-03-05');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Tom', 'NGABO', 'tom.ngabo@email.com', '0788012678', 4, DATE '2024-02-11');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Uma', 'MUREKATETE', 'uma.murekatete@email.com', '0788123890', 4, DATE '2024-01-22');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Victor', 'NTAMBARA', 'victor.ntambara@email.com', '0788234901', 4, DATE '2024-04-08');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Wendy', 'ISHIMWE', 'wendy.ishimwe@email.com', '0788345012', 4, DATE '2024-03-18');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Xavier', 'MUGISHA', 'xavier.mugisha@email.com', '0788456123', 4, DATE '2024-02-24');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Yara', 'UWAMAHORO', 'yara.uwamahoro@email.com', '0788567234', 5, DATE '2024-01-08');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Zack', 'NZABONIMPA', 'zack.nzabonimpa@email.com', '0788678345', 5, DATE '2024-03-12');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Amy', 'MUKANTWARI', 'amy.mukantwari@email.com', '0788789456', 5, DATE '2024-02-16');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Ben', 'NDAYISENGA', 'ben.ndayisenga@email.com', '0788890567', 5, DATE '2024-04-10');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Chloe', 'MUKANDAYISENGA', 'chloe.mukandayisenga@email.com', '0788901678', 5, DATE '2024-01-20');

INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, region_id, registration_date) 
VALUES (seq_customer_id.NEXTVAL, 'Dan', 'UWIZEYIMANA', 'dan.uwizeyimana@email.com', '0788012789', 5, DATE '2024-03-28');

-- Insert ACCOUNTS Data (45 accounts - some customers have multiple accounts)
-- Generate accounts for customers (mix of SAVINGS, CHECKING, FIXED_DEPOSIT)
INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1001, 'SAVINGS', 'SAV-1001-001', 2500000, DATE '2024-01-15');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1001, 'CHECKING', 'CHK-1001-002', 800000, DATE '2024-02-01');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1002, 'SAVINGS', 'SAV-1002-001', 1500000, DATE '2024-02-20');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1003, 'CHECKING', 'CHK-1003-001', 3200000, DATE '2024-03-10');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1003, 'FIXED_DEPOSIT', 'FD-1003-002', 5000000, DATE '2024-03-15');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1004, 'SAVINGS', 'SAV-1004-001', 4500000, DATE '2024-01-25');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1005, 'CHECKING', 'CHK-1005-001', 1200000, DATE '2024-04-05');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1005, 'SAVINGS', 'SAV-1005-002', 900000, DATE '2024-04-06');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1006, 'SAVINGS', 'SAV-1006-001', 2800000, DATE '2024-02-14');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1007, 'CHECKING', 'CHK-1007-001', 1700000, DATE '2024-01-18');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1008, 'SAVINGS', 'SAV-1008-001', 3500000, DATE '2024-03-22');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1008, 'FIXED_DEPOSIT', 'FD-1008-002', 8000000, DATE '2024-03-25');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1009, 'SAVINGS', 'SAV-1009-001', 2100000, DATE '2024-02-28');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1010, 'CHECKING', 'CHK-1010-001', 4200000, DATE '2024-04-12');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1011, 'SAVINGS', 'SAV-1011-001', 1800000, DATE '2024-01-30');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1012, 'CHECKING', 'CHK-1012-001', 2900000, DATE '2024-03-15');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1012, 'SAVINGS', 'SAV-1012-002', 1500000, DATE '2024-03-16');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1013, 'FIXED_DEPOSIT', 'FD-1013-001', 6000000, DATE '2024-02-08');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1014, 'SAVINGS', 'SAV-1014-001', 3100000, DATE '2024-01-12');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1015, 'CHECKING', 'CHK-1015-001', 2400000, DATE '2024-03-25');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1016, 'SAVINGS', 'SAV-1016-001', 3800000, DATE '2024-02-19');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1016, 'CHECKING', 'CHK-1016-002', 1100000, DATE '2024-02-20');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1017, 'SAVINGS', 'SAV-1017-001', 2700000, DATE '2024-04-01');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1018, 'FIXED_DEPOSIT', 'FD-1018-001', 7500000, DATE '2024-01-28');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1019, 'CHECKING', 'CHK-1019-001', 1900000, DATE '2024-03-05');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1020, 'SAVINGS', 'SAV-1020-001', 3300000, DATE '2024-02-11');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1020, 'CHECKING', 'CHK-1020-002', 950000, DATE '2024-02-12');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1021, 'SAVINGS', 'SAV-1021-001', 2200000, DATE '2024-01-22');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1022, 'CHECKING', 'CHK-1022-001', 4100000, DATE '2024-04-08');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1023, 'SAVINGS', 'SAV-1023-001', 2600000, DATE '2024-03-18');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1023, 'FIXED_DEPOSIT', 'FD-1023-002', 5500000, DATE '2024-03-20');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1024, 'CHECKING', 'CHK-1024-001', 1600000, DATE '2024-02-24');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1025, 'SAVINGS', 'SAV-1025-001', 3700000, DATE '2024-01-08');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1026, 'CHECKING', 'CHK-1026-001', 2300000, DATE '2024-03-12');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1026, 'SAVINGS', 'SAV-1026-002', 1400000, DATE '2024-03-13');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1027, 'FIXED_DEPOSIT', 'FD-1027-001', 9000000, DATE '2024-02-16');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1028, 'SAVINGS', 'SAV-1028-001', 2900000, DATE '2024-04-10');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1029, 'CHECKING', 'CHK-1029-001', 3400000, DATE '2024-01-20');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1030, 'SAVINGS', 'SAV-1030-001', 4800000, DATE '2024-03-28');

INSERT INTO ACCOUNTS (account_id, customer_id, account_type, account_number, balance, opening_date) 
VALUES (seq_account_id.NEXTVAL, 1030, 'CHECKING', 'CHK-1030-002', 1300000, DATE '2024-03-29');

-- Insert TRANSACTIONS Data (Multiple transactions for different accounts)
INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5001, 'DEPOSIT', 500000, DATE '2025-01-05', 'Initial Deposit', 'TXN-20250105-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5001, 'DEPOSIT', 300000, DATE '2025-01-12', 'Salary Deposit', 'TXN-20250112-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5002, 'DEPOSIT', 400000, DATE '2025-01-15', 'Business Income', 'TXN-20250115-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5003, 'DEPOSIT', 800000, DATE '2025-01-10', 'Initial Deposit', 'TXN-20250110-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5004, 'DEPOSIT', 1200000, DATE '2025-01-08', 'Transfer from Another Bank', 'TXN-20250108-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5006, 'DEPOSIT', 2500000, DATE '2025-01-20', 'Investment Return', 'TXN-20250120-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5007, 'WITHDRAWAL', 200000, DATE '2025-01-22', 'ATM Withdrawal', 'TXN-20250122-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5009, 'DEPOSIT', 600000, DATE '2025-01-18', 'Freelance Payment', 'TXN-20250118-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5010, 'DEPOSIT', 950000, DATE '2025-01-25', 'Salary', 'TXN-20250125-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5013, 'DEPOSIT', 1500000, DATE '2025-01-28', 'Business Revenue', 'TXN-20250128-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5001, 'DEPOSIT', 450000, DATE '2025-02-03', 'Monthly Salary', 'TXN-20250203-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5001, 'WITHDRAWAL', 150000, DATE '2025-02-05', 'Bill Payment', 'TXN-20250205-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5002, 'TRANSFER', 100000, DATE '2025-02-07', 'Transfer to Savings', 'TXN-20250207-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5003, 'DEPOSIT', 700000, DATE '2025-02-10', 'Client Payment', 'TXN-20250210-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5004, 'DEPOSIT', 850000, DATE '2025-02-12', 'Bonus Payment', 'TXN-20250212-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5006, 'WITHDRAWAL', 300000, DATE '2025-02-14', 'Emergency Withdrawal', 'TXN-20250214-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5010, 'DEPOSIT', 1100000, DATE '2025-02-15', 'Contract Payment', 'TXN-20250215-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5014, 'DEPOSIT', 2200000, DATE '2025-02-18', 'Property Sale', 'TXN-20250218-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5019, 'DEPOSIT', 780000, DATE '2025-02-20', 'Dividend Payment', 'TXN-20250220-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5025, 'DEPOSIT', 1300000, DATE '2025-02-22', 'Commission', 'TXN-20250222-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5008, 'DEPOSIT', 520000, DATE '2025-02-25', 'Rent Income', 'TXN-20250225-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5011, 'WITHDRAWAL', 250000, DATE '2025-02-27', 'Medical Expenses', 'TXN-20250227-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5015, 'DEPOSIT', 920000, DATE '2025-02-08', 'Salary Deposit', 'TXN-20250208-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5016, 'DEPOSIT', 1400000, DATE '2025-02-11', 'Business Income', 'TXN-20250211-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5020, 'DEPOSIT', 680000, DATE '2025-02-13', 'Consulting Fee', 'TXN-20250213-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5022, 'DEPOSIT', 1850000, DATE '2025-02-16', 'Project Payment', 'TXN-20250216-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5028, 'DEPOSIT', 990000, DATE '2025-02-19', 'Annual Bonus', 'TXN-20250219-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5030, 'DEPOSIT', 1600000, DATE '2025-02-21', 'Investment Profit', 'TXN-20250221-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5035, 'DEPOSIT', 740000, DATE '2025-02-23', 'Royalty Payment', 'TXN-20250223-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5040, 'DEPOSIT', 1250000, DATE '2025-02-26', 'Service Fee', 'TXN-20250226-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5007, 'DEPOSIT', 560000, DATE '2025-01-14', 'Part-time Income', 'TXN-20250114-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5012, 'DEPOSIT', 1750000, DATE '2025-01-16', 'Inheritance', 'TXN-20250116-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5017, 'DEPOSIT', 890000, DATE '2025-01-24', 'Gift Money', 'TXN-20250124-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5021, 'DEPOSIT', 1120000, DATE '2025-01-26', 'Sales Commission', 'TXN-20250126-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5024, 'WITHDRAWAL', 180000, DATE '2025-01-30', 'Shopping', 'TXN-20250130-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5026, 'DEPOSIT', 2100000, DATE '2025-02-01', 'Contract Advance', 'TXN-20250201-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5029, 'DEPOSIT', 830000, DATE '2025-02-04', 'Refund', 'TXN-20250204-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5031, 'WITHDRAWAL', 220000, DATE '2025-02-06', 'Utility Bills', 'TXN-20250206-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5033, 'DEPOSIT', 1480000, DATE '2025-02-09', 'Export Payment', 'TXN-20250209-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5038, 'DEPOSIT', 970000, DATE '2025-02-17', 'Pension Payment', 'TXN-20250217-001');

INSERT INTO TRANSACTIONS (transaction_id, account_id, transaction_type, amount, transaction_date, description, reference_number)
VALUES (seq_transaction_id.NEXTVAL, 5042, 'DEPOSIT', 1590000, DATE '2025-02-24', 'Insurance Claim', 'TXN-20250224-001');

COMMIT;

SELECT 'Total Regions' AS metric, COUNT(*) AS count FROM REGIONS
UNION ALL
SELECT 'Total Customers', COUNT(*) FROM CUSTOMERS
UNION ALL
SELECT 'Total Accounts', COUNT(*) FROM ACCOUNTS
UNION ALL
SELECT 'Total Transactions', COUNT(*) FROM TRANSACTIONS;
