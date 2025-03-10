DROP DATABASE IF EXISTS schooldb;
CREATE DATABASE IF NOT EXISTS schooldb;
USE schooldb; /*Schema/Dbase"*/
/*TABLE 1*/
CREATE TABLE IF NOT EXISTS Student ( 
	ssn VARCHAR(11) NOT NULL PRIMARY KEY, 
	f_name VARCHAR(20) NOT NULL, 
	l_name VARCHAR(20) NOT NULL, 
	phone VARCHAR(10),
	city VARCHAR(20) NOT NULL,
	zip VARCHAR(5) NOT NULL
);
/*TABLE 2"*/
CREATE TABLE IF NOT EXISTS Course (
	number VARCHAR(3) NOT NULL PRIMARY KEY, /*Note Key Field*/
	name VARCHAR(30) NOT NULL,
	room INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Enrolls_in (
	ssn VARCHAR(11) NOT NULL,
	class VARCHAR(3) NOT NULL,
	score FLOAT,
	CONSTRAINT pk_enroll PRIMARY KEY (ssn,class)
);

show tables;
describe enrolls_in;