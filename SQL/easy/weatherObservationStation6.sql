SELECT city FROM station 
WHERE city LIKE "a%" OR 
      city LIKE "i%" OR 
      city LIKE "e%" OR 
      city LIKE "o%" OR 
      city LIKE "u%";

SELECT city FROM station
WHERE city REGEXP '^[AIOUE]';