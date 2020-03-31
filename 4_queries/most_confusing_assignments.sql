-- List each assignment with the total number of assistance requests with it.
-- Select the assignment's id, day, chapter, name and the total assistances.
-- Order by total assistances in order of most to least.

SELECT
  id,
  day,
  chapter,
  name,
  COUNT(assistance_requests) AS total_assistances
FROM
  assignment
  JOIN assistance_requests ON assistance_requests_id = assignment.id
GROUP BY
  assignment.id
ORDER BY
  total_assistances DESC;
