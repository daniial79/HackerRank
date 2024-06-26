DELIMITER $$

CREATE PROCEDURE stars(r INT) 
    BEGIN
        DECLARE counted INT DEFAULT 1; 
        WHILE counted <= r DO 
            SELECT REPEAT('* ', counted); 
            SET counted = counted + 1;   
        END WHILE;
    END;
$$
    
CALL stars(20); 