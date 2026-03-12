CREATE TABLE IF NOT EXISTS Client (
    client_id SERIAL PRIMARY KEY,
    fname VARCHAR(50),
    mname VARCHAR(50),
    lname VARCHAR(50),
    email VARCHAR(100),
    phone_no VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Bank (
    bank_id SERIAL PRIMARY KEY,
    bank_name VARCHAR(100),
    established_year INT,
    account_id INT
);

CREATE TABLE IF NOT EXISTS Account (
    account_id SERIAL PRIMARY KEY,
    client_id INT,
    account_no VARCHAR(30),
    account_type VARCHAR(50),
    balance DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);

CREATE TABLE IF NOT EXISTS Wallet (
    wallet_id SERIAL PRIMARY KEY,
    client_id INT,
    balance DECIMAL(10,2),

    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);

CREATE TABLE IF NOT EXISTS Loan (
    loan_id SERIAL PRIMARY KEY,
    client_id INT,
    loan_amount DECIMAL(10,2),
    payment_date DATE,
    loan_status VARCHAR(50),

    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);

CREATE TABLE IF NOT EXISTS Device (
    device_id SERIAL PRIMARY KEY,
    client_id INT,
    device_type VARCHAR(50),
    registration_date DATE,

    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);

CREATE TABLE IF NOT EXISTS Authentication (
    auth_id SERIAL PRIMARY KEY,
    client_id INT,
    login_time TIMESTAMP,
    ip_address VARCHAR(45),
    login_status VARCHAR(20),

    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);

CREATE TABLE IF NOT EXISTS Transaction (
    transaction_id SERIAL PRIMARY KEY,
    account_id INT,
    wallet_id INT,
    amount DECIMAL(10,2),
    transaction_type VARCHAR(50),
    transaction_date DATE,
    status VARCHAR(50),

    sender_transaction_id INT,
    receiver_transaction_id INT,

    FOREIGN KEY (account_id) REFERENCES Account(account_id),
    FOREIGN KEY (wallet_id) REFERENCES Wallet(wallet_id),
    FOREIGN KEY (sender_transaction_id) REFERENCES Transaction(transaction_id),
    FOREIGN KEY (receiver_transaction_id) REFERENCES Transaction(transaction_id)
);