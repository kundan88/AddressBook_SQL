
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

SELECT * FROM Addressbook

-----UC4 Edit Contact-----

UPDATE Addressbook SET Address = 'Cuffe parade' WHERE FirstName = 'Kundan'

