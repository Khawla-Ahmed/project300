CREATE DATABASE staff;
USE staff;

CREATE TABLE Staffs(
Staff_ID INT PRIMARY KEY AUTO_INCREMENT,
Full_NAME VARCHAR (50) NOT NULL,
Expertise VARCHAR (50) NOT NULL,
Contact_Details INT(100) NOT NULL,
Email VARCHAR(100) UNIQUE  
); 


Insert INTO Staffs(Staff_ID, Full_Name, Expertise, Contact_Details, Email)
VALUES (001,'Mr. Md. Al Amin', 'Senior Officer & PS to the Vice Chancellor', 01781232321, 'amin@metrouni.edu.bd'); 

Insert INTO Staffs(Staff_ID, Full_Name, Expertise, Contact_Details, Email)
VALUES (002,'Ms. Nahid Farhana', 'Deputy Director (Finance & Accounts)', 01678785643, 'nahid@metrouni.edu.bd'); 

Insert INTO Staffs(Staff_ID, Full_Name, Expertise, Contact_Details, Email)
VALUES (003,'Mr. Mohammad Ahsan Uddin', 'Executive Officer', 01994345230, 'ahsan@metrouni.edu.bd'); 

Insert INTO Staffs(Staff_ID, Full_Name, Expertise, Contact_Details, Email)
VALUES (004,'Shipra Biswas', 'Officer (Accounts)', 01543439987, 'shipra@metrouni.edu.bd'); 

Insert INTO Staffs(Staff_ID, Full_Name, Expertise, Contact_Details, Email)
VALUES (005,'Mr. Mashruf Ahmed Chowdhury', 'Deputy Librarian', 01917678665, 'mashruf@metrouni.edu.bd'); 

Insert INTO Staffs(Staff_ID, Full_Name, Expertise, Contact_Details, Email)
VALUES (006,'Mr. Aminur Rahman Ruhit', 'Trainee Officer', 01543790887, 'ruhit@metrouni.edu.bd'); 

Insert INTO Staffs(Staff_ID, Full_Name, Expertise, Contact_Details, Email)
VALUES (007,'Mr. Md. Abdul Karim', 'Officer', 01687576332, 'karim@metrouni.edu.bd'); 

Insert INTO Staffs(Staff_ID, Full_Name, Expertise, Contact_Details, Email)
VALUES (008, 'Mr. Md. Mosharaf Hossain Khan', 'Senior System Engineer', 01775643990, 'sony@metrouni.edu.bd'); 

Insert INTO Staffs(Staff_ID, Full_Name, Expertise, Contact_Details, Email)
VALUES (009, 'Mr. Md. Johirul Islam', 'Lab In charge (Computer)', 01788897098, 'johirul@metrouni.edu.bd'); 

Insert INTO Staffs(Staff_ID, Full_Name, Expertise, Contact_Details, Email)
VALUES (010, 'Mr. Jahed Hussain Ghuznavy', 'Executive Officer', 01998544321, 'jahed@metrouni.edu.bd'); 



SELECT * FROM Staffs;

