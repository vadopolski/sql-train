# Example 1: Generating integers 1 through 10, inclusive (with in-depth explanation).

WITH RECURSIVE nums_consecutive AS (
        
    ) SELECT * FROM nums_consecutive;





























WITH RECURSIVE nums_consecutive AS (
    SELECT 1 AS num
    UNION ALL
    SELECT num + 1 FROM nums_consecutive WHERE num < 10
) SELECT * FROM nums_consecutive;

# Example 2: Generating sequential numbers fitting a certain pattern

WITH RECURSIVE seq_nums AS (
    SELECT
        5 AS num,
        0 AS iteration
    UNION ALL
    SELECT
        (2 * num + num),
        iteration + 1
    FROM
        seq_nums
    WHERE
            iteration < 5
) SELECT * FROM seq_nums;

# Example 2:  Finding the sum of the first 100 consecutive positive integers
WITH RECURSIVE seq_nums AS (
    SELECT
        0 AS acc,
        1 AS iteration
    UNION ALL
    SELECT
        acc + iteration,
        iteration + 1
    FROM
        seq_nums
    WHERE
            iteration < 101
) SELECT * FROM seq_nums where iteration = 101;


# Example 4: Generating the first 15 Fibonacci numbers
