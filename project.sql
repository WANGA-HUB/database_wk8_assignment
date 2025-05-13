#CREATE DATABASE schoolRecords;
USE schoolRecords;


CREATE TABLE Students (
   student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    date_of_birth DATE NOT NULL,
    enrollment_date DATE NOT NULL
);

CREATE TABLE Course(
course_id INT PRIMARY KEY AUTO_INCREMENT,
   course_name VARCHAR(255) NOT NULL,
    course_code VARCHAR(50) UNIQUE NOT NULL,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

CREATE TABLE Grades (
   grade_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    grade CHAR(2) NOT NULL,
    date_recorded DATE NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);
