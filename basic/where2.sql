## from https://pgexercises.com/questions/basic/where2.html

SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities
WHERE membercost > 0 AND membercost < monthlymaintenance / 50;