CREATE TABLE employee(
employeeid VARCHAR2(10),
firstname VARCHAR2(20),
lastname VARCHAR2(20),
managerid VARCHAR2(10),
CONSTRAINT pk_employeeid PRIMARY KEY (employeeid));


CREATE table department(
department VARCHAR2(20),
CONSTRAINT pk_department PRIMARY KEY (department));

CREATE TABLE title(
title VARCHAR2(20),
titlerank NUMBER(1),
department VARCHAR2(20),
CONSTRAINT pk_title PRIMARY KEY (title),
CONSTRAINT fk_department FOREIGN KEY (department) REFERENCES department (department));


CREATE TABLE performance(
performanceid VARCHAR2(10),
score NUMBER(3,2),
active_ VARCHAR2(6),
date_ DATE,
title VARCHAR2(20),
employeeid VARCHAR2(10),
CONSTRAINT pk_performanceid PRIMARY KEY (performanceid),
CONSTRAINT fk_title FOREIGN KEY (title) REFERENCES title (title),
CONSTRAINT fk_employeeid FOREIGN KEY (employeeid) REFERENCES employee (employeeid));

CREATE TABLE login(
username VARCHAR2(20),
password_ VARCHAR2(20),
employeeid VARCHAR2(20),
CONSTRAINT pk_username PRIMARY KEY (username),
CONSTRAINT fk_employeeid2 FOREIGN KEY (employeeid) REFERENCES employee (employeeid));

CREATE TABLE salary(
salaryid VARCHAR2(10),
salary NUMBER(7),
active__ VARCHAR2(6),
date__ DATE,
employeeid VARCHAR2(10),
CONSTRAINT pk_salaryid PRIMARY KEY (salaryid),
CONSTRAINT fk_employeeid3 FOREIGN KEY (employeeid) REFERENCES employee (employeeid));

CREATE TABLE salarypost(
postid VARCHAR2(10),
pay NUMBER(7),
date___ DATE,
salaryid VARCHAR2(10),
CONSTRAINT postid PRIMARY KEY (postid),
CONSTRAINT salaryid FOREIGN KEY (salaryid) REFERENCES salary (salaryid));


INSERT INTO department (department) VALUES ('Human Resources');
INSERT INTO department (department) VALUES ('Accounting');
INSERT INTO department (department) VALUES ('Information Systems');
INSERT INTO department (department) VALUES ('Sales');
INSERT INTO department (department) VALUES ('Logistics');
INSERT INTO department (department) VALUES ('Finance');
INSERT INTO department (department) VALUES ('Marketing');
INSERT INTO department (department) VALUES ('Production');
INSERT INTO department (department) VALUES ('Executive');

INSERT INTO title (title, titlerank, department)
VALUES('HR Manager', 3, 'Human Resources');
INSERT INTO title (title, titlerank, department)
VALUES('HR Snr Associate', 2, 'Human Resources');
INSERT INTO title (title, titlerank, department)
VALUES('HR Associate', 1, 'Human Resources');
INSERT INTO title (title, titlerank, department)
VALUES('Acct Manager', 3, 'Accounting');
INSERT INTO title (title, titlerank, department)
VALUES('Acct Snr Associate', 2, 'Accounting');
INSERT INTO title (title, titlerank, department)
VALUES('Acct Associate', 1, 'Accounting');
INSERT INTO title (title, titlerank, department)
VALUES('IS Manager', 3, 'Information Systems');
INSERT INTO title (title, titlerank, department)
VALUES('IS Snr Associate', 2, 'Information Systems');
INSERT INTO title (title, titlerank, department)
VALUES('IS Associate', 1, 'Information Systems');
INSERT INTO title (title, titlerank, department)
VALUES('Sales Manager', 3, 'Sales');
INSERT INTO title (title, titlerank, department)
VALUES('Sales Snr Associate', 2, 'Sales');
INSERT INTO title (title, titlerank, department)
VALUES('Sales Associate', 1, 'Sales');
INSERT INTO title (title, titlerank, department)
VALUES('Lgsts Manager', 3, 'Logistics');
INSERT INTO title (title, titlerank, department)
VALUES('Lgsts Snr Associate', 2, 'Logistics');
INSERT INTO title (title, titlerank, department)
VALUES('Lgsts Associate', 1, 'Logistics');
INSERT INTO title (title, titlerank, department)
VALUES('Fin Manager', 3, 'Finance');
INSERT INTO title (title, titlerank, department)
VALUES('Fin Snr Associate', 2, 'Finance');
INSERT INTO title (title, titlerank, department)
VALUES('Fin Associate', 1, 'Finance');
INSERT INTO title (title, titlerank, department)
VALUES('Mktg Manager', 3, 'Marketing');
INSERT INTO title (title, titlerank, department)
VALUES('Mktg Snr Associate', 2, 'Marketing');
INSERT INTO title (title, titlerank, department)
VALUES('Mktg Associate', 1, 'Marketing');
INSERT INTO title (title, titlerank, department)
VALUES('Prod Manager', 3, 'Production');
INSERT INTO title (title, titlerank, department)
VALUES('Prod Snr Associate', 2, 'Production');
INSERT INTO title (title, titlerank, department)
VALUES('Prod Associate', 1, 'Production');
INSERT INTO title (title, titlerank, department)
VALUES('President', 4, 'Executive');
INSERT INTO title (title, titlerank, department)
VALUES('Vice President', 5, 'Executive');


INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e1','Amber','Baker','e48');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e2','Thomas','Berry','e1');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e3','Tiffany','Blaese','e1');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e4','Elise','Clark','e48');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e5','Kyle','Collins','e4');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e6','Justin','Cook','e4');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e7','Michael','Davis','e4');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e8','Steven','Gonzalez','e4');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e9','Travis','Graham','e4');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e10','Katherine','Harris','e4');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e11','John','Hawkins','e4');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e12','Sean','Hayes','e48');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e13','Dustin','Hill','e12');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e14','Andrew','Hunter','e12');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e15','Vanessa','Jackson','e12');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e16','Lillian','Johnson','e12');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e17','Courtney','Jones','e48');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e18','Mai','Kay','e17');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e19','Lisa','Lee','e17');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e20','Samuel','Lee','e17');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e21','Nicole','Lewis','e17');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e22','Anna','Mason','e48');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e23','Alice','Miller','e22');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e24','Cara','Mills','e22');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e25','Robert','Mitchell','e22');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e26','Richard','Moore','e22');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e27','Sophie','Moore','e22');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e28','Tam','Moss','e48');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e29','William','Murphy','e28');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e30','Katie','Myers','e28');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e31','Brandon','Owens','e48');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e32','Courtney','Parker','e31');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e33','Ashley','Perez','e31');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e34','Timothy','Peterson','e31');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e35','Jacob','Price','e48');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e36','James','Robinson','e35');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e37','Aaron','Smith','e35');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e38','Alexandra','Taylor','e35');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e39','Daniel','Taylor','e35');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e40','Samantha','Thompson','e35');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e41','Sarah','Walker','e35');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e42','Zachary','Walker','e35');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e43','David','White','e35');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e44','Erica','Williams','e35');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e45','Renae','Wilson','e35');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e46','Tyler','Brown','e35');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e47','Brian','Chavez','e35');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e48','Heather','Wright','e49');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e49','Gregory','Young','e49');
INSERT INTO employee(EmployeeID,firstName,lastName,managerID)
VALUES('e50','Brian','Chavez','e35');



INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p1',8,'TRUE','13-Jun-21','HR Manager','e1');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p2',7,'TRUE','13-Jun-21','HR Snr Associate','e2');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p3',6,'TRUE','13-Jun-21','HR Associate','e3');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p4',7,'TRUE','13-Jun-21','Acct Manager','e4');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p5',5,'TRUE','13-Jun-21','Acct Snr Associate','e5');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p6',6,'TRUE','13-Jun-21','Acct Snr Associate','e6');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p7',9,'TRUE','13-Jun-21','Acct Snr Associate','e7');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p8',5,'TRUE','13-Jun-21','Acct Associate','e8');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p9',7,'TRUE','13-Jun-21','Acct Associate','e9');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p10',9,'TRUE','13-Jun-21','Acct Associate','e10');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p11',6,'TRUE','13-Jun-21','Acct Associate','e11');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p12',8,'TRUE','13-Jun-21','IS Manager','e12');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p13',7,'TRUE','13-Jun-21','IS Snr Associate','e13');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p14',9,'TRUE','13-Jun-21','IS Snr Associate','e14');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p15',4,'TRUE','13-Jun-21','IS Associate','e15');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p16',6,'TRUE','13-Jun-21','IS Associate','e16');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p17',9,'TRUE','13-Jun-21','Sales Manager','e17');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p18',7,'TRUE','13-Jun-21','Sales Snr Associate','e18');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p19',8,'TRUE','13-Jun-21','Sales Associate','e19');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p20',6,'TRUE','13-Jun-21','Sales Associate','e20');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p21',6,'TRUE','13-Jun-21','Sales Associate','e21');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p22',8,'TRUE','13-Jun-21','Lgsts Manager','e22');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p23',7,'TRUE','13-Jun-21','Lgsts Snr Associate','e23');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p24',7,'TRUE','13-Jun-21','Lgsts Snr Associate','e24');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p25',6,'TRUE','13-Jun-21','Lgsts Associate','e25');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p26',6,'TRUE','13-Jun-21','Lgsts Associate','e26');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p27',5,'TRUE','13-Jun-21','Lgsts Associate','e27');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p28',9,'TRUE','13-Jun-21','Fin Manager','e28');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p29',8,'TRUE','13-Jun-21','Fin Snr Associate','e29');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p30',6,'TRUE','13-Jun-21','Fin Associate','e30');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p31',7,'TRUE','13-Jun-21','Mktg Manager','e31');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p32',7,'TRUE','13-Jun-21','Mktg Snr Associate','e32');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p33',6,'TRUE','13-Jun-21','Mktg Associate','e33');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p34',6,'TRUE','13-Jun-21','Mktg Associate','e34');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p35',8,'TRUE','13-Jun-21','Prod Manager','e35');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p36',7,'TRUE','13-Jun-21','Prod Snr Associate','e36');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p37',7,'TRUE','13-Jun-21','Prod Snr Associate','e37');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p38',8,'TRUE','13-Jun-21','Prod Snr Associate','e38');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p39',9,'TRUE','13-Jun-21','Prod Snr Associate','e39');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p40',4,'TRUE','13-Jun-21','Prod Associate','e40');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p41',4,'TRUE','13-Jun-21','Prod Associate','e41');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p42',5,'TRUE','13-Jun-21','Prod Associate','e42');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p43',6,'TRUE','13-Jun-21','Prod Associate','e43');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p44',7,'TRUE','13-Jun-21','Prod Associate','e44');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p45',8,'TRUE','13-Jun-21','Prod Associate','e45');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p46',7,'TRUE','13-Jun-21','Prod Associate','e46');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p47',3,'TRUE','13-Jun-21','Prod Associate','e47');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p48','','TRUE','13-Jun-21','Vice President','e48');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p49','','TRUE','13-Jun-21','President','e49');
INSERT INTO performance(performanceid,score,active_,date_,title,EmployeeID)
VALUES('p50',3,'TRUE','13-Jun-21','Prod Associate','e50');



INSERT INTO login(userName,password_,EmployeeID)
VALUES('Elise','password','e4');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Kyle','password','e5');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Justin','password','e6');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Michael','password','e7');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Steven','password','e8');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Travis','password','e9');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Katherine','password','e10');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('John','password','e11');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Sean','password','e12');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Dustin','password','e13');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Andrew','password','e14');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Vanessa','password','e15');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Lillian','password','e16');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Courtney','password','e17');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Mai','password','e18');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Lisa','password','e19');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Samuel','password','e20');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Nicole','password','e21');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Anna','password','e22');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Alice','password','e23');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Cara','password','e24');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Robert','password','e25');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Richard','password','e26');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Sophie','password','e27');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Tam','password','e28');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('William','password','e29');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Katie','password','e30');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Brandon','password','e31');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Courtney2','password','e32');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Ashley','password','e33');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Timothy','password','e34');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Jacob','password','e35');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('James','password','e36');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Aaron','password','e37');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Alexandra','password','e38');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Daniel','password','e39');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Samantha','password','e40');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Sarah','password','e41');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Zachary','password','e42');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('David','password','e43');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Erica','password','e44');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Renae','password','e45');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Tyler','password','e46');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Brian','password','e47');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Heather','password','e48');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Gregory','password','e49');
INSERT INTO login(userName,password_,EmployeeID)
VALUES('Brian2','password','e50');





INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s1',120000,'TRUE','13-Jun-21','e1');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s2',80000,'TRUE','13-Jun-21','e2');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s3',60000,'TRUE','13-Jun-21','e3');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s4',130000,'TRUE','13-Jun-21','e4');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s5',90000,'TRUE','13-Jun-21','e5');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s6',92000,'TRUE','13-Jun-21','e6');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s7',94000,'TRUE','13-Jun-21','e7');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s8',70000,'TRUE','13-Jun-21','e8');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s9',72000,'TRUE','13-Jun-21','e9');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s10',74000,'TRUE','13-Jun-21','e10');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s11',71000,'TRUE','13-Jun-21','e11');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s12',120000,'TRUE','13-Jun-21','e12');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s13',80000,'TRUE','13-Jun-21','e13');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s14',85000,'TRUE','13-Jun-21','e14');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s15',60000,'TRUE','13-Jun-21','e15');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s16',62000,'TRUE','13-Jun-21','e16');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s17',140000,'TRUE','13-Jun-21','e17');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s18',80000,'TRUE','13-Jun-21','e18');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s19',85000,'TRUE','13-Jun-21','e19');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s20',75000,'TRUE','13-Jun-21','e20');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s21',75000,'TRUE','13-Jun-21','e21');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s22',110000,'TRUE','13-Jun-21','e22');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s23',85000,'TRUE','13-Jun-21','e23');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s24',85000,'TRUE','13-Jun-21','e24');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s25',60000,'TRUE','13-Jun-21','e25');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s26',60000,'TRUE','13-Jun-21','e26');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s27',60000,'TRUE','13-Jun-21','e27');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s28',140000,'TRUE','13-Jun-21','e28');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s29',90000,'TRUE','13-Jun-21','e29');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s30',60000,'TRUE','13-Jun-21','e30');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s31',120000,'TRUE','13-Jun-21','e31');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s32',85000,'TRUE','13-Jun-21','e32');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s33',60000,'TRUE','13-Jun-21','e33');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s34',60000,'TRUE','13-Jun-21','e34');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s35',130000,'TRUE','13-Jun-21','e35');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s36',75000,'TRUE','13-Jun-21','e36');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s37',75000,'TRUE','13-Jun-21','e37');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s38',80000,'TRUE','13-Jun-21','e38');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s39',85000,'TRUE','13-Jun-21','e39');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s40',50000,'TRUE','13-Jun-21','e40');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s41',50000,'TRUE','13-Jun-21','e41');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s42',52000,'TRUE','13-Jun-21','e42');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s43',55000,'TRUE','13-Jun-21','e43');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s44',54000,'TRUE','13-Jun-21','e44');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s45',58000,'TRUE','13-Jun-21','e45');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s46',54000,'TRUE','13-Jun-21','e46');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s47',45000,'TRUE','13-Jun-21','e47');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s48',180000,'TRUE','13-Jun-21','e48');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s49',225000,'TRUE','13-Jun-21','e49');
INSERT INTO salary(salaryID,salary,active__,date__,EmployeeID)
VALUES('s50',45000,'TRUE','13-Jun-21','e50');