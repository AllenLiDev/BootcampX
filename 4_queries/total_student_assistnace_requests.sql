SELECT
  student.name AS name,
  count(assistance_requests.*) AS total_assistances
FROM
  assistance_requests
  JOIN students ON student.id = student_id
WHERE
  student.name = 'Elliot Dickinson'
GROUP BY
  student.name;

-- Select the student's name and the total assistance requests.
-- Since this query needs to work with any specific student name, use 'Elliot Dickinson' for the student's name here.
