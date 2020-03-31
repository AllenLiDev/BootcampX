SELECT
  student.name AS student,
  avg(assignments_submissions.duration) AS average_assignment_duration,
  avg(assignments.duration) AS average_estimated_duration
FROM
  students
  JOIN assignments_submissions ON student_id = student.id
  JOIN assignments ON assignment.id = assignments_id
WHERE
  end_date IS NULL
GROUP BY
  student
ORDER BY
  avg(average_assignment_duration);
