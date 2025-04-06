SELECT 
    CASE 
        WHEN loan_amount <= 250000 THEN '0 - 250K'
        WHEN loan_amount <= 500000 THEN '250K - 500K'
        WHEN loan_amount <= 750000 THEN '500K - 750K'
        WHEN loan_amount <= 1000000 THEN '750K - 1M'
        WHEN loan_amount <= 1250000 THEN '1M - 1.25M'
        ELSE '1.25M - 1.5M'
    END AS loan_range,
    COUNT(*) AS loan_count
FROM loans
WHERE YEAR(date_issued) = 2024
GROUP BY loan_range
ORDER BY MIN(loan_amount);
