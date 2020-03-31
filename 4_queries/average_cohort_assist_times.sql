-- Get the average duration of assistance requests for each cohort.
SELECT cohorts.name as name, avg(completed_at - started_at) as average_assistance_time
FROM students
JOIN assistance_requests ON student.id = assistance_requests.student_id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_time;