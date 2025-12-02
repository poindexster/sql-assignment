-- database: MS SQL SERVER
WITH max_score_per_challenge AS (
    SELECT
    -- cte max_score by hacker and challenge
        hacker_id,
        challenge_id,
        MAX(score) AS max_score
    FROM Submissions
    GROUP BY hacker_id, challenge_id
)


SELECT
    -- select hacker id and name with sum of max_score
    h.hacker_id,
    h.name,
    SUM(m.max_score) AS total_score
FROM max_score_per_challenge m
JOIN Hackers h
    ON h.hacker_id = m.hacker_id
GROUP BY h.hacker_id, h.name
HAVING SUM(m.max_score) > 0
ORDER BY total_score DESC, h.hacker_id;
