-- Employee table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10,2)
);

-- Department table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

-- Performance table
CREATE TABLE Performance (
    PerformanceID INT PRIMARY KEY,
    EmployeeID INT,
    ReviewDate DATE,
    Score INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
