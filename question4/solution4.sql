-- database: MS SQL SERVER
WITH wand_cte AS (
    -- cte via window partition by age and power
    SELECT
        w.id,
        wp.age,
        w.coins_needed,
        w.power,
        MIN(w.coins_needed) OVER (
            PARTITION BY wp.age, w.power
        ) AS coins_min
    FROM Wands AS w
    JOIN Wands_Property AS wp
        ON w.code = wp.code
    WHERE wp.is_evil = 0
)
SELECT
    -- select via coins_needed = coins_win
    id,
    age,
    coins_needed,
    power
FROM wand_cte
WHERE coins_needed = coins_min
ORDER BY
    power DESC,
    age DESC;
