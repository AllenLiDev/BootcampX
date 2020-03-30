SELECT
  students.name AS student_name,
  students.start_date AS student_start_date,
  cohorts.name AS cohorts_name,
  cohorts.start_date AS cohorts_start_Date
FROM
  students
  JOIN cohorts ON cohort_id = cohort_id
WHERE
  cohorts.start_date != students.start_date
ORDER BY
  cohorts_name;
