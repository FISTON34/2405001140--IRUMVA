SHOW DATABASES;
CREATE DATABASE STUDENT_ENROLLMENT;
USE STUDENT_ENROLLMENT;

CREATE TABLE Students(
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    DateOfBirth DATE
);
DESC  Students;

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(100),
    DESCRIPTION VARCHAR(100), 
    Credits INT,
    DURATION VARCHAR(100)
);

CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

CREATE TABLE Records (
    RecordID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
	EnrollmentID INT,
FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
FOREIGN KEY (EnrollmentID) REFERENCES Enrollment (EnrollmentID)
);

INSERT INTO Students (StudentID, Name, Email, DateOfBirth) 
VALUES (1, 'John Doe', 'john@example.com', '2000-01-01');

     SELECT * FROM Students;

	UPDATE STUDENTS 
SET Email = 'john.doe@example.com' 
WHERE StudentID = 1;

DELETE FROM STUDENTS 
WHERE StudentID = 1;

SELECT COUNT(*) FROM STUDENTS;

/*COURSES TABLE*/


INSERT INTO  Courses  (CourseID, CourseName, Description, Credits, Duration) 
VALUES (1, 'Introduction to SQL', 'Learn SQL basics', 3, '4 weeks');

DELETE FROM COURSES 
WHERE CourseID = 1;


UPDATE COURSES 
SET Credits = 4 
WHERE CourseID = 1;

SELECT COUNT(*) FROM COURSES;

SELECT AVG(Credits) FROM COURSES;


/* ENROLLMENT TABLE*/

INSERT INTO ENROLLMENT (EnrollmentID, StudentID, CourseID, EnrollmentDate) 
VALUES (1, 1, 1, '2023-01-01');

SELECT * FROM ENROLLMENT;

UPDATE ENROLLMENT 
SET EnrollmentDate = '2023-02-01' 

WHERE EnrollmentID = 1;
DELETE FROM ENROLLMENT 
WHERE EnrollmentID = 1;

SELECT COUNT(*) FROM ENROLLMENT;


/*RECORDS TABLE*/

INSERT INTO RECORDS (RecordID, StudentID, CourseID, EnrollmentID) 
VALUES (1, 1, 1, 1);

SELECT * FROM RECORDS;

UPDATE RECORDS 
SET CourseID = 2 
WHERE RecordID = 1;

DELETE FROM RECORDS 
WHERE RecordID = 1;


SELECT COUNT(*) FROM RECORDS;

/*VIEW OF STUDENTS*/

CREATE OR REPLACE VIEW vw_students AS SELECT StudentID, Name, Email, DateOfBirth FROM STUDENTS;

/* VIEW OF COURSES*/

CREATE OR REPLACE VIEW vw_courses AS
SELECT CourseID, CourseName, Description, Credits, Duration
FROM COURSES;

/*VIEW OF ENROLLMENT*/

CREATE OR REPLACE VIEW vw_enrollment AS
SELECT EnrollmentID, StudentID, CourseID, EnrollmentDate
FROM ENROLLMENT;


/*VIEW OF RECORDS*/

CREATE OR REPLACE VIEW vw_records AS
SELECT RecordID, StudentID, CourseID, EnrollmentID
FROM RECORDS;


/*View for Student Enrollment Details*/

CREATE OR REPLACE VIEW vw_student_courses AS
SELECT 
    s.StudentID,
    s.Name,
    s.Email,
    c.CourseName,
    e.EnrollmentDate
FROM 
    STUDENTS s
JOIN 
    ENROLLMENT e ON s.StudentID = e.StudentID
JOIN 
    COURSES c ON e.CourseID = c.CourseID;

/*View for Enrollment Records*/

CREATE OR REPLACE VIEW vw_enrollment_records AS
SELECT 
    r.RecordID,
    s.Name AS StudentName,
    c.CourseName,
    e.EnrollmentDate
FROM 
    RECORDS r
JOIN 
    STUDENTS s ON r.StudentID = s.StudentID
JOIN 
    COURSES c ON r.CourseID = c.CourseID
JOIN 
    ENROLLMENT e ON r.EnrollmentID = e.EnrollmentID;


























    