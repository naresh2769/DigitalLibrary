-- CREATE TABLE Books (
-- BookID INT PRIMARY KEY,
-- Title VARCHAR(100),
-- Author VARCHAR(100),
-- Category VARCHAR(50)
-- );

-- CREATE TABLE Students1 (
-- StudentID INT PRIMARY KEY,
-- Name VARCHAR(100),
-- Department VARCHAR(50),
-- JoinDate DATE
-- );

-- CREATE TABLE IssuedBooks (
-- IssueID INT PRIMARY KEY,
-- StudentID INT,
-- BookID INT,
-- IssueDate DATE,
-- ReturnDate DATE,
-- FOREIGN KEY (StudentID) REFERENCES Students1(StudentID),
-- FOREIGN KEY (BookID) REFERENCES Books(BookID)
-- );

-- INSERT INTO Books VALUES (1,'Data Science Basics','John Smith','Science');
-- INSERT INTO Books VALUES (2,'World History','Robert Brown','History');
-- INSERT INTO Books VALUES (3,'Python Programming','David Clark','Technology');
-- INSERT INTO Books VALUES (4,'Modern Fiction','Emily Stone','Fiction');

-- INSERT INTO Students1 VALUES (101,'Naresh','CSE', DATE '2022-06-01');
-- INSERT INTO Students1 VALUES (102,'Rahul','ECE', DATE '2021-07-10');
-- INSERT INTO Students1 VALUES (103,'Maa','IT', DATE '2020-08-15');

-- INSERT INTO IssuedBooks VALUES (1,101,1, DATE '2026-03-01', NULL);
-- INSERT INTO IssuedBooks VALUES (2,102,2, DATE '2026-03-20', DATE '2026-03-25');
-- INSERT INTO IssuedBooks VALUES (3,103,4, DATE '2026-02-15', NULL);

-- SELECT s.StudentID, s.Name, b.Title, i.IssueDate FROM IssuedBooks i 
-- JOIN Students1 s ON i.StudentID = s.StudentID
-- JOIN Books b ON i.BookID = b.BookID
-- WHERE i.ReturnDate IS NULL
-- AND CURRENT_DATE - i.IssueDate > 14;

-- SELECT b.Category, COUNT(*) AS TotalBorrowed FROM IssuedBooks i
-- JOIN Books b ON i.BookID = b.BookID
-- GROUP BY b.Category
-- ORDER BY TotalBorrowed DESC;

-- SELECT s.StudentID, s.Name, b.Title, i.IssueDate,
-- TRUNC(SYSDATE - i.IssueDate) AS DaysDelayed,
-- (TRUNC(SYSDATE - i.IssueDate) - 14) * 5 AS PenaltyAmount
-- FROM IssuedBooks i
-- JOIN Students1 s ON s.StudentID = i.StudentID
-- JOIN Books b ON b.BookID = i.BookID
-- WHERE i.ReturnDate IS NULL
-- AND TRUNC(SYSDATE - i.IssueDate) > 14;

-- DELETE FROM Students1
-- WHERE StudentID NOT IN (
-- SELECT DISTINCT StudentID
-- FROM IssuedBooks
-- WHERE IssueDate >= CURRENT_DATE - INTERVAL '3' YEAR);