create database B1minitest1;

use B1minitest1;

CREATE TABLE Address (
	id INT PRIMARY KEY AUTO_INCREMENT,
    address VARCHAR(50) NOT NULL
);

CREATE TABLE Class (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    language VARCHAR(50) NOT NULL,
    description VARCHAR(50) NOT NULL
);

-- id, fullname, address_id, age, phone (unique), classes_id
CREATE TABLE Students (
	id INT PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(50) NOT NULL,
    address_id INT,
    age INT,
    phone VARCHAR(11) NOT NULL UNIQUE,
    class_id INT,
    FOREIGN KEY (address_id) REFERENCES Address(id),
    FOREIGN KEY (class_id) REFERENCES class(id)
);

-- id, name, description
CREATE TABLE Course (
 	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(50) NOT NULL
);

-- id, course_id, student_id, point
CREATE TABLE Points (
 	id INT PRIMARY KEY AUTO_INCREMENT,
	course_id INT,
	student_id INT,
    point FLOAT,
    FOREIGN KEY (course_id) REFERENCES Course(id),
    FOREIGN KEY (student_id) REFERENCES Students(id)
);


