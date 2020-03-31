SELECT
  day,
  SUM(*) AS total_assignments
FROM
  assignments
GROUP BY
  day
ORDER BY
  day;
