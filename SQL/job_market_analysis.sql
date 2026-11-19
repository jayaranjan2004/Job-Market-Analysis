USE project_job_market_analysis;

SHOW TABLES;
DESCRIBE Market;
SELECT COUNT(*) AS total_records
FROM Market;
SELECT
    Location,
    COUNT(*) AS Total_Jobs
FROM Market
GROUP BY Location
ORDER BY Total_Jobs DESC
LIMIT 10;