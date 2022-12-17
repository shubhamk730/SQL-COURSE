SELECT BIRTHDT, DATE_FORMAT(BIRTHDT, '%a----%b') AS FORMATTED_DATE FROM PEOPLE;


SELECT birthdate, DATE_FORMAT(birthdate, '%a %b %D') FROM people;
 
SELECT birthdt, DATE_FORMAT(birthdt, '%H:%i') FROM people;
 
SELECT birthdt, DATE_FORMAT(birthdt, 'BORN ON: %r') FROM people;