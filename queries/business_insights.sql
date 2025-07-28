--Includes queries like:

--Top 10 Most Rented Movies

--Revenue Per Genre

--Customer Lifetime Value

--Late Return Patterns


-- Business Insight Queries 

SELECT
  M.Title,
  COUNT(R.RentalID) AS RentalCount
FROM
  Movies M
  JOIN Rentals R ON M.MovieID = R.MovieID
GROUP BY
  M.MovieID
ORDER BY
  RentalCount DESC
LIMIT
  10;

--2. 💸 Revenue Per Genre 
SELECT
  M.Genre,
  SUM(P.Amount) AS TotalRevenue
FROM
  Movies M
  JOIN Rentals R ON M.MovieID = R.MovieID
  JOIN Payments P ON R.RentalID = P.RentalID
GROUP BY
  M.Genre;

-- 3. 👤 Customer Lifetime Value 
SELECT
  C.Name,
  SUM(P.Amount) AS LifetimeValue
FROM
  Customers C
  JOIN Payments P ON C.CustomerID = P.CustomerID
GROUP BY
  C.CustomerID
ORDER BY
  LifetimeValue DESC;

--4. 🕒 Late Return Patterns 
SELECT
  C.Name,
  COUNT(R.RentalID) AS LateReturns
FROM
  Rentals R
  JOIN Customers C ON R.CustomerID = C.CustomerID
WHERE
  JULIANDAY(R.ReturnDate) - JULIANDAY(R.RentalDate) > 3 -- example: allowed return period = 3 days
GROUP BY
  C.CustomerID;

--
