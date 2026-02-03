-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed

SELECT Student.StudentId, Student.FirstName, Student.LastName, COUNT(Enrolment.EnrolmentId) AS TotalCreditsPassed
FROM Student JOIN Enrolment ON Student.StudentId = Enrolment.StudentId
GROUP BY Student.StudentId HAVING Enrolment.Grade >= 40;
