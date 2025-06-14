DROP TABLE IF EXISTS payment CASCADE;

CREATE TABLE Payment (
  ID SERIAL PRIMARY KEY,
  Date DATE,
  Amount DECIMAL(10,2),
  Method VARCHAR(20),
  Status VARCHAR(20),
  Purchase_ID INT REFERENCES Purchase(ID)
);

INSERT INTO Payment (Date, Amount, Method, Status, Purchase_ID) VALUES
('2023-02-16', 22495.00, 'Credit Card', 'Complete', 1),
('2023-03-03', 25499.99, 'Loan', 'Pending', 2),
('2023-03-19', 18950.00, 'Cash', 'Complete', 3),
('2023-04-02', 36999.95, 'Credit Card', 'Complete', 4),
('2023-04-16', 30999.50, 'Loan', 'Complete', 5),
('2023-05-01', 23999.99, 'Cash', 'Complete', 6),
('2023-05-13', 26500.00, 'Credit Card', 'Complete', 7),
('2023-05-27', 27500.00, 'Loan', 'Pending', 8),
('2023-06-09', 32500.00, 'Wire', 'Complete', 9),
('2023-06-22', 21995.00, 'Cash', 'Complete', 10),
('2023-07-06', 20499.99, 'Credit Card', 'Complete', 11),
('2023-07-20', 18995.00, 'Loan', 'Pending', 12),
('2023-08-02', 35999.00, 'Wire', 'Complete', 13),
('2023-08-16', 38900.00, 'Loan', 'Complete', 14),
('2023-08-30', 23499.00, 'Cash', 'Complete', 15),
('2023-09-13', 26999.00, 'Credit Card', 'Pending', 16),
('2023-09-27', 22999.00, 'Cash', 'Complete', 17),
('2023-10-11', 20450.00, 'Loan', 'Pending', 18),
('2023-10-25', 38499.00, 'Wire', 'Complete', 19),
('2023-11-08', 41499.99, 'Loan', 'Complete', 20),
('2023-11-22', 24499.50, 'Cash', 'Complete', 21),
('2023-12-06', 27499.00, 'Credit Card', 'Pending', 22),
('2023-12-20', 28950.00, 'Loan', 'Pending', 23),
('2024-01-03', 26995.00, 'Cash', 'Complete', 24),
('2024-01-17', 31999.00, 'Wire', 'Complete', 25),
('2024-01-31', 18999.00, 'Credit Card', 'Complete', 26),
('2024-02-14', 41999.00, 'Loan', 'Complete', 27),
('2024-02-28', 37499.99, 'Wire', 'Pending', 28),
('2024-03-13', 34499.00, 'Credit Card', 'Complete', 29),
('2024-03-27', 25999.99, 'Cash', 'Pending', 30);
