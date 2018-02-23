## from https://pgexercises.com/questions/joins/tjsub.html

SELECT member, facility, cost FROM (
    SELECT mems.firstname || ' ' || mems.surname AS member,
           facs.name AS facility,
    CASE
        WHEN mems.memid=0 THEN
          bks.slots*facs.guestcost
        ELSE
          bks.slots*facs.membercost
    END as cost
    FROM cd.members mems
    INNER JOIN cd.bookings bks ON bks.memid=mems.memid
    INNER JOIN cd.facilities facs ON bks.facid=facs.facid
    WHERE CAST(bks.starttime AS DATE)='2012-09-14'
) AS bookings
WHERE cost > 30
ORDER BY cost DESC;