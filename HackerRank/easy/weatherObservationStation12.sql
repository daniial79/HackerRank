SELECT DISTINCT city FROM station 
WHERE city REGEXP '^[^AIOUE]' AND city REGEXP '[^aioue]$';