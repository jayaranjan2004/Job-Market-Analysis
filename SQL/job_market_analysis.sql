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
SELECT
    TRIM(SUBSTRING_INDEX(Location, ',', -1)) AS State,
    COUNT(*) AS Total_Jobs
FROM Market
GROUP BY State
ORDER BY Total_Jobs DESC
LIMIT 10;
SELECT
    TRIM(SUBSTRING_INDEX(Location, ',', -1)) AS State,
    ROUND(AVG(Lower_Salary), 2) AS Avg_Min_Salary,
    ROUND(AVG(Upper_Salary), 2) AS Avg_Max_Salary
FROM Market
GROUP BY State
ORDER BY Avg_Min_Salary DESC;
SELECT
    TRIM(SUBSTRING_INDEX(Location, ',', -1)) AS State,
    COUNT(*) AS Total_Jobs,
    ROUND(AVG(Avg_SalaryK), 2) AS Average_Salary
FROM Market
GROUP BY State
ORDER BY Average_Salary DESC;
SELECT
    Industry,
    COUNT(*) AS Total_Jobs
FROM Market
WHERE Industry IS NOT NULL
  AND Industry <> '-1'
GROUP BY Industry
ORDER BY Total_Jobs DESC
LIMIT 5;
SELECT
    Company_Name,
    COUNT(*) AS Total_Openings
FROM Market
GROUP BY Company_Name
ORDER BY Total_Openings DESC
LIMIT 10;
SELECT
    Job_Title,
    COUNT(*) AS Total_Jobs
FROM Market
GROUP BY Job_Title
ORDER BY Total_Jobs DESC
LIMIT 10;
SELECT
    Job_Title,
    COUNT(*) AS Total_Jobs,
    ROUND(AVG(Lower_Salary), 2) AS Avg_Min_Salary,
    ROUND(AVG(Upper_Salary), 2) AS Avg_Max_Salary,
    ROUND(AVG(Avg_SalaryK), 2) AS Avg_Salary
FROM Market
GROUP BY Job_Title
ORDER BY Total_Jobs DESC
LIMIT 10;
SELECT
    Job_Title,
    COUNT(*) AS Total_Jobs,
    SUM(python) AS Python_Required,
    SUM(spark) AS Spark_Required,
    SUM(aws) AS AWS_Required,
    SUM(excel) AS Excel_Required,
    SUM(sql_) AS SQL_Required,
    SUM(sas) AS SAS_Required,
    SUM(keras) AS Keras_Required,
    SUM(pytorch) AS PyTorch_Required,
    SUM(scikit) AS Scikit_Required,
    SUM(tensor) AS TensorFlow_Required,
    SUM(hadoop) AS Hadoop_Required,
    SUM(tableau) AS Tableau_Required,
    SUM(bi) AS BI_Required,
    SUM(flink) AS Flink_Required,
    SUM(mongo) AS MongoDB_Required,
    SUM(google_an) AS GoogleAnalytics_Required
FROM Market
GROUP BY Job_Title
ORDER BY Total_Jobs DESC;
SELECT
    CASE
        WHEN Degree = 'M' THEN 'Masters'
        WHEN Degree = 'P' THEN 'PhD'
        ELSE 'Unknown'
    END AS Education_Level,
    COUNT(*) AS Total_Jobs,
    ROUND(AVG(Avg_SalaryK), 2) AS Average_Salary,
    ROUND(AVG(Lower_Salary), 2) AS Average_Min_Salary,
    ROUND(AVG(Upper_Salary), 2) AS Average_Max_Salary
FROM Market
GROUP BY Education_Level
ORDER BY Average_Salary DESC;
SELECT
    CASE
        WHEN Hourly = 1 THEN 'Hourly'
        ELSE 'Not Hourly'
    END AS Employment_Type,
    COUNT(*) AS Total_Jobs,
    ROUND(AVG(Avg_SalaryK), 2) AS Average_Salary
FROM Market
GROUP BY Employment_Type;
SELECT
    CASE
        WHEN Employer_Provided = 1 THEN 'Employer Provided'
        ELSE 'Not Employer Provided'
    END AS Salary_Type,
    COUNT(*) AS Total_Jobs,
    ROUND(AVG(Avg_SalaryK), 2) AS Average_Salary
FROM Market
GROUP BY Salary_Type;
SELECT
    Size AS Company_Size,
    COUNT(*) AS Total_Jobs,
    ROUND(AVG(Avg_SalaryK), 2) AS Average_Salary
FROM Market
GROUP BY Size
ORDER BY Average_Salary DESC;
SELECT
    CASE
        WHEN Size = 'Jan-50' THEN '1-50'
        WHEN LOWER(Size) = 'unknown' THEN 'Unknown'
        ELSE Size
    END AS Company_Size,
    COUNT(*) AS Total_Jobs,
    ROUND(AVG(Avg_SalaryK), 2) AS Average_Salary
FROM Market
GROUP BY Company_Size
ORDER BY Average_Salary DESC;
SELECT
    CASE
        WHEN Rating = -1 OR Rating IS NULL THEN 'Not Rated'
        WHEN Rating < 3 THEN 'Below 3'
        WHEN Rating < 4 THEN '3 to 3.9'
        ELSE '4 and Above'
    END AS Rating_Category,
    COUNT(*) AS Total_Jobs,
    ROUND(AVG(Avg_SalaryK), 2) AS Average_Salary
FROM Market
GROUP BY Rating_Category
ORDER BY Average_Salary DESC;
SELECT
    CASE
        WHEN seniority_by_title = 'jr' THEN 'Junior'
        WHEN seniority_by_title = 'sr' THEN 'Senior'
        ELSE 'Unknown'
    END AS Seniority_Level,
    COUNT(*) AS Total_Jobs,
    ROUND(AVG(Avg_SalaryK), 2) AS Average_Salary
FROM Market
GROUP BY Seniority_Level
ORDER BY Average_Salary DESC;
SELECT
    Type_of_ownership AS Ownership_Type,
    COUNT(*) AS Total_Jobs,
    ROUND(AVG(Avg_SalaryK), 2) AS Average_Salary
FROM Market
WHERE Type_of_ownership IS NOT NULL
  AND Type_of_ownership <> '-1'
GROUP BY Type_of_ownership
ORDER BY Average_Salary DESC;
SELECT
    Industry,
    COUNT(*) AS Total_Jobs,
    ROUND(AVG(Avg_SalaryK), 2) AS Average_Salary
FROM Market
WHERE Industry IS NOT NULL
  AND Industry <> '-1'
GROUP BY Industry
HAVING COUNT(*) >= 5
ORDER BY Average_Salary DESC
LIMIT 15;
SELECT
    CASE
        WHEN Age = -1 OR Age IS NULL THEN 'Unknown'
        WHEN Age BETWEEN 0 AND 10 THEN '0-10 Years'
        WHEN Age BETWEEN 11 AND 25 THEN '11-25 Years'
        WHEN Age BETWEEN 26 AND 50 THEN '26-50 Years'
        WHEN Age > 50 THEN 'Above 50 Years'
        ELSE 'Unknown'
    END AS Company_Age_Group,
    COUNT(*) AS Total_Jobs,
    ROUND(AVG(Avg_SalaryK), 2) AS Average_Salary
FROM Market
GROUP BY Company_Age_Group
ORDER BY Average_Salary DESC;
SELECT
    Revenue,
    COUNT(*) AS Total_Jobs,
    ROUND(AVG(Avg_SalaryK), 2) AS Average_Salary
FROM Market
WHERE Revenue IS NOT NULL
  AND Revenue <> '-1'
GROUP BY Revenue
ORDER BY Average_Salary DESC;