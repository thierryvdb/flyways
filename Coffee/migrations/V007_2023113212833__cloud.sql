-- Script generated by Redgate Compare v1.18.0.11708


-- deployment: Dropping Appointments.Appointments_ibfk_2...
ALTER TABLE Appointments DROP FOREIGN KEY Appointments_ibfk_2;


-- deployment: Dropping Appointments.Appointments_ibfk_1...
ALTER TABLE Appointments DROP FOREIGN KEY Appointments_ibfk_1;


-- deployment: Dropping Appointments.PatientID...
DROP INDEX PatientID ON Appointments;


-- deployment: Dropping Appointments.DoctorID...
DROP INDEX DoctorID ON Appointments;


-- deployment: Dropping Appointments...
DROP TABLE Appointments;


-- deployment: Dropping Doctors...
DROP TABLE Doctors;


-- deployment: Dropping Patients...
DROP TABLE Patients;


-- deployment: Creating Products...
CREATE TABLE Products (
    ProductID int(11) NOT NULL,
    ProductName varchar(50) NULL,
    Price decimal(8,2) NULL
);
ALTER TABLE Products ADD PRIMARY KEY (ProductID);


-- deployment: Creating Customers...
CREATE TABLE Customers (
    CustomerID int(11) NOT NULL,
    FirstName varchar(50) NULL,
    LastName varchar(50) NULL,
    Email varchar(100) NULL,
    Phone varchar(20) NULL
);
ALTER TABLE Customers ADD PRIMARY KEY (CustomerID);


-- deployment: Creating Customers.Email...
CREATE UNIQUE INDEX Email USING BTREE ON Customers(Email);


-- deployment: Creating AnotherRandomTables...
CREATE TABLE AnotherRandomTables (
    ID int(11) NOT NULL,
    Description varchar(100) NULL,
    RandomFloatValue float NULL
);
ALTER TABLE AnotherRandomTables ADD PRIMARY KEY (ID);


-- deployment: Creating AnotherRandomTable...
CREATE TABLE AnotherRandomTable (
    ID int(11) NOT NULL,
    Description varchar(100) NULL,
    RandomFloatValue float NULL
);
ALTER TABLE AnotherRandomTable ADD PRIMARY KEY (ID);

