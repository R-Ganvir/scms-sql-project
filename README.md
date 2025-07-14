# Student Course Management System (SQL Project)

This is a simple SQL project to manage students, courses, and enrollments.

## 📂 Project Structure

- `schema.sql` – Creates the database tables: Students, Courses, Enrollments.
- `data.sql` – Inserts sample data into the tables.
- `queries.sql` – Contains useful SQL queries for practice and reporting.

## 🗂 Tables

### 1. Students
Stores basic student details.
- `StudentID` (PK)
- `FirstName`
- `LastName`
- `Email`
- `Age`

### 2. Courses
Stores available courses.
- `CourseID` (PK)
- `CourseName`
- `Credits`

### 3. Enrollments
Tracks which student enrolled in which course.
- `EnrollmentID` (PK)
- `StudentID` (FK)
- `CourseID` (FK)
- `EnrolledOn`

## 🛠 How to Run

1. Run `schema.sql` to create tables.
2. Run `data.sql` to insert sample data.
3. Run queries from `queries.sql` to explore the data.

## ✅ Sample Queries

- List all students and courses.
- See enrollments with course names.
- Count students per course.
- Find students enrolled in multiple courses.

---