CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    enrollment_date DATE NOT NULL,
    major VARCHAR(100)
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INTEGER NOT NULL,
    department VARCHAR(100) NOT NULL
);

CREATE TABLE instructors (
    instructor_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    hire_date DATE NOT NULL,
    department VARCHAR(100) NOT NULL
);

CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(student_id),
    course_id INTEGER REFERENCES courses(course_id),
    semester VARCHAR(20) NOT NULL,
    year INTEGER NOT NULL,
    grade VARCHAR(2)
);

INSERT INTO students
(first_name, last_name, date_of_birth, enrollment_date, major)
VALUES
('John', 'Smith', '2002-03-15', '2022-09-01', 'Computer Science'),
('Mary', 'Johnson', '2001-07-22', '2022-09-01', 'Mathematics'),
('David', 'Brown', '2003-01-10', '2023-01-15', 'Physics'),
('Sarah', 'Davis', '2002-11-05', '2022-09-01', 'Computer Science'),
('Michael', 'Wilson', '2001-05-18', '2021-09-01', 'Business Administration'),
('Emily', 'Taylor', '2003-08-30', '2023-01-15', 'Biology'),
('Daniel', 'Anderson', '2002-02-14', '2022-09-01', 'Engineering'),
('Jessica', 'Thomas', '2001-12-09', '2021-09-01', 'Mathematics'),
('Robert', 'Jackson', '2003-06-25', '2023-01-15', 'Computer Science'),
('Sophia', 'White', '2002-09-17', '2022-09-01', 'Psychology');

INSERT INTO courses
(course_name, credits, department)
VALUES
('Introduction to Programming', 4, 'Computer Science'),
('Database Systems', 4, 'Computer Science'),
('Calculus I', 3, 'Mathematics'),
('Physics I', 4, 'Physics'),
('Business Management', 3, 'Business'),
('Data Structures', 4, 'Computer Science'),
('Biology I', 4, 'Biology'),
('Engineering Mechanics', 5, 'Engineering');

INSERT INTO instructors
(first_name, last_name, hire_date, department)
VALUES
('James', 'Miller', '2018-08-15', 'Computer Science'),
('Linda', 'Wilson', '2019-01-10', 'Mathematics'),
('Robert', 'Moore', '2017-09-01', 'Physics'),
('Patricia', 'Taylor', '2020-02-20', 'Biology'),
('William', 'Anderson', '2016-08-25', 'Engineering');

INSERT INTO enrollments
(student_id, course_id, semester, year, grade)
VALUES
(1, 1, 'Fall', 2024, 'A'),
(1, 2, 'Fall', 2024, 'B'),
(2, 3, 'Fall', 2024, 'A'),
(2, 2, 'Fall', 2024, 'B'),
(3, 4, 'Spring', 2024, 'A'),
(3, 3, 'Spring', 2024, 'B'),
(4, 1, 'Fall', 2024, 'A'),
(4, 6, 'Fall', 2024, 'A'),
(5, 5, 'Spring', 2024, 'B'),
(5, 3, 'Spring', 2024, 'C'),
(6, 7, 'Fall', 2024, 'A'),
(6, 3, 'Fall', 2024, 'B'),
(7, 8, 'Spring', 2025, 'A'),
(7, 1, 'Spring', 2025, 'B'),
(8, 3, 'Fall', 2024, 'A'),
(8, 6, 'Fall', 2024, 'B'),
(9, 1, 'Spring', 2025, 'A'),
(9, 2, 'Spring', 2025, 'A'),
(10, 5, 'Fall', 2024, 'B'),
(10, 7, 'Fall', 2024, 'A');

SELECT *
FROM students;

SELECT course_name, credits
FROM courses
WHERE credits > 3;

SELECT *
FROM instructors
WHERE department = 'Computer Science';

