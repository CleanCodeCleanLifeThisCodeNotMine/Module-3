CREATE DATABASE B1minitest1;
USE B1minitest1;

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

CREATE TABLE Students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(50) NOT NULL,
    address_id INT,
    age INT,
    phone VARCHAR(11) NOT NULL UNIQUE,
    class_id INT,
    FOREIGN KEY (address_id) REFERENCES Address(id),
    FOREIGN KEY (class_id) REFERENCES Class(id)
);

CREATE TABLE Course (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(50) NOT NULL
);

CREATE TABLE Points (
    id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT,
    student_id INT,
    point FLOAT CHECK (point >= 0 AND point <= 10),
    FOREIGN KEY (course_id) REFERENCES Course(id),
    FOREIGN KEY (student_id) REFERENCES Students(id)
);

INSERT INTO Address (address) VALUES 
('Hanoi'),
('Danang'),
('Ho Chi Minh City'),
('Hue'),
('Haiphong');

INSERT INTO Class (name, language, description) VALUES 
('Math', 'English', 'Basic Math Course'),
('Science', 'Vietnamese', 'Physics and Chemistry'),
('History', 'English', 'World History'),
('Biology', 'Vietnamese', 'Introductory Biology'),
('Computer Science', 'English', 'Programming Basics');

INSERT INTO Students (fullname, address_id, age, phone, class_id) VALUES 
('Nguyen Van A', 1, 20, '0901234567', 1),
('Le Thi B', 2, 18, '0912345678', 2),
('Tran Van C', 3, 22, '0923456789', 3),
('Pham Thi D', 4, 19, '0934567890', 4),
('Nguyen Anh E', 5, 21, '0945678901', 5),
('Nguyen Van F', 1, 23, '0956789012', 1),
('Le Minh G', 2, 17, '0967890123', 2),
('Tran Thanh H', 3, 16, '0978901234', 3),
('Nguyen Anh I', 4, 20, '0989012345', 4),
('Pham Minh J', 5, 18, '0990123456', 5);

INSERT INTO Course (name, description) VALUES 
('Algebra', 'Advanced Algebra Course'),
('Biology', 'Introductory Biology Course'),
('Physics', 'Basic Physics Course'),
('Chemistry', 'Basic Chemistry Course'),
('Programming', 'Programming Fundamentals');

INSERT INTO Points (course_id, student_id, point) VALUES 
(1, 1, 8.5), (2, 2, 7.5), (3, 3, 9.0), (4, 4, 6.0), (5, 5, 7.8),
(1, 6, 8.0), (2, 7, 6.5), (3, 8, 7.0), (4, 9, 9.2), (5, 10, 8.7),
(1, 2, 7.0), (2, 3, 8.5), (3, 4, 9.0), (4, 5, 7.5), (5, 1, 9.1);

-- c09 toan may thang mat day
SELECT c.name AS class_name, COUNT(s.id) AS student_count
FROM Class c
LEFT JOIN Students s ON c.id = s.class_id
GROUP BY c.name;

-- cho xin cai dia chi 
SELECT a.address AS province, COUNT(s.id) AS student_count
FROM Address a
LEFT JOIN Students s ON a.id = s.address_id
GROUP BY a.address;

-- avg 
SELECT c.name AS course_name, AVG(p.point) AS avg_point
FROM Course c
JOIN Points p ON c.id = p.course_id
GROUP BY c.name;

-- highest avg course
SELECT c.name AS course_name, AVG(p.point) AS avg_point
FROM Course c
JOIN Points p ON c.id = p.course_id
GROUP BY c.name
ORDER BY avg_point DESC
LIMIT 1;

-- "Nguyen" Hoang Son
SELECT * FROM Students 
WHERE fullname LIKE 'Nguyen%';

-- khong phai KA
SELECT * FROM Students 
WHERE fullname LIKE '% Anh%';

-- student day thi 15->18
SELECT * FROM Students 
WHERE age BETWEEN 15 AND 18;

-- id 12->13
SELECT * FROM Students 
WHERE id IN (12, 13);
