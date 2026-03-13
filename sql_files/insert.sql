-- Insert banks
INSERT INTO banks (bank_id, bank_name, established_year)
VALUES
(1, 'Equity Bank', 1984),
(2, 'KCB Bank', 1896),
(3, 'Co-operative Bank', 1965);

-- Insert clients
INSERT INTO clients (client_id, fname, mname, lname, email, phone_no)
VALUES
(1, 'Wise', 'Munene', 'Mutuku', 'wise@gmail.com', '0712345678'),
(2, 'Jane', 'Wanjiku', 'Kamau', 'jane@gmail.com', '0723456789'),
(3, 'David', 'Otieno', 'Omondi', 'david@gmail.com', '0700123458');

-- Insert accounts
INSERT INTO accounts (client_id, bank_id, account_no, account_type, balance, status)
VALUES
(1, 1, 'ACC 1001', 'Savings', 5000.00, 'Active'),
(2, 2, 'ACC 1002', 'Current', 12000.00, 'Active'),
(3, 3, 'ACC 1003', 'Savings', 8000.00, 'Active');

-- Insert wallets
INSERT INTO wallets (client_id, balance)
VALUES
(1, 2000.00),
(2, 3500.00),
(3, 1500.00);

-- Insert loans
INSERT INTO loans (client_id, loan_amount, payment_date, loan_status)
VALUES
(1, 10000.00, '2026-05-01', 'Pending'),
(2, 5000.00, '2026-06-15', 'Approved'),
(3, 15000.00, '2026-07-20', 'Pending');

-- Insert devices
INSERT INTO devices (client_id, device_type, registration_date)
VALUES
(1, 'Android', '2026-01-10'),
(2, 'Android', '2026-02-15'),
(3, 'Iphone', '2026-03-05');

-- Insert authentication records
INSERT INTO authentications (client_id, login_time, ip_address, login_status)
VALUES
(1, '2026-03-10 10:15:00', '192.168.1.10', 'Success'),
(2, '2026-03-10 11:20:00', '192.168.1.11', 'Success'),
(3, '2026-03-10 12:30:00', '192.168.1.12', 'Failed');

-- Insert transactions
INSERT INTO transactions (account_id, wallet_id, amount, transaction_type, transaction_date, status, sender_account_id, receiver_account_id)
VALUES
(1, 1, 1000.00, 'Transfer', '2026-03-10', 'Completed', 1, 2),
(2, 2, 500.00, 'Deposit', '2026-03-11', 'Completed', NULL, NULL),
(3, 3, 700.00, 'Withdrawal', '2026-03-12', 'Completed', NULL, NULL);

