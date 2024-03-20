-- This one is for practicing
SELECT 
    product_name,
    SUM(
        CASE 
            WHEN store_location = "North" THEN nums_sale ELSE 0
        END
    ) AS "north",
    SUM(
        CASE 
            WHEN store_location = "South" THEN nums_sale ELSE 0
        END
    ) AS "south",
    SUM(
        CASE 
            WHEN store_location = "East" THEN nums_sale ELSE 0
        END
    ) AS "east",
    SUM(
        CASE 
            WHEN store_location = "West" THEN nums_sale ELSE 0
        END
    ) AS "west"
FROM occupations
GROUP BY product_name ORDER BY product_name;


CREATE VIEW report AS (
    SELECT 
        CASE occupation = "Actor" THEN name END,
        CASE occupation = "Singer" THEN name END,
        CASE occupation = "Professor" THEN name END,
        CASE occupation = "Doctor" THEN name END,
        ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) AS cr
    FROM occupations;
)

SELECT MAX(Doctor), MAX(Actor), MAX(Singer), MAX("Professor") FROM report GROUP BY cr;