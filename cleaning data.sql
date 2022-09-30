-- Clean Data
-- Remove Columns
ALTER TABLE ds_salaries_1
DROP MyUnknownColumn;

ALTER TABLE ds_salaries_1
DROP work_year;

ALTER TABLE ds_salaries_1
DROP salary;

ALTER TABLE ds_salaries_1
DROP salary_currency;

-- Remove non-full time employees
DELETE FROM ds_salaries_1 WHERE employment_type != 'FT';

-- Replace Machine Learning with ML in job_titles
UPDATE ds_salaries_1
SET job_title = REPLACE (job_title, 'Machine Learning', 'ML')
WHERE 
	job_title Like ('%Machine Learning%')
    
-- Replace Science with Scientist in job_titles
UPDATE ds_salaries_1
SET job_title = REPLACE (job_title, 'Science', 'Scientist')
WHERE 
	job_title Like ('%Science%')