SELECT d.DepartmentName, AVG(p.Score) AS AvgScore
FROM Performance p
JOIN Employees e ON p.EmployeeID = e.EmployeeID
JOIN Departments d ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName;
