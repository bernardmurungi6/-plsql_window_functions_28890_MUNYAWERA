


-- Table 1: REGIONS
-- Stores information about bank branch regions

CREATE TABLE REGIONS (
    region_id NUMBER PRIMARY KEY,
    region_name VARCHAR2(50) NOT NULL,
    region_code VARCHAR2(10) NOT NULL UNIQUE,
    manager_name VARCHAR2(100),
    created_date DATE DEFAULT SYSDATE
);


-- Table 2: CUSTOMERS
-- Stores customer personal information

CREATE TABLE CUSTOMERS (
    customer_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) UNIQUE,
    phone VARCHAR2(20),
    region_id NUMBER NOT NULL,
    registration_date DATE DEFAULT SYSDATE,
    customer_status VARCHAR2(20) DEFAULT 'ACTIVE',
    CONSTRAINT fk_customer_region FOREIGN KEY (region_id) 
        REFERENCES REGIONS(region_id)
);


-- Table 3: ACCOUNTS
-- Stores bank account information

CREATE TABLE ACCOUNTS (
    account_id NUMBER PRIMARY KEY,
    customer_id NUMBER NOT NULL,
    account_type VARCHAR2(20) NOT NULL,
    account_number VARCHAR2(20) NOT NULL UNIQUE,
    balance NUMBER(15,2) DEFAULT 0,
    opening_date DATE DEFAULT SYSDATE,
    account_status VARCHAR2(20) DEFAULT 'ACTIVE',
    CONSTRAINT fk_account_customer FOREIGN KEY (customer_id) 
        REFERENCES CUSTOMERS(customer_id),
    CONSTRAINT chk_account_type CHECK (account_type IN ('SAVINGS', 'CHECKING', 'FIXED_DEPOSIT')),
    CONSTRAINT chk_balance CHECK (balance >= 0)
);


-- Table 4: TRANSACTIONS
-- Stores all banking transactions

CREATE TABLE TRANSACTIONS (
    transaction_id NUMBER PRIMARY KEY,
    account_id NUMBER NOT NULL,
    transaction_type VARCHAR2(20) NOT NULL,
    amount NUMBER(15,2) NOT NULL,
    transaction_date DATE DEFAULT SYSDATE,
    description VARCHAR2(200),
    reference_number VARCHAR2(50) UNIQUE,
    CONSTRAINT fk_transaction_account FOREIGN KEY (account_id) 
        REFERENCES ACCOUNTS(account_id),
    CONSTRAINT chk_transaction_type CHECK (transaction_type IN ('DEPOSIT', 'WITHDRAWAL', 'TRANSFER')),
    CONSTRAINT chk_amount CHECK (amount > 0)
);

-- Create Sequences for Primary Keys
CREATE SEQUENCE seq_region_id START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_customer_id START WITH 1001 INCREMENT BY 1;
CREATE SEQUENCE seq_account_id START WITH 5001 INCREMENT BY 1;
CREATE SEQUENCE seq_transaction_id START WITH 10001 INCREMENT BY 1;

-- Create Indexes for Performance
CREATE INDEX idx_customer_region ON CUSTOMERS(region_id);
CREATE INDEX idx_account_customer ON ACCOUNTS(customer_id);
CREATE INDEX idx_transaction_account ON TRANSACTIONS(account_id);
CREATE INDEX idx_transaction_date ON TRANSACTIONS(transaction_date);
CREATE INDEX idx_customer_email ON CUSTOMERS(email);

COMMIT;
