## from https://pgexercises.com/questions/joins/sub.html

SELECT DISTINCT mems.firstname || ' ' || mems.surname AS member,
(
    SELECT recs.firstname || ' ' || recs.surname AS recommender 
    FROM cd.members recs
    WHERE recs.memid = mems.recommendedBy 
    LIMIT 1
)
FROM cd.members mems
ORDER BY member;