SELECT assignments.day, count(*) as num_of_assignments, sum(assignments.duration)
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day