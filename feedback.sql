DROP TABLE IF EXISTS feedback CASCADE;

CREATE TABLE Feedback (
  ID SERIAL PRIMARY KEY,
  Rating INT CHECK (Rating BETWEEN 1 AND 5),
  Date DATE,
  Comments TEXT,
  Customer_ID INT REFERENCES Customer(Customer_ID),
  Salesperson_ID INT REFERENCES Salesperson(ID)
);

INSERT INTO Feedback (Rating, Date, Comments, Customer_ID, Salesperson_ID) VALUES
(5, '2023-03-01', 'Excellent service and attention to detail.', 1, 1),
(4, '2023-03-05', 'Very friendly and helpful.', 2, 2),
(3, '2023-03-10', 'Decent experience overall.', 3, 3),
(5, '2023-03-15', 'Great buying experience!', 4, 4),
(4, '2023-03-20', 'Answered all my questions.', 5, 5),
(2, '2023-03-25', 'Took a while to get help.', 6, 6),
(5, '2023-04-01', 'Quick and smooth transaction.', 7, 7),
(3, '2023-04-06', 'Could improve communication.', 8, 8),
(4, '2023-04-11', 'Satisfied with the support.', 9, 9),
(5, '2023-04-16', 'Loved the energy and professionalism.', 10, 10),
(5, '2023-04-21', 'Best car buying experience I have had.', 11, 11),
(2, '2023-04-26', 'Wait times were too long.', 12, 12),
(3, '2023-05-01', 'Average customer service.', 13, 13),
(5, '2023-05-06', 'Top-notch service!', 14, 14),
(4, '2023-05-11', 'Helpful and courteous.', 15, 15),
(1, '2023-05-16', 'Felt ignored and rushed.', 16, 16),
(5, '2023-05-21', 'Amazing support from start to finish.', 17, 17),
(3, '2023-05-26', 'Okay, but not exceptional.', 18, 18),
(4, '2023-05-31', 'Kept me informed throughout.', 19, 19),
(5, '2023-06-05', 'Would definitely recommend.', 20, 20),
(4, '2023-06-10', 'Easy process and very helpful staff.', 21, 21),
(2, '2023-06-15', 'Too much paperwork and waiting.', 22, 22),
(3, '2023-06-20', 'It was alright, nothing special.', 23, 23),
(5, '2023-06-25', 'Flawless experience!', 24, 24),
(4, '2023-06-30', 'Responsive and knowledgeable.', 25, 25),
(3, '2023-07-05', 'Had to follow up multiple times.', 26, 26),
(5, '2023-07-10', 'Super smooth and easy process.', 27, 27),
(4, '2023-07-15', 'Went above and beyond!', 28, 28),
(5, '2023-07-20', 'Could not have asked for better.', 29, 29),
(3, '2023-07-25', 'Room for improvement, but decent.', 30, 30);
