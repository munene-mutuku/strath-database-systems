-- Clients and accounts, due to fk we are able see which client has which account and the balance in that account.
SELECT c.fname, c.lname, a.account_no, a.balance
FROM clients c
JOIN accounts a ON c.client_id = a.client_id;

-- Clients, accounts and banks, due to fk we are able see which client has which account and the balance in that account and the bank name that the account is in.
SELECT c.fname, c.lname, b.bank_name, a.account_no
FROM clients c
JOIN accounts a ON c.client_id = a.client_id
JOIN banks b ON a.bank_id = b.bank_id;


-- Clients and loans, we are able to see which client has a loan and the amount
SELECT c.fname, c.lname, l.loan_amount
FROM clients c
JOIN loans l ON c.client_id = l.client_id;

-- Transactions and accounts
SELECT a.account_no, t.amount, t.transaction_type
FROM transactions t
JOIN accounts a ON t.account_id = a.account_id;

-- Sender and receiver accounts, self join because we joining the same table twice
SELECT t.transaction_id, t.amount,
a1.account_no AS sender_account,
a2.account_no AS receiver_account
FROM transactions t
JOIN accounts a1 ON t.sender_account_id = a1.account_id
JOIN accounts a2 ON t.receiver_account_id = a2.account_id;