CREATE DATABASE EduSchema;
USE EduSchema;

CREATE TABLE IF NOT EXISTS Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    course_description TEXT,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    is_deleted BOOLEAN DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS Instructors (
    instructor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    is_deleted BOOLEAN DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    is_deleted BOOLEAN DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS Enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    is_deleted BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE IF NOT EXISTS Assessments (
    assessment_id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT NOT NULL,
    assessment_name VARCHAR(255) NOT NULL,
    due_date DATE NOT NULL,
    is_deleted BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE IF NOT EXISTS Grades (
    grade_id INT AUTO_INCREMENT PRIMARY KEY,
    enrollment_id INT NOT NULL,
    assessment_id INT NOT NULL,
    grade FLOAT NOT NULL,
    is_deleted BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (enrollment_id) REFERENCES Enrollments(enrollment_id),
    FOREIGN KEY (assessment_id) REFERENCES Assessments(assessment_id)
);

SELECT * FROM Courses;

INSERT INTO Courses (course_name, course_description, start_date, end_date) VALUES
('NLP', 'Learn the basics of Natural Language Processing', '2024-01-01', '2024-03-01'),
('Advanced ML', 'Learn about advanced ML Topics.', '2024-02-15', '2024-05-15'),
('DBMS', 'Introduction to relational databases and MySQL', '2024-03-01', '2024-06-01');

INSERT INTO Students (first_name, last_name, email, phone) VALUES
('Tanvi', 'S', 'tanvi.s@example.com', '123-456-7890'),
('Shreya', 'More', 'more.shreya@example.com', '234-567-8901'),
('Harsh', 'Deshmukh', 'deshmukh.harsh@example.com', '345-678-9012');

INSERT INTO Instructors (first_name, last_name, email, phone) VALUES
('Renuka', 'Devi', 'renuka.devi@example.com', '456-789-0123'),
('Senthil', 'Kumar', 'senthil.kumar@example.com', '567-890-1234'),
('Shivi', 'Sharma', 'shivi.sharma@example.com', '678-901-2345');

INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2024-01-01'),
(2, 1, '2024-01-02'),
(3, 2, '2024-02-15'),
(1, 3, '2024-03-01'),
(2, 3, '2024-03-01');

INSERT INTO Assessments (course_id, assessment_name, due_date)
VALUES 
    (1, 'NLP Quiz', '2024-01-15'),
    (1, 'Advanced ML', '2024-02-01'),
    (2, 'DBMS Assignment 1', '2024-03-01'),
    (3, 'SQL Quiz', '2024-03-15');

INSERT INTO Grades (enrollment_id, assessment_id, grade) VALUES
(1, 1, 95.0),
(1, 2, 88.5),
(2, 1, 78.0),
(3, 3, 90.0),
(4, 4, 85.5);



SELECT * FROM Courses;
SELECT * FROM Students;
SELECT * FROM Assessments;
SELECT * FROM Enrollments;
SELECT * FROM Grades;
SELECT * FROM Instructors;
