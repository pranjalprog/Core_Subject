1. Drop database IF EXISTS user;
   Create DATABASE IF NOT EXISTS user;
   use user;
   Create TABLE IF NOT EXISTS user(user_id INT PRIMARY KEY , 
   user_name VARCHAR(50) , person_id INT , 
   FOREIGN KEY(person_id) REFERENCES person(person_id));
   insert into user values(1,"pranjal",01,);
   insert into user values(1,"pranjal",01,);
   insert into user values(1,"pranjal",01,);
   SELECT * FROM user;

/* Practice DATABASE */


CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50) NOT NULL
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT,
    Gender VARCHAR(10),
    City VARCHAR(50),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

CREATE TABLE Teacher (
    TeacherID INT PRIMARY KEY,
    TeacherName VARCHAR(50) NOT NULL,
    Age INT,
    Salary DECIMAL(10,2),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50) NOT NULL,
    Credits INT,
    Fees DECIMAL(10,2),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

INSERT INTO Department VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Commerce'),
(4, 'Management');

INSERT INTO Student VALUES
(101, 'Rahul', 20, 'Male', 'Jaipur', 1),
(102, 'Priya', 21, 'Female', 'Delhi', 1),
(103, 'Aman', 19, 'Male', 'Kota', 2),
(104, 'Neha', 20, 'Female', 'Ajmer', 3),
(105, 'Rohit', 22, 'Male', 'Jaipur', 2),
(106, 'Sneha', 19, 'Female', 'Udaipur', 4),
(107, 'Vikas', 23, 'Male', 'Kota', 1),
(108, 'Pooja', 21, 'Female', 'Delhi', 3),
(109, 'Karan', 20, 'Male', 'Ajmer', 4),
(110, 'Anjali', 22, 'Female', 'Jaipur', 2);

INSERT INTO Teacher VALUES
(201, 'Mr. Sharma', 45, 55000, 1),
(202, 'Ms. Gupta', 38, 50000, 2),
(203, 'Mr. Verma', 42, 48000, 3),
(204, 'Ms. Mehta', 35, 52000, 4),
(205, 'Mr. Singh', 40, 60000, 1);

INSERT INTO Course VALUES
(301, 'DBMS', 4, 15000, 1),
(302, 'Java', 4, 18000, 1),
(303, 'Networking', 3, 12000, 2),
(304, 'Web Development', 4, 16000, 2),
(305, 'Accounting', 4, 14000, 3),
(306, 'Business Management', 3, 13000, 4);

INSERT INTO Enrollment VALUES
(1, 101, 301, '2026-07-01'),
(2, 101, 302, '2026-07-02'),
(3, 102, 301, '2026-07-03'),
(4, 103, 303, '2026-07-04'),
(5, 103, 304, '2026-07-05'),
(6, 104, 305, '2026-07-06'),
(7, 105, 303, '2026-07-07'),
(8, 106, 306, '2026-07-08'),
(9, 107, 302, '2026-07-09'),
(10, 108, 305, '2026-07-10'),
(11, 109, 306, '2026-07-11'),
(12, 110, 304, '2026-07-12');






