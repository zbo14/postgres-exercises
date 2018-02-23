## from https://pgexercises.com/questions/joins/simplejoin.html

SELECT starttime FROM cd.members
INNER JOIN cd.bookings ON cd.members.memid=cd.bookings.memid
WHERE firstname='David' AND surname='Farrell'; 