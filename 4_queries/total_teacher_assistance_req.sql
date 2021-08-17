SELECT teachers.name AS name, count(assistance_requests.id.*) AS total_assistances
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
GROUP BY teachers.name
HAVING teachers.name = 'Waylon Boehm';