## from https://pgexercises.com/questions/updates/deletewh2.html

DELETE FROM cd.members 
WHERE memid IN (
    SELECT mems.memid FROM cd.members mems
    WHERE NOT EXISTS (
        SELECT 1 FROM cd.bookings bks
        WHERE bks.memid=mems.memid
    )
);
