-- CTE or derived table to classify loans
SELECT 
    status,
    COUNT(*) AS `Number_of_Loans`,
    SUM(loan_amount) AS `Total_Principal`,
    SUM(loan_amount - loan_balance) AS `Amount_Repaid`,
    SUM(loan_balance) AS `Amount_Outstanding`,
    ROUND(SUM(loan_amount - loan_balance) / SUM(loan_amount) * 100, 2) AS `Repayment_Rate`
FROM (
    SELECT 
        CASE
            WHEN loan_balance = 0 THEN 'Fully Repaid'
            WHEN loan_balance = loan_amount THEN 'Not Yet Repaid'
            WHEN loan_balance > 0 AND due_date < '2024-12-31' THEN 'Overdue'
            ELSE 'Partially Repaid'
        END AS status,
        loan_amount,
        loan_balance
    FROM loans
    WHERE YEAR(date_issued) = 2024
) AS classified_loans
GROUP BY status

-- Ensure all expected rows are present
UNION
SELECT 'Fully Repaid', 0, 0, 0, 0, 0
WHERE NOT EXISTS (
    SELECT 1 FROM loans
    WHERE YEAR(date_issued) = 2024 AND loan_balance = 0
)

UNION
SELECT 'Partially Repaid', 0, 0, 0, 0, 0
WHERE NOT EXISTS (
    SELECT 1 FROM loans
    WHERE YEAR(date_issued) = 2024 
      AND loan_balance > 0 
      AND due_date >= '2024-12-31' 
      AND loan_balance < loan_amount
)

UNION
SELECT 'Not Yet Repaid', 0, 0, 0, 0, 0
WHERE NOT EXISTS (
    SELECT 1 FROM loans
    WHERE YEAR(date_issued) = 2024 
      AND loan_balance = loan_amount
)

UNION
SELECT 'Overdue', 0, 0, 0, 0, 0
WHERE NOT EXISTS (
    SELECT 1 FROM loans
    WHERE YEAR(date_issued) = 2024 
      AND loan_balance > 0 
      AND due_date < '2024-12-31'
)

-- Add a Total Row
UNION
SELECT 
    'Total',
    COUNT(*),
    SUM(loan_amount),
    SUM(loan_amount - loan_balance),
    SUM(loan_balance),
    ROUND(SUM(loan_amount - loan_balance) / SUM(loan_amount) * 100, 2)
FROM loans
WHERE YEAR(date_issued) = 2024;
