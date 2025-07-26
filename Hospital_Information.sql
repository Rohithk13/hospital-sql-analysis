SELECT * FROM inpatient_charges LIMIT 10;

DESCRIBE inpatient_charges;

-- 1. Total number of records.
SELECT COUNT(*) AS total_rows FROM inpatient_charges;

-- 2. How many Hospitals are there per State?
SELECT State, COUNT(DISTINCT 'Facility Name') AS hospital_count
FROM inpatient_charges
GROUP BY State
ORDER BY hospital_count DESC;


-- 3. What are the top 10 hospitals with best safety scores?
SELECT `Facility Name`, State, `Safety Gro`
FROM inpatient_charges
LIMIT 10;

-- 4. Count of hospitals by crirtical access criteria(Y/N).
SELECT 'Meets criteria for ...', COUNT(*) AS hospital_count
FROM inpatient_charges
GROUP BY 'Meets citeria for...';

-- 5. What is the average zipcode per state?
SELECT State, ROUND(AVG(CAST(`ZIP Code` AS UNSIGNED)), 0) AS avg_zip
FROM inpatient_charges
GROUP BY State
ORDER BY avg_zip;

-- 6. What is the average safety measures for each hospital ownership type?
SELECT `Hospital Ownership`, COUNT(*) AS total_hospitals,
ROUND(AVG(CAST(`Safety Group Measure Count` AS UNSIGNED)), 2) AS avg_safety_measures 
FROM inpatient_charges
WHERE `Safety Group Measure Count` != 'Not Available'
GROUP BY `Hospital Ownership`
ORDER BY avg_safety_measures DESC;

-- 7. Count of hospital offering emegency services in eavh state?
SELECT State, COUNT(*) AS emergency_hospitals
FROM inpatient_charges
WHERE `Emergency Services` = 'Yes'
GROUP BY State
ORDER BY emergency_hospitals DESC;

-- 8. Top ZIP CODES with the most hospitals that offering emergency services?
SELECT `ZIP Code`, COUNT(*) AS emergency_hospitals
FROM inpatient_charges
WHERE `Emergency Services` = 'Yes'
GROUP BY `ZIP Code`
ORDER BY emergency_hospitals DESC
LIMIT 10;

-- 9. States with >50 hospitals offering emergency services and their avg safety measure count
SELECT State, COUNT(*) AS emergency_hospitals,
       ROUND(AVG(CAST(`Safety Group Measure Count` AS UNSIGNED)), 2) AS avg_safety_measures
FROM inpatient_charges
WHERE `Emergency Services` = 'Yes'
  AND `Safety Group Measure Count` != 'Not Available'
GROUP BY State
HAVING emergency_hospitals > 50
ORDER BY avg_safety_measures DESC;


-- 10. Top 5 ZIP codes with highest avg safety measure count (> 5)
SELECT `ZIP Code`, COUNT(*) AS hospital_count,
        ROUND(AVG(CAST(`Safety Group Measure Count` AS UNSIGNED)), 2) AS avg_safety_measures
FROM inpatient_charges
WHERE `Safety Group Measure Count` != 'Not Available'
GROUP BY `ZIP Code`
HAVING avg_safety_measures > 5
ORDER BY avg_safety_measures DESC
LIMIT 5;


