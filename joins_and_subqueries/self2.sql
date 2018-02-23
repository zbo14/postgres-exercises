## from https://pgexercises.com/questions/joins/self2.html

SELECT t1.firstname AS memfname, 
       t1.surname AS memsname, 
       t2.firstname AS recfname, 
       t2.surname AS recsname 
FROM cd.members t1 
LEFT OUTER JOIN cd.members t2 ON t1.recommendedby = t2.memid
ORDER BY t1.surname, t1.firstname;