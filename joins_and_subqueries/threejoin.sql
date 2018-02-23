## from https://pgexercises.com/questions/joins/threejoin.html

SELECT DISTINCT mems.firstname || ' ' || mems.surname AS member, 
                facs.name AS facility 
FROM cd.members mems
LEFT OUTER JOIN cd.bookings ON cd.bookings.memid = mems.memid
LEFT OUTER JOIN cd.facilities facs ON cd.bookings.facid = facs.facid
WHERE facs.name LIKE '%Tennis Court%';