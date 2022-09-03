
---UC1 Create AddressBook Database----
CREATE DATABASE AddressBook

USE AddressBook

----UC2 Create AddressBook Table---

CREATE TABLE Addressbook
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	FirstName VARCHAR(20) NOT NULL,
	LastName VARCHAR(20) NOT NULL,
	Address VARCHAR(100) NOT NULL,
	City VARCHAR(20) NOT NULL,
	State VARCHAR(20) NOT NULL,
	Zip BIGINT NOT NULL,
	PhoneNumber BIGINT NOT NULL,
	Email VARCHAR(50) NOT NULL
);

-----UC3 Insert Values----

INSERT INTO Addressbook VALUES('Kundan','Kamble','Colaba','Mumbai','Maharashtra',400005,7410741141,'kundan358@gmail.com')
INSERT INTO Addressbook VALUES('Sunil','Kadam','Udgir','Latur','Maharashtra',413517,7410786644,'sunil@gmail.com')
INSERT INTO Addressbook VALUES('Mahesh','surve','Ameer Peth','Hyd','TS',410002,7410786643,'mahesh@gmail.com')
INSERT INTO Addressbook VALUES('Tushar','Swami','Bhalki','Bidar','Karnataka',413548,7410785544,'tushar@gmail.com')

select * from Addressbook

-----UC4 Edit Contact-----

UPDATE Addressbook SET Address = 'Cuffe parade' WHERE FirstName = 'Kundan'

----UC5 Delete Contact---

DELETE FROM Addressbook WHERE FirstName = 'Sunil'



------UC6 Retrieve Person From City or State-----------

SELECT * FROM Addressbook WHERE City = 'Mumbai' or State = 'Maharashtra'

-----UC7 Count --------

SELECT COUNT(City) FROM Addressbook WHERE City = 'Mumbai' and State = 'Maharashtra'

-----UC8 Sort By Alphabeticaly--------------

SELECT * FROM Addressbook WHERE City = 'Mumbai' ORDER BY FirstName


------UC9  Identify Each AddressBook-----

ALTER TABLE Addressbook
ADD NAME VARCHAR(100), TYPE VARCHAR(100)

UPDATE AddressBook SET TYPE = 'FriendsBook', NAME = 'Friend' WHERE FirstName in ('Tushar','Mahesh');


------UC10------
Select COUNT(*),TYPE from Addressbook Group by Type




