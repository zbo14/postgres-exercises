## from https://pgexercises.com/questions/joins/self.html

SELECT DISTINCT t1.firstname, t1.surname 
FROM cd.members t1
INNER JOIN cd.members t2 ON t1.memid = t2.recommendedby
ORDER BY t1.surname;