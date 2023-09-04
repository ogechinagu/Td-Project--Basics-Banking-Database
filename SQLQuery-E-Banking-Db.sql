-- Task 2: Create E-Banking Database
CREATE DATABASE EBanking;

-- Task 3: Create Customers table and add required columns
CREATE TABLE Customers (
	CustomerID int Identity(1, 1) primary key,
	FirstName varchar(20) not null,
	LastName varchar(20) not null,
	DateOfBirth date not null, 
	Email varchar(100) not null, 
	PhoneNumber varchar(14) not null, 
	Address varchar(500) not null,
);
-- Task 4: Create Loans table and add required columns
CREATE TABLE Loans (
	LoanID int identity(1, 1) primary key,
	CustomerID int foreign key References Customers(CustomerID),
	LoanType varchar(20) not null,
	LoanAmount decimal(20,2) not null,
	InterestRate decimal(5,1) not null,
	LoanTerm int not null,
    LoanStatus varchar(10) not null default 'Pending',
);

ALTER TABLE Loans ALTER COLUMN InterestRate int not null;

-- Task 5: Insert some Customers records
INSERT INTO Customers (FirstName, LastName, DateOfBirth, Email, PhoneNumber, Address)
VALUES
    ('Gbadebo', 'Olajide', '1990-05-15', 'chinedu@example.com', '+2347012345678', '19 Broad St, Lagos'),
    ('Ngozi', 'Adeleke', '1985-09-20', 'ngozi@example.com', '+2348023456789', 'House 390A Road 6 Gwarinpa, Abuja'),
    ('Emeka', 'Obi', '1988-12-10', 'emeka@example.com', '+2349034567890', '135 Aba Rd, Port Harcourt'),
    ('Amina', 'Yakubu', '1992-03-25', 'amina@example.com', '+2347045678901', '6 Park Ave, Sabongari Kano'),
    ('Tope', 'Adeyemi', '1995-07-08', 'tope@example.com', '+2348056789012', '2 alubarika shopping complex bodija, Ibadan'),
    ('Nneka', 'Okoro', '1993-02-14', 'nneka@example.com', '+2349067890123', '133 Atlantic Avenue, GRA, Enugu'),
    ('Yusuf', 'Abubakar', '1987-06-30', 'yusuf@example.com', '+2348078901234', 'House 5 Area F, Samaru, Zaria, Kaduna'),
    ('Chiamaka', 'Eze', '1991-11-05', 'chiamaka@example.com', '+2347056789012', 'Paliament Loadge, Eziobodo, FUTO Rd, Owerri'),
    ('Ibrahim', 'Babangida', '1986-08-18', 'ibrahim@example.com', '+2348090123456', '6 Elm St, Jos'),
    ('Ejiro', 'Akpororo', '1996-02-28', 'ejiro@example.com', '+2347020155128', '29 Okumgba Avenue, Ajamimogha, Warri'),
    ('Aisha', 'Aliyu', '1994-04-02', 'aisha@example.com', '+2349023456789', '17 Ekeoha Shopping Centre,  Aba'),
	('Peter', 'Etim', '1983-04-04', 'peter@example.com', '+2348038334944', 'Tinapa Road, Calabar'),
	('Dennis', 'Robart', '10/11/1998', 'drobart0@fc2.com', '+2344038815008', '43 Randy Plaza'),
    ('Hal', 'Jendrusch', '9/3/1993', 'hjendrusch1@amazon.co.jp', '+2344937569709', '060 Grasskamp Plaza'),
    ('Eleen', 'Ciotto', '1/27/2000', 'eciotto2@uiuc.edu', '+2348114720575', '70245 2nd Park'),
    ('Davidson', 'Besantie', '7/26/1998', 'dbesantie3@mediafire.com', '+2348238619505', '9 Meadow Vale Plaza'),
    ('Alfy', 'Triplet', '2/8/1996', 'atriplet4@harvard.edu', '+2349041684851', '4345 Leroy Avenue'),
    ('Aguistin', 'Vlasov', '12/4/1997', 'avlasov5@usnews.com', '+2343347276117', '0 Michigan Hill'),
    ('Ryley', 'Grebbin', '7/14/1999', 'rgrebbin6@abc.net.au', '+2348397235976', '2 Springs Point'),
    ('Bevvy', 'Lindl', '12/21/1990', 'blindl7@ft.com', '+2342175695182', '4 Reindahl Crossing'),
	('Gracia', 'Northen', '7/4/1998', 'gnorthen8@phpbb.com', '+2341841311468', '846 Daystar Drive'),
	('Kial', 'Capelle', '4/3/2000', 'kcapelle9@elpais.com', '+2349979559420', '7007 Pepper Wood Pass'),
	('Albina', 'Richardeau', '12/28/1992', 'arichardeaua@comsenz.com', '+2344213200385', '1612 Oak Plaza'),
	('Dotti', 'Woodwing', '10/14/1994', 'dwoodwingb@accuweather.com', '+2349861763968', '7813 Sage Terrace'),
	('Taffy', 'Orrey', '12/17/1993', 'torreyc@shop-pro.jp', '+2342964524513', '94 Pine View Road'),
	('Jedd', 'Cantu', '4/18/2000', 'jcantud@symantec.com', '+2349749379278', '7365 Upham Trail'),
	('Chrysler', 'Pundy', '10/27/1998', 'cpundye@wordpress.org', '+2344846184851', '480 Brown Drive'),
	('Cointon', 'Dutch', '1/9/2000', 'cdutchf@google.com.hk', '+2348592549880', '7 Bellgrove Avenue'),
	('Perle', 'Wasbey', '6/20/1995', 'pwasbeyg@cpanel.net', '+2345131233974', '5801 Bowman Hill'),
	('Anetta', 'Filipczynski', '5/30/1997', 'afilipczynskih@hexun.com', '+2347325966661', '521 Monterey Terrace'),
	('Bonnibelle', 'Yarrington', '6/9/1998', 'byarringtoni@omniture.com', '+2343758076610', '00986 Texas Lane'),
	('Ferdie', 'McGuffie', '11/17/1998', 'fmcguffiej@e-recht24.de', '+2349617706302', '64366 Mariners Cove Trail'),
	('Amabel', 'Gaylord', '4/21/1993', 'agaylordk@nbcnews.com', '+2343423060511', '2311 Maryland Circle'),
	('Murdoch', 'Kedward', '3/12/1991', 'mkedwardl@google.co.jp', '+2342313229552', '869 Fieldstone Trail'),
	('Marget', 'Gambles', '10/4/1998', 'mgamblesm@ucsd.edu', '+2343051663329', '05 Bunting Drive'),
	('Lazaro', 'Davydkov', '5/23/1992', 'ldavydkovn@tuttocitta.it', '+2349987291657', '0232 Monica Terrace'),
	('Harbert', 'Rouby', '6/28/1997', 'hroubyo@parallels.com', '+2343275599713', '4155 Sauthoff Drive'),
	('Kathye', 'Stanislaw', '6/15/1992', 'kstanislawp@tinypic.com', '+2345512521037', '235 Lillian Drive'),
	('Gaby', 'Camier', '12/21/1991', 'gcamierq@dyndns.org', '+2349442793554', '587 Almo Alley'),
	('Lorrin', 'Skett', '8/17/1994', 'lskettr@unblog.fr', '+2343081985277', '64445 Butterfield Place'),
	('Rani', 'Loftie', '2/7/1992', 'rlofties@domainmarket.com', '+2347832470486', '581 Mitchell Plaza'),
	('Alexina', 'Carah', '8/20/2000', 'acaraht@mapquest.com', '+2343106834118', '90 Tennessee Trail');

-- Task 5: Insert some Loan records
INSERT INTO Loans (CustomerID, LoanType, LoanAmount, InterestRate, LoanTerm, LoanStatus)
VALUES
    (1, 'Personal Loan', 100000.00, 28, 24, 'Approved'),
    (2, 'Auto Loan', 10000000.00, 22, 60, 'Approved'),
    (2, 'Mortgage', 50000000.00, 15, 180, 'Approved'),
    (3, 'Mortgage', 25000000.00, 15, 240, 'Pending'),
    (4, 'Personal Loan', 600000.00, 28, 12, 'Approved'),
    (5, 'Auto Loan', 2000000.00, 22, 48, 'Declined'),
    (3, 'Personal Loan', 50000.00, 28, 24, 'Approved'),
    (6, 'Mortgage', 18000000.00, 15, 180, 'Approved'),
    (7, 'Personal Loan', 1200000.00, 28, 24, 'Pending'),
    (8, 'Auto Loan', 3000000.00, 22, 36, 'Approved'),
    (9, 'Mortgage', 100000000.00, 15, 240, 'Approved'),
    (10, 'Personal Loan', 900000.00, 28, 18, 'Declined'),
    (11, 'Auto Loan', 4000000.00, 22, 48, 'Approved'),
    (12, 'Personal Loan', 300000.00, 28, 12, 'Pending'),
    (10, 'Auto Loan', 5800000.00, 22, 60, 'Declined'),
    (5, 'Mortgage', 75000000.00, 15, 240, 'Approved');

-- Add new RequestDate column to Loans table
ALTER TABLE Loans ADD RequestDate DATE;

-- Add randon values in the RequestDate column
UPDATE Loans SET RequestDate = DATEADD(day, CAST(RAND() * 1000 AS INT), '2020-01-01');

-- Task 6: Retrives all customers records
Select * from Customers

-- Retrives all loans records
Select * from Loans

-- Task 7: Total number of loans for each customer
SELECT C.CustomerID, C.FirstName, C.LastName, COUNT(L.LoanID) AS TotalLoans
FROM Customers C LEFT JOIN Loans L ON C.CustomerID = L.CustomerID
GROUP BY C.CustomerID, C.FirstName, C.LastName;

-- Get More detailed customer lona information
SELECT
    C.CustomerID,
    C.FirstName,
    C.LastName,
    COUNT(L.LoanID) AS TotalLoansRequested,
    SUM(CASE WHEN L.LoanStatus = 'Approved' THEN 1 ELSE 0 END) AS ApprovedLoans,
    SUM(CASE WHEN L.LoanStatus = 'Pending' THEN 1 ELSE 0 END) AS PendingLoans,
    SUM(CASE WHEN L.LoanStatus = 'Declined' THEN 1 ELSE 0 END) AS DeclinedLoans
FROM
    Customers AS C
LEFT JOIN
    Loans AS L ON C.CustomerID = L.CustomerID
GROUP BY
    C.CustomerID,
    C.FirstName,
    C.LastName;

-- Task 8: Average loan amount
SELECT AVG(LoanAmount) AS AverageLoanAmount FROM Loans;

-- Task 9: Update the status of a specific loan
UPDATE Loans SET LoanStatus = 'Pending' WHERE LoanID = 122;

-- Task 10: Delete a customer and all associated loans
/*ALTER TABLE Loans
DROP CONSTRAINT FK__Loans__CustomerI__398D8EEE;  -- Drop the existing constraint
ALTER TABLE Loans
ADD CONSTRAINT FK_Customer_Loans
FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID)
ON DELETE CASCADE;  */
DELETE FROM Customers WHERE CustomerID = 15;

-- Add more Loan records using SQL fuctions to randomize some values
DECLARE
  @RequestDate DATETIME,
  @StartDate DATETIME = '2020-01-01',
  @EndDate DATETIME = GETDATE(),
  @RandomDays INT,
  @LoanType VARCHAR(20),
  @InterestRate DECIMAL(5, 2),
  @LoanTerm INT,
  @LoanStatus VARCHAR(10),
  @CustomerID INT;

-- Declare a variable to control the loop
DECLARE @i INT = 1;

-- Iterate through 43 records
WHILE @i <= 43
BEGIN

  -- Calculate a random number of days between start and end dates
  SET @RandomDays = ROUND(RAND() * DATEDIFF(day, @StartDate, @EndDate), 0);

  -- Calculate the random date within the range
  SET @RequestDate = DATEADD(day, @RandomDays, @StartDate);

  -- Generate a random loan type
  SET @LoanType = CASE
    WHEN RAND() < 0.33 THEN 'Personal Loan'
    WHEN RAND() < 0.67 THEN 'Auto Loan'
    ELSE 'Mortgage'
  END;

  -- Generate a random interest rate based on the loan type
  SET @InterestRate = CASE
    WHEN @LoanType = 'Personal Loan' THEN 28.00
    WHEN @LoanType = 'Auto Loan' THEN 22.00
    ELSE 15.00
  END;

  -- Generate a random loan term based on the loan type
  SET @LoanTerm = CASE
    WHEN @LoanType = 'Auto Loan' THEN
        CASE
            WHEN RAND() < 0.33 THEN 36
            WHEN RAND() < 0.67 THEN 48
            ELSE 60
        END
    WHEN @LoanType = 'Personal Loan' THEN
        CASE
            WHEN RAND() < 0.33 THEN 12
            WHEN RAND() < 0.67 THEN 18
            ELSE 24
        END
    ELSE
        CASE
            WHEN RAND() < 0.5 THEN 180
            ELSE 240
        END
  END;

  -- Generate a random loan status
  SET @LoanStatus = CASE
    WHEN RAND() < 0.33 THEN 'Approved'
    WHEN RAND() < 0.67 THEN 'Pending'
    ELSE 'Declined'
  END;

  -- Generate a random customer ID
  SET @CustomerID = RAND() * 43 + 1;

  -- INSERT INTO statement using the generated variables
  INSERT INTO Loans (CustomerID, LoanType, LoanAmount, InterestRate, LoanTerm, LoanStatus, RequestDate)
  VALUES
    (@CustomerID, @LoanType, RAND() * 500000000 + 80000, @InterestRate, @LoanTerm, @LoanStatus, @RequestDate);

  -- Increment the loop counter
  SET @i = @i + 1;

END;

