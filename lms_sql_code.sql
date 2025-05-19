
create database Library_Managment_System;
use Library_Managment_System;


CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Nationality VARCHAR(50)
);
INSERT INTO Authors (Name, Nationality) VALUES
('J.K. Rowling', 'British'),
('George R.R. Martin', 'American'),
('Chinua Achebe', 'Nigerian'),
('Isabel Allende', 'Chilean'),
('Haruki Murakami', 'Japanese');

desc Authors;
select * from Authors;



CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(100) NOT NULL
);

INSERT INTO Categories (CategoryName) VALUES
('Fiction'),
('Non-Fiction'),
('Science Fiction'),
('Biography'),
('Mystery');

desc Categories;
select * from Categories;


CREATE TABLE Publishers (
    PublisherID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Address TEXT,
    Phone VARCHAR(15)
);

INSERT INTO Publishers (Name, Address, Phone) VALUES
('Penguin Random House', 'New York, USA', '123-456-7890'),
('HarperCollins', 'London, UK', '234-567-8901'),
('Macmillan Publishers', 'Berlin, Germany', '345-678-9012'),
('Oxford University Press', 'Oxford, UK', '456-789-0123'),
('Shueisha', 'Tokyo, Japan', '567-890-1234');

desc Publishers;
select * from Publishers;

CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(200) NOT NULL,
    ISBN VARCHAR(20),
    AuthorID INT,
    PublisherID INT,
    CategoryID INT,
    YearPublished YEAR,
    CopiesAvailable INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

INSERT INTO Books (Title, ISBN, AuthorID, PublisherID, CategoryID, YearPublished, CopiesAvailable) VALUES
('Harry Potter and the Philosopher\'s Stone', '978-0747532699', 1, 1, 1, 1997, 5),
('A Game of Thrones', '978-0553103540', 2, 2, 3, 1996, 3),
('Things Fall Apart', '978-0385474542', 3, 3, 1, 1958, 7),
('The House of the Spirits', '978-0553383805', 4, 2, 1, 1982, 4),
('Norwegian Wood', '978-0375704024', 5, 5, 1, 1987, 6);

desc Books;
select * from Books;


CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address TEXT,
    EnrollmentYear YEAR
);

INSERT INTO Students (Name, Email, Phone, Address, EnrollmentYear) VALUES
('Alice Johnson', 'alice.johnson@example.com', '555-1234', '1 University Rd, Cityville', 2022),
('Bob Smith', 'bob.smith@example.com', '555-5678', '2 University Rd, Cityville', 2023),
('Catherine Lee', 'catherine.lee@example.com', '555-9101', '3 University Rd, Cityville', 2021),
('David Brown', 'david.brown@example.com', '555-1122', '4 University Rd, Cityville', 2020);

desc Students;
select * from Students;

CREATE TABLE BorrowRecords (
    LoanID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,
    StudentID INT,
    BorrowDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    ReturnDate DATE,
    Status ENUM('Borrowed', 'Returned') DEFAULT 'Borrowed',
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

INSERT INTO BorrowRecords (BookID, StudentID, BorrowDate, DueDate, ReturnDate, Status) VALUES
(1, 1, '2024-01-10', '2024-01-24', NULL, 'Borrowed'),
(2, 2, '2024-01-05', '2024-01-19', '2024-01-18', 'Returned'),
(3, 3, '2024-01-12', '2024-01-26', NULL, 'Borrowed'),
(4, 4, '2024-01-15', '2024-01-29', NULL, 'Borrowed');

desc BorrowRecords;
select * from BorrowRecords;


CREATE TABLE Reservations (
    ReservationID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,
    StudentID INT,
    ReservationDate DATE NOT NULL,
    ExpirationDate DATE NOT NULL,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

INSERT INTO Reservations (BookID, StudentID, ReservationDate, ExpirationDate) VALUES
(5, 1, '2024-01-16', '2024-01-20'),
(3, 2, '2024-01-17', '2024-01-21');

desc Reservations;
select * from Reservations;



SELECT * FROM Books;

SELECT b.Title, s.Name, br.BorrowDate, br.DueDate
FROM BorrowRecords br
JOIN Books b ON br.BookID = b.BookID
JOIN Students s ON br.StudentID = s.StudentID
WHERE br.Status = 'Borrowed';

CREATE TABLE employees (
    id INT(100) PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(100) NOT NULL,
    emp_rank VARCHAR(50) NOT NULL DEFAULT 'classFour',
    emp_salary DECIMAL(10, 2) NOT NULL DEFAULT 30000.00,
    emp_joined_date DATE NOT NULL
);

INSERT INTO employees (emp_name, emp_rank, emp_salary, emp_joined_date)
VALUES
('Waqas', 'Manager', 50000.00, '2022-01-15'),
('Ali', 'Assistant Librarian', 35000.00, '2023-03-10'),
('Umair', 'Senior Librarian', 45000.00, '2021-07-25'),
('Awais', 'Technician', 32000.00, '2023-08-01'),
('Zaryab', 'Clerk', 30000.00, '2024-01-12'),
('Shayyan', 'ClassFour', 30000.00, '2024-04-20'),
('Zawar', 'Intern', 20000.00, '2024-06-01'),
('Ahmad', 'ClassFour', 30000.00, '2024-07-15');

select * from employees;

CREATE TABLE review(
    id INT(100) PRIMARY KEY AUTO_INCREMENT,
    review TEXT NOT NULL,
    student_id INT NOT NULL,
    book_id int  NOT NULL,
    review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (student_id) REFERENCES Students(StudentID),
    FOREIGN KEY (book_id) REFERENCES Books(BookID)
);

INSERT INTO review (review, student_id, book_id, review_date)
VALUES
('Great book, really enjoyed the content!', 1, '1', '2024-01-01 10:00:00'),
('Very informative and well-written.', 2, '2', '2024-01-05 14:30:00'),
('Not as expected, the plot was a bit slow.', 3, '3', '2024-01-07 16:45:00'),
('Amazing insights, would recommend to others.', 4, '4', '2024-01-10 11:20:00');



desc students;
select * from review;







