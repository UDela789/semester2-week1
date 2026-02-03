-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments

SELECT Department.DepartmentName, COUNT(EnrolmentId) AS TotalEnrolments 
FROM Enrolment
JOIN Course ON Enrolment.CourseId = Course.CourseId
JOIN Department ON Course.DepartmentId = Department.DepartmentId
GROUP BY DepartmentName; 