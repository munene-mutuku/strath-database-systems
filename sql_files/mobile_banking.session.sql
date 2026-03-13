CREATE TABLE IF NOT EXISTS Clients (
    client_id SERIAL PRIMARY KEY,
    fname VARCHAR(50) NOT NULL,
    mname VARCHAR(50) NOT NULL,
    lname VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_no VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Banks (
    bank_id SERIAL PRIMARY KEY,
    bank_name VARCHAR(100),
    established_year INT

);

CREATE TABLE IF NOT EXISTS Account (
    account_id SERIAL PRIMARY KEY,
    client_id INT NOT NULL,
    bank_id INT NOT NULL,
    account_no VARCHAR(30) UNIQUE,
    account_type VARCHAR(50),
    balance DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY (client_id) REFERENCES Client(client_id),
    FOREIGN KEY (bank_id) REFERENCES Bank(bank_id)
);

CREATE TABLE IF NOT EXISTS Wallets (
    wallet_id SERIAL PRIMARY KEY,
    client_id INT NOT NULL,
    balance DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);

CREATE TABLE IF NOT EXISTS Loans (
    loan_id SERIAL PRIMARY KEY,
    client_id INT NOT NULL,
    loan_amount DECIMAL(10,2) NOT NULL,
    payment_date DATE,
    loan_status VARCHAR(50),

    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);

CREATE TABLE IF NOT EXISTS Devices (
    device_id SERIAL PRIMARY KEY,
    client_id INT NOT NULL,
    device_type VARCHAR(50),
    registration_date DATE,

    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);

CREATE TABLE IF NOT EXISTS Authentication (
    auth_id SERIAL PRIMARY KEY,
    client_id INT NOT NULL,
    login_time TIMESTAMP NOT NULL,
    ip_address VARCHAR(45),
    login_status VARCHAR(20),

    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);

CREATE TABLE IF NOT EXISTS Transactions (
    transaction_id SERIAL PRIMARY KEY,
    account_id INT NOT NULL,
    wallet_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    transaction_type VARCHAR(50),
    transaction_date DATE,
    status VARCHAR(50),

    sender_account_id INT,
    receiver_account_id INT,

    FOREIGN KEY (account_id) REFERENCES Account(account_id),
    FOREIGN KEY (wallet_id) REFERENCES Wallet(wallet_id),
    FOREIGN KEY (sender_account_id) REFERENCES Account(account_id),
    FOREIGN KEY (receiver_account_id) REFERENCES Account(account_id)
);