USE mydb;
SELECT * FROM USER;
SELECT * FROM PASSWORD;
SELECT * FROM EMAIL;

SELECT userEmail, userPassword FROM USER;

INSERT INTO PASSWORD (passwordID, userPassword) VALUES (1, 'password');
INSERT INTO EMAIL (emailID, userEmail) VALUES (1, 'test@gmail.com');

-- generate some empty space
INSERT INTO PASSWORD (passwordID, userPassword) VALUES (7, 'null');
INSERT INTO EMAIL (emailID, userEmail) VALUES (7, 'null');

INSERT INTO USER (userID, EMAIL_emailID, PASSWORD_passwordID, userEmail, userPassword)
VALUES (1, 1, 1, 'test@gmail.com', 'password');

INSERT INTO USER (userID, EMAIL_emailID, PASSWORD_passwordID, userEmail, userPassword) VALUES (4, 4, 4, 'jane_doe@oakland.edu', 'password!');


SELECT * FROM USER WHERE userEmail = ''; INSERT INTO USER (userEmail, userPassword) VALUES ('attacker', 'p@ssw0rd'); -- and userPassword = 'anything'

SELECT * FROM TEST;
CREATE TABLE TEST (testID int);
INSERT INTO TEST (testID) VALUES (1);
INSERT INTO TEST (testID) VALUES (2);
INSERT INTO TEST (testID) VALUES (3);

DROP TABLE TEST;



UPDATE USER SET userEmail='test@gmail.com' WHERE userID=1; -- ' AND userPassword ='

