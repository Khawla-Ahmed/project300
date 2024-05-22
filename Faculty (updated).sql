CREATE DATABASE faculty;
USE faculty;

CREATE TABLE Facultys(
Member_ID INT PRIMARY KEY AUTO_INCREMENT,
Full_NAME VARCHAR (50) NOT NULL,
Department VARCHAR (50) NOT NULL ,
Expertise VARCHAR (50) NOT NULL,
Contact_Details INT(100) UNIQUE,
Email VARCHAR(100)
); 


Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details, Email)
VALUES (101,'Professor Dr. Yousuf M Islam', 'CSE', 'Professor', 01971374952, 'yousuf@metrouni.edu.bd'); 
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details, Email)
VALUES (102,'Professor Dr. Md. Nazrul Haque Chowdhury', 'CSE', 'Professor', 01521554460, 'nazrul@metrouni.edu.bd');
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details, Email)
VALUES (103,'Choudhury M. Mukammel Wahid', 'CSE', 'Professor', 01552428513, 'mwahid@metrouni.edu.bd');
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details, Email)
VALUES (104,'Md. Mahfujul Hasan','CSE', 'Associate Professor & Head', 01717472438, 'mahfujul@metrouni.edu.bd');
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details, Email)
VALUES (105,'Safwan Uddin Ahmed','CSE','Assistant Professor', 01717019768, 'safwan@metrouni.edu.bd');
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details, Email)
VALUES (106,'Md. Mushtaq Shahriyar Rafee', 'CSE','Lecturer', 01785391622, 'rafee@metrouni.edu.bd');
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details, Email)
VALUES (107,'Golam Mostofa Naeem','CSE','Teaching Assistant', 01931658248, 'naeem@metrouni.edu.bd');
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details, Email)
VALUES (108, 'Dewan Ahmed Muhtasim','CSE','Lecturer', 0166757838, 'muhtasim@metrouni.edu.bd');
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details, Email)
VALUES (109,'Tajkia Nuri Ananna','CSE','Lecturer', 01792144108, 'tajkia@metrouni.edu.bd');
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details, Email)
VALUES (110,'Salma Akther','CSE', 'Lecturer', 01717653414, 'salma@metrouni.edu.bd');
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details, Email)
VALUES (111,'Nasif Istiak Remon', 'CSE', 'Lecturer', 01753290878, 'nasif@metrouni.edu.bd');


Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details)
VALUES  (201,'Nawshad Ahmed Chowdhury', 'EEE', 'Assistant Professor & Head', 01978437542);
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details)
VALUES  (202,'Md. Rahmot Ullah', 'EEE', 'Assistant Professor', 01590998060);
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details)
VALUES (203,'Md anwarul Kawchar', 'EEE', 'Lecturer', 01599532123);
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details)
VALUES (204,'Mohammad zahidul Salman','EEE', 'Lecturer', 01716655443) 
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details)
VALUES (205,'Arpita Mazumder','EEE','Lecturer', 01700998865);


Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details)
VALUES (301,'Fuad Ahmed', 'SWE', 'Associate Professor & Head', 01797697542);  
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details)
VALUES (302,'Wadia Iqbal Chowdhury', 'SWE', 'Lecturer', 01590944332); 
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details)
VALUES (303,'Nazia Sultana Chowdhury', 'SwE', 'Lecturer', 01599500658); 
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details)
VALUES (304,'Rina Paul','SWE', 'Lecturer', 01716658833); 
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details)
VALUES (305,'Al Akram Chowdhury','SWE','Lecturer', 01776585487); 


Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details)
VALUES (401,'Dr. Rama Islam', 'ENG', 'Associate Professor & Head', 01799098987); 
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details)
VALUES (402,'Anik Biswas', 'ENG', 'Associate Professor', 01590942323); 
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details)
VALUES (403,'Sanjida Chowdhury', 'ENG', 'Assistant Professor', 01599501234);
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details)
VALUES (404,'Golam Rabbani','ENG', 'Assistant Professor', 01716658831); 
Insert INTO Facultys(member_ID, Full_Name, Department, Expertise, Contact_details)
VALUES  (405,'Abdullah Al Mashud','ENG','Lecturer', 01776585480); 


SELECT * FROM facultys;
