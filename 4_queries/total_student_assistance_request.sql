SELECT students.name AS name, count(assistance_requests.id) AS total_assistances
FROM assistance_requests 
JOIN students ON students.id = student_id
GROUP BY students.name 
HAVING students.name = 'Elliot Dickinson';
