CREATE TABLE Users (
    UserID INT,
    Email VARCHAR(255) PRIMARY KEY,
    Password VARCHAR(255) NOT NULL,
    UserType ENUM('user', 'admin') NOT NULL
);