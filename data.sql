INSERT INTO Student(StudentID,FirstName,LastName,Email,Age) VALUE
(1, 'Ravi', 'Kumar', 'ravi.kumar@example.com', 21),
(2, 'Anjali', 'Sharma', 'anjali.sharma@example.com', 22),
(3, 'Amit', 'Verma', 'amit.verma@example.com', 20);

INSERT INTO Courses(CoursesID,CoursesName,Credit) VALUE
(101, 'Database Systems', 4),
(102, 'Web Development', 3),
(103, 'Operating Systems', 4);

INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, EnrolledOn) VALUES
(1001, 1, 101, '2025-07-01'),
(1002, 1, 102, '2025-07-02'),
(1003, 2, 101, '2025-07-03'),
(1004, 3, 103, '2025-07-04');