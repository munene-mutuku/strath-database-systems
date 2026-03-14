
# Mobile Banking Database System

## Project Overview

This project implements a relational database system for a mobile banking platform.

The goal of the system is to manage banking activities such as client accounts, wallets, transactions, loans, and authentication records using a structured relational database.

The database is designed using Entity Relationship (ER) modeling, normalized to Third Normal Form (3NF)and implemented using PostgreSQL.

This system demonstrates how databases can support financial services such as mobile banking by efficiently storing and retrieving banking information.

# Problem Statement

Mobile banking services require reliable systems to manage:

* customer accounts
* financial transactions
* wallet balances
* loan records
* device registrations
* authentication logs

Without a structured database, managing these relationships becomes inefficient and prone to data inconsistency.


# Sustainable Development Goal (SDG)

This project aligns with **SDG 8 – Decent Work and Economic Growth** by supporting **financial inclusion through digital banking systems**.

Mobile banking systems help individuals access financial services such as savings, transfers, and loans, promoting economic participation.
ntegration


# Database Implementation

The database was implemented using:
* **PostgreSQL**
* **SQL scripts**
* **Git version control**


# How to Run the Project
* Clone the repo from github under the name https://github.com/munene-mutuku/strath-database-systems


### 1. Create the database

```
createdb mobile_banking
```

### 2. Run the table creation script

sudo -U/psql -d mobile_banking -f sql_files/mobile_banking.session.sql

### 3. Insert sample data

psql -d mobile_banking -f sql_files/insert.sql

### 4. Run join queries

psql -d mobile_banking -f sql_files/joins.sql


# Technologies Used

* PostgreSQL
* SQL
* Git
* VS Code
* SQLTools extension

---

# Contributors

This project was developed collaboratively by a team of students. Each team member worked on separate branches and the work was integrated into the development branch (dev) using Git.

# Team members
* Ian Mwema
* Justin Nene
* Benedict Peter
* Del Sambu
* Leigh David
* Wise Munene

# License
This project is licensed under the MIT License copyright(c) 2026.