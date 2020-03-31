SELECT
  cohort.name AS cohort_name,
  count(students.*) AS students_count
FROM
  cohort
  JOIN students ON cohort.id = cohort_id
GROUP BY
  cohort_name
HAVING
  count(students.*) >= 18
ORDER BY
  students_count;
