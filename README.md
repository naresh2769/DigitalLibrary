# Digital Library Audit System (SQL Project)
## Project Overview

The Digital Library Audit System is a simple SQL-based project designed to manage student records, book details, issued books, overdue tracking, and penalty calculation.
It simulates how a basic academic library monitors borrowing activity and maintains audit reports.

## Objectives

This project helps to:

Store book information
Maintain student records
Track issued and returned books
Identify overdue books (after 14 days)
Calculate penalty automatically
Find most borrowed book categories
Remove inactive students (3-year rule)
Database Tables Used

## Books

BookID (Primary Key)
Title
Author
Category

## Students

StudentID (Primary Key)
Name
Department
JoinDate

## IssuedBooks

IssueID (Primary Key)
StudentID (Foreign Key)
BookID (Foreign Key)
IssueDate
ReturnDate
Features Implemented

Overdue book detection
Penalty calculation (₹5 per extra day after 14 days)
Category popularity report
Inactive student removal logic
Sample dataset for testing queries

## Technologies Used
Oracle SQL
SQL Developer / Live SQL
DBMS Concepts (DDL, DML, Joins, Subqueries)
