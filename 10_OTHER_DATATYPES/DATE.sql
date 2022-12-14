-- DATE CAN ONLY STORE DATE WITHOUT ANY TIME RELATION -> FORMAT -> YYYY-MM-DDX
-- CAN STORE TIME, TIME INTERVAL CAN BE STORED AS WELL -> HH:MM:SS

-- DATETIME STORES DATES AS WELL AS TIME -> FORMAT -> 'YYYY-MM-DD HH:MM:SS'

CREATE TABLE IF NOT EXISTS PEOPLE (
	NAME VARCHAR(255),
    BIRTHDATE DATE,
    BIRTHTIME TIME,
    BIRTHDT DATETIME
);

DESC PEOPLE;

-- INSERT INTO PEOPLE (NAME, BIRTHDATE, BIRTHTIME, BIRTHDT) VALUES('Nobody', '2000-12-18', '16:15:27', '2000-12-18 16:15:27');
-- INSERT INTO PEOPLE (NAME, BIRTHDATE, BIRTHTIME, BIRTHDT) VALUES('Nobody', '2000-12-18', '16:15:27', '2000-12-18 16:15:27');


INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');

SELECT * FROM PEOPLE;


SELECT CURRENT_DATE() AS NOW_DATE, current_time() AS TIMENOW, CURRENT_TIMESTAMP() AS NOWMOMENT; 
-- SHORTER VERSION :
SELECT CURDATE() AS TODAY, CURTIME() AS NOWTIME, NOW() AS NOWMOMENT; 




INSERT INTO PEOPLE (NAME, BIRTHDATE, BIRTHTIME, BIRTHDT) VALUES ('HAZEL', curdate(), curtime(), NOW());

SELECT * FROM PEOPLE;
  