-- Customers Table
CREATE TABLE Customers (
  CustomerID INTEGER PRIMARY KEY AUTOINCREMENT,
  Name TEXT NOT NULL,
  Email TEXT UNIQUE,
  Phone TEXT,
  RegistrationDate DATE
);

-- Movies Table
CREATE TABLE Movies (
  MovieID INTEGER PRIMARY KEY AUTOINCREMENT,
  Title TEXT NOT NULL,
  Genre TEXT,
  ReleaseYear INTEGER,
  Rating REAL
);

--Rentals Table
CREATE TABLE Rentals (
  RentalID INTEGER PRIMARY KEY AUTOINCREMENT,
  CustomerID INTEGER,
  MovieID INTEGER,
  RentalDate DATE,
  ReturnDate DATE,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
  FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);

-- Payments Table
CREATE TABLE Payments (
  PaymentID INTEGER PRIMARY KEY AUTOINCREMENT,
  CustomerID INTEGER,
  RentalID INTEGER,
  PaymentDate DATE,
  Amount REAL,
  Method TEXT,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
  FOREIGN KEY (RentalID) REFERENCES Rentals(RentalID)
);

