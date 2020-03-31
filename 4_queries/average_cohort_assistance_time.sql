-- Select the cohort's name and the average assistance request time.
-- Order the results from shortest average to longest.

SELECT
  cohort.name AS name,
  avg(completed_at - started_at) AS average_assistance_time
FROM
  assistance_requests
  JOIN students ON student.id = assistance_request.student_id
  JOIN cohorts ON cohort.id = cohort_id
GROUP BY
  cohort.name
ORDER BY
  average_assistance_time;
