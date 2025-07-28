--Write Your Own INSERT Statements 
--For quick control, manually create sample data using SQL: 
INSERT INTO
  Customers (Name, Email, Phone, RegistrationDate)
VALUES
  (
    'Alice Sharma',
    'alice@example.com',
    '9876543210',
    '2023-01-10'
  ),
  (
    'Raj Verma',
    'raj@example.com',
    '9123456789',
    '2023-02-15'
  );

INSERT INTO
  Movies (Title, Genre, ReleaseYear, Rating)
VALUES
  ('Inception', 'Sci-Fi', 2010, 8.8),
  ('Titanic', 'Romance', 1997, 7.8);

--Create a few rows per table (20–50 is usually enough for testing).
