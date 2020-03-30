SELECT
  sum(assignments_submissions.duration) AS total_duration
FROM
  assignments_submissions
  JOIN students ON student.id = student_id
  JOIN cohorts ON cohort.id = cohort_id
WHERE
  cohorts.name = 'FEB12'
