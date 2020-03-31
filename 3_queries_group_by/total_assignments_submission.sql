SELECT cohorts.name as cohort, count(assignment_submissions) as total_submissions
FROM cohorts
JOIN assignment_submissions ON assignment_submissions.student_id = cohorts.id
GROUP BY cohort
ORDER BY total_submissions;
