CREATE DATABASE shirts_db;
USE shirts_db;

#Create a Table command
CREATE TABLE shirts1 (
    shirts_id INT NOT NULL AUTO_INCREMENT,
    Article VARCHAR(100),
    color VARCHAR(100),
    shirt_size VARCHAR(100),
    last_worn INT,
    PRIMARY KEY (shirts_id)
);

#Describe the list of columns defined for a specific tavle
DESC shirts1;
SELECT * FROM shirts1;

#created some random data
INSERT INTO shirts1(Article,color,shirt_size,last_worn)
VALUES('t-shirt','white','s',10),('t-shirt','green','s',200);
INSERT INTO shirts1(Article,color,shirt_size,last_worn)
VALUES('tank-top','white','s',200),('Poloshirt','red','M',5),('tank-top','blue','M',15);
SELECT * FROM shirts1;

#Select all medium shirts print out everything but shirt_id 
SELECT * FROM shirts1 WHERE shirt_size = 'M';

#Checked with shirt_id only where shirt_size -’M’
SELECT shirts_id FROM shirts1 WHERE shirt_size = 'M';

#checked only with Article,color,shirt_size,last_worn by using WHERE command for shirt_size =’M’
SELECT Article,color,shirt_size,last_worn FROM shirts1 WHERE shirt_size ='M';

#Using UPDATE command
SELECT * FROM shirts1 WHERE Article = 'Poloshirt';
UPDATE shirts1 SET shirt_size = 's' WHERE shirt_size = 'M';
SHOW WARNINGS;
#Have to uncheck the update mode to run the above script line
#steps to follow click on edit option-preferences-sql editor-uncheck the the safe updates-click the icon "reconnect to DBMS" and then run the script
UPDATE shirts1 SET shirt_size = 's' WHERE shirt_size = 'M';
SELECT * FROM shirts1;

#delete tank tops
DELETE FROM shirts1 WHERE Article = 'tank-top';