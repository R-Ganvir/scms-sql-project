DROP TABLE IF EXIST Enrollments;
DROP TABLE IF EXIST Students;
DROP TABLE IF EXIST Courses;

--Student table create
CREATE TABLE Students(
  StudentID INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  Email VARCHAR(100),
  Age INT
);


--Courses table create
CREATE TABLE Courses(
  CoursesID INT PRIMARY KEY,
  CoursesName VARCHAR(100),
  Credit INT
);

--Enrollment table create with reference above table 
CREATE TABLE Enrollments(
  EnrollmentID INT PRIMARY KEY,
  StudentID INT,
  CoursesID INT,
  EnrollmentDate DATE,
  FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
  FOREIGN KEY (CoursesID) REFERENCES Courses(CoursesID)
);


