SELECT
  teacher.name AS name,
  count(assistance_requests.*)
FROM
  assistance_requests
  JOIN teachers ON teacher.id = teacher_id
WHERE
  teacher.name = Waylon Boehm
GROUP BY
  teacher.name;
