## from https://pgexercises.com/questions/joins/threejoin2.html

SELECT mems.firstname || ' ' || mems.surname AS member,
       facs.name AS facility
CASE 
    WHEN mems.memid=0 THEN
        bks.slots*facs.guestcost
    ELSE 
        bks.slots*facs.membercost
END AS cost
FROM cd.members mems
INNER JOIN cd.bookings bks 
    ON mems.memid=bks.memid
INNER JOIN cd.facilities facs 
    ON bks.facid=facs.facid
WHERE CAST(starttime AS DATE)='2012-09-14' AND (
    (mems.memid=0 AND bks.slots*facs.guestcost > 30) 
    OR bks.slots*facs.membercost > 30
)
ORDER BY COST DESC;