# Coorperative Society Project 

## Project Overview

This project involves a MySQL database system developed to streamline the financial management of a cooperative society. It facilitates accurate and efficient monitoring of key financial metrics, including savings, loans, transactions, income, and dividend allocations, while leveraging triggers and views to uphold data integrity. The system also enables the export of financial data, supporting the creation of individualized member statements and comprehensive administrative reports that offer actionable insights into the society's financial performance.

## Scope and Features

1. Automated Financial Tracking

  - Manages member savings, including deposits, withdrawals, and balances.

  - Tracks loan issuance and repayments, with automatic interest calculations.

  - Calculates annual dividend distributions based on member performance and society income.

2. Database Triggers for Automation

  - The transactions table serves as the base table, triggering updates in related tables:

  - Deposit → Updates the savings table.

  - Withdrawal → Updates the savings table.

  - Loan Issued → Updates the loans table and automatically logs 6% interest in the income table.

  - Loan Repayment → Updates the loans table and automatically reduces loan balance.

3. Views for Dividend Tracking

  - Custom views enable real-time monitoring of dividend earnings, calculated by distributing the cooperative’s total income to members based on the proportion of their individual savings balances and total loans taken during the period. This approach ties member rewards directly to their financial engagement with the society.

4. Publishing Member Statements

- The database was exported to generate member-specific account statements, enabling them to view their yearly transactions. [View Report Here](https://5a90nh-dunni-olu0ajayi.shinyapps.io/FinReport/).

5. Broad Administrative Report

- A broad administrative report was also prepared to provide an insights on the cooperative society's financial performance.


## Database Schema
The key tables in the database include:

- `members` Stores member details (ID, name, contact)

- `savings` Tracks member savings, deposits, and withdrawals

- `loans` Manages loan issuance, repayment, and interest

- `transactions` Records all financial activities (base table for triggers)

- `income` Tracks cooperative income sources

- `dividend` Stores annual dividend distributions

## Files Included 

- `database/` – Holds all SQL files related to table structures, triggers, and views.

- `reports/` – Stores the Quarto document for generating account statements.
- `docs/` – Extra documentation, such as SQL queries for analysis.
