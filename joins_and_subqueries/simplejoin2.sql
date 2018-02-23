## from https://pgexercises.com/questions/joins/simplejoin2.html

SELECT starttime AS start, name FROM cd.bookings
INNER JOIN cd.facilities ON cd.bookings.facid = cd.facilities.facid
WHERE CAST(starttime AS DATE) ='2012-09-21' AND name LIKE '%Tennis Court%'
ORDER BY starttime, name ASC;