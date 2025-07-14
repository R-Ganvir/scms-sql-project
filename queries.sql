--select all students
SELECT *
FROM Student;

-- Select all courses in courses
SELECT *
FROM courses

-- List all enrollments with student and course details

SELECT 
    E.EnrollmentID,
    CONCAT(S.FirstName,S.LastName) AS FullName,
    C.CoursesName,
    E.EnrollmentDate
FROM 
    Enrollments E
JOIN 
    Student S 
    ON E.StudentID = S.StudentID
JOIN
    Courses C
    ON C.CourseID = E.CourseID;



-- Count total students enrolled in each course
SELECT 
    C.CoursesName,
    COUNT(E.StudentID) AS TotalStudent
FROM
    Courses C
LEFT JOIN 
    Enrollments E
    ON C.CourseID = E.CoursesID
GROUP BY C.CoursesName



-- Find students who have enrolled in more than one course
SELECT 
    s.StudentID,
    s.FirstName,
    s.LastName,
    COUNT(e.CourseID) AS CoursesEnrolled
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
GROUP BY s.StudentID, s.FirstName, s.LastName
HAVING COUNT(e.CourseID) > 1;
