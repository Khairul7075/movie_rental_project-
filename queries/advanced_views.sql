--Step 3: Optional Advanced Features 
--Stored Procedure (simulated via view or script in SQLite): 
--Monthly Revenue Report View 
CREATE VIEW MonthlyRevenue AS
SELECT
  STRFTIME('%Y-%m', PaymentDate) AS MONTH,
  SUM(Amount) AS TotalRevenue
FROM
  Payments
GROUP BY
  MONTH;

--Dashboard View: Rentals by Genre 
CREATE VIEW GenreRentalStats AS
SELECT
  M.Genre,
  COUNT(R.RentalID) AS Rentals
FROM
  Movies M
  JOIN Rentals R ON M.MovieID = R.MovieID
GROUP BY
  M.Genre;
