-- databse: MS SQL SERVER
WITH challenge_max AS (
    -- cte mapping challenge_id to max_score
    SELECT
        c.challenge_id,
        d.score AS max_score
    FROM Challenges c
    JOIN Difficulty d
        ON c.difficulty_level = d.difficulty_level
),
full_scores AS (
    -- cte counting total hacker_id
    SELECT
        s.hacker_id,
        COUNT(*) AS full_count
    FROM Submissions s
    JOIN challenge_max cm
        ON s.challenge_id = cm.challenge_id
       AND s.score = cm.max_score
    GROUP BY
        s.hacker_id
    HAVING
        COUNT(*) > 1
),
hacker_full AS (
    -- cte joining to Hackers to get name
    SELECT
        h.hacker_id,
        h.name,
        f.full_count
    FROM full_scores f
    JOIN Hackers h
        ON f.hacker_id = h.hacker_id
)


SELECT
    hacker_id,
    name
FROM hacker_full
ORDER BY
    full_count DESC,
    hacker_id;
