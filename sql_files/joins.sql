-- Clients and their accounts
SELECT c.fname, c.lname, a.account_no, a.balance
FROM Client c
JOIN Account a
ON c.client_id = a.client_id;

-- Clients and their banks
SELECT c.fname, c.lname, b.bank_name, a.account_no
FROM Client c
JOIN Account a ON c.client_id = a.client_id
JOIN Bank b ON a.bank_id = b.bank_id;

-- Clients and their wallets
SELECT c.fname, c.lname, w.balance
FROM Client c
JOIN Wallet w ON c.client_id = w.client_id;

-- Clients and their loans
SELECT c.fname, c.lname, l.loan_amount, l.loan_status
FROM Client c
JOIN Loan l ON c.client_id = l.client_id;

-- Transactions with account numbers
SELECT a.account_no, t.amount, t.transaction_type, t.transaction_date
FROM Transactions t
JOIN Account a ON t.account_id = a.account_id;

-- Sender and receiver accounts for transfers
SELECT 
t.transaction_id,
t.amount,
a1.account_no AS sender_account,
a2.account_no AS receiver_account
FROM Transactions t
JOIN Account a1 ON t.sender_account_id = a1.account_id
JOIN Account a2 ON t.receiver_account_id = a2.account_id;

-- Clients and their devices
SELECT c.fname, c.lname, d.device_type, d.registration_date
FROM Client c
JOIN Device d ON c.client_id = d.client_id;