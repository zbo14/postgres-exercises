## from https://pgexercises.com/questions/updates/updatecalculated.html

UPDATE cd.facilities
SET membercost=mcost+ROUND(mcost/10,1), 
    guestcost=gcost+ROUND(gcost/10,1)
FROM (
    SELECT membercost AS mcost, guestcost AS gcost
    FROM cd.facilities 
    WHERE name='Tennis Court 1'
    LIMIT 1
) AS costs
WHERE name='Tennis Court 2';