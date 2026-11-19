SELECT 
    visited_on,
    amount,
    ROUND(amount / 7, 2) AS average_amount
FROM (
    SELECT
        visited_on,
        SUM(SUM(amount)) OVER (
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS amount,
        COUNT(*) OVER (
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS cnt
    FROM Customer
    GROUP BY visited_on
) t
WHERE cnt = 7
ORDER BY visited_on;