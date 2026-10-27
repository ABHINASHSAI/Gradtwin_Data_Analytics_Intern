use ai_sm;

show tables;

describe ai_socialmedia_student_health_dataset_clean;

select * from ai_socialmedia_student_health_dataset_clean limit 10;

select COUNT(*) AS total_rows
from ai_socialmedia_student_health_dataset_clean;

select * from ai_socialmedia_student_health_dataset_clean
where gender IS NOT NULL;


select distinct age from ai_socialmedia_student_health_dataset_clean;

select * from ai_socialmedia_student_health_dataset_clean
where student_id <> TRIM(student_id);

select * from ai_socialmedia_student_health_dataset_clean where education_level IN (
    select education_level from ai_socialmedia_student_health_dataset_clean
    WHERE education_level IS NOT NULL
);

SET SQL_SAFE_UPDATES = 1;

UPDATE ai_socialmedia_student_health_dataset_clean
SET Age = 0
WHERE Age IS NULL;

SELECT *
FROM ai_socialmedia_student_health_dataset_clean a
WHERE EXISTS (
    SELECT 1
    FROM ai_socialmedia_student_health_dataset_clean b
    WHERE a.Student_ID = b.Student_ID
      AND a.Student_ID IS NOT NULL
      AND a.Student_ID <> b.Student_ID
);

SELECT *
FROM ai_socialmedia_student_health_dataset_clean a
WHERE (
    SELECT COUNT(*)
    FROM ai_socialmedia_student_health_dataset_clean b
    WHERE b.Student_ID = a.Student_ID
) > 1;

SET SQL_SAFE_UPDATES = 0;

UPDATE ai_socialmedia_student_health_dataset_clean
SET Gender = 'Male'
WHERE Gender = 'male';

SELECT *
FROM ai_socialmedia_student_health_dataset_clean
LIMIT 10;

SELECT *
FROM ai_socialmedia_student_health_dataset_clean
WHERE Student_ID IS NULL
   OR Age IS NULL
   OR Gender IS NULL;
   
   SELECT *
FROM ai_socialmedia_student_health_dataset_clean
WHERE Daily_Social_Media_Hours > 4;

SELECT *
FROM ai_socialmedia_student_health_dataset_clean
ORDER BY Academic_Performance_Score DESC;

SELECT
    COUNT(*) AS Total_Students,
    SUM(Daily_Social_Media_Hours) AS Total_Social_Media_Hours,
    AVG(Sleep_Hours) AS Average_Sleep_Hours,
    MIN(Age) AS Youngest_Age,
    MAX(Age) AS Oldest_Age
FROM ai_socialmedia_student_health_dataset_clean;

SELECT Burnout_Level, COUNT(*) AS Total_Students
FROM ai_socialmedia_student_health_dataset_clean
GROUP BY Burnout_Level;

