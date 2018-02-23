## from https://pgexercises.com/questions/basic/classify.html

SELECT name, cost
    CASE monthlymaintenance > 100 
        WHEN TRUE THEN 'expensive'
        ELSE 'cheap'
    END
FROM cd.facilities;
