-- Select the teacher's name, student's name, assignment's name, and the duration of each assistance request.
-- Subtract completed_at by started_at to find the duration.
-- Order by the duration of the request.

SELECT
  teacher.name AS teacher,
  student.name AS student,
  assignment.name AS assignment,
  (assistance_requests.completed_at - assistance_requests.started_at) AS duration
FROM
  assistance_requests
  JOIN teachers ON teacher.id = teacher_id
  JOIN students ON student.id = student_id
  JOIN assignments ON assignment.id = assignment_id
ORDER BY
  (assistance_requests.completed_at - assistance_requests.started_at);
