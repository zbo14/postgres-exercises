## from https://pgexercises.com/questions/updates/insert3.html

INSERT INTO cd.facilities
VALUES ((
    SELECT MAX(facid) + 1
    FROM cd.facilities AS nextid
), 'Spa', 20, 30, 100000, 800);