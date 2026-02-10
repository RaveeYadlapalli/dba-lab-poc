-- DDL for Local PostgreSQL POC
-- This matches the structure you'll eventually use in Redshift
CREATE SCHEMA IF NOT EXISTS dba_poc;

CREATE TABLE IF NOT EXISTS dba_poc.transactions (
    txn_id INT PRIMARY KEY,
    amount DECIMAL(10,2),
    txn_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
