# Coorperative Society Project 

## 1. Project Overview

This project involves designing a MySQL database system  to modernize the financial management of a cooperative society, replacing traditional pen-and-paper record-keeping with a structured digital solution. It facilitates accurate and efficient monitoring of key financial metrics, including savings, loans, transactions, income, and dividend allocations, while leveraging triggers and views to uphold data integrity. Additionally, the project includes exporting and analyzing financial data from the database to generate personalized member statements and detailed administrative reports, providing valuable insights into the cooperative society's overall financial performance.

## 2. Scope and Features

**2.1 Automated Financial Tracking**

  - Manages member savings, including deposits, withdrawals, and balances.

  - Tracks loan issuance and repayments, with automatic interest calculations.

  - Computes annual dividend distributions based on member performance and society income.

**2.2  Database Triggers for Automation**

  - The transactions table serves as the base table, triggering updates in related tables:

  - Deposit → Updates the `savings` table.

  - Withdrawal → Updates the `savings` table.

  - Loan Issued → Updates the `loans` table and automatically logs 6% interest in the income table.

  - Loan Repayment → Updates the `loans` table and automatically reduces loan balance.

**2.3 Views for Dividend Tracking**

  - Custom views enable real-time monitoring of dividend earnings, calculated by distributing the cooperative’s total income to members based on the proportion of their individual savings balances and total loans taken during the period. This approach ties member rewards directly to their financial engagement with the society.

## 3. Financial Reporting & Data Export

**3.1 Publishing Member Statements**

The database was deployed to a cloud server, enabling members access to their personalized account statements and review their annual transactions. [Click to view statement](https://5a90nh-dunni-olu0ajayi.shinyapps.io/statement/).

**3.2 Administrative Report**

A comprehensive report was also generated to provide insights into the cooperative society's financial performance. [Click to view report](https://oluwadunni1.github.io/coop-database/)

## 4. Database Schema
The key tables in the database include:

- `members` Stores member details (ID, name, contact)

- `savings` Tracks member savings, deposits, and withdrawals

- `loans` Manages loan issuance, repayment, and interest

- `transactions` Records all financial activities (base table for triggers)

- `income` Tracks cooperative income sources

- `dividend` Stores annual dividend distributions

## 5. Files Included 

- `database/` – Contains the full MySQL database schema, including all tables, sample data, triggers, and views with the dividend model implemented as part of the view definitions. Also includes the ER diagram visualizing the database structure.
- `reports/` – Stores the Quarto documents for generating account statements and End of year report.
- `docs/` –  rendered html report 
- `scripts/`- SQL queries for extracting data for analysis from Database
