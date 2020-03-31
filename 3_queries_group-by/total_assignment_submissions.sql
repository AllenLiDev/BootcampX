SELECT
  cohort.name AS cohort,
  count(assignment_submissions.*) AS total_submissions
FROM
  assignment_submissions
  JOIN students ON student.id = student_id
  JOIN cohort ON cohort.id = cohort_id
GROUP BY
  cohort.name
ORDER BY
  total_submissions DESC;
