DROP TABLE IF EXISTS customer CASCADE;

CREATE TABLE Customer (
  Customer_ID SERIAL PRIMARY KEY,
  Name VARCHAR(100),
  Email VARCHAR(100),
  Phone VARCHAR(20),
  Address TEXT,
  Salesperson_ID INT REFERENCES Salesperson(ID)
);


INSERT INTO Customer (Name, Email, Phone, Address, Salesperson_ID) VALUES
('Aaron Benson', 'aaron.benson@example.com', '555-1001', '101 Maple Street, Richmond, VA 23173', 1),
('Becky Chen', 'becky.chen@example.com', '555-1002', '202 Oak Avenue, Boston, MA 02118', 2),
('Carlos Diaz', 'carlos.diaz@example.com', '555-1003', '303 Pine Lane, Denver, CO 80203', 3),
('Dana Evans', 'dana.evans@example.com', '555-1004', '404 Cedar Blvd, Miami, FL 33101', 4),
('Ethan Ford', 'ethan.ford@example.com', '555-1005', '505 Birch Road, Seattle, WA 98101', 5),
('Fiona Green', 'fiona.green@example.com', '555-1006', '606 Spruce Street, Dallas, TX 75201', 6),
('George Hall', 'george.hall@example.com', '555-1007', '707 Willow Drive, Chicago, IL 60616', 7),
('Holly Irwin', 'holly.irwin@example.com', '555-1008', '808 Redwood Court, Atlanta, GA 30303', 8),
('Ian Johnson', 'ian.johnson@example.com', '555-1009', '909 Palm Ave, Los Angeles, CA 90001', 9),
('Jenny Kim', 'jenny.kim@example.com', '555-1010', '111 Cherry Blvd, New York, NY 10001', 10),
('Kyle Lee', 'kyle.lee@example.com', '555-1011', '121 Walnut St, Philadelphia, PA 19103', 11),
('Laura Moore', 'laura.moore@example.com', '555-1012', '131 Poplar Lane, Austin, TX 73301', 12),
('Mark Nguyen', 'mark.nguyen@example.com', '555-1013', '141 Hickory Way, San Diego, CA 92101', 13),
('Nina Owens', 'nina.owens@example.com', '555-1014', '151 Ash Circle, Raleigh, NC 27601', 14),
('Oscar Patel', 'oscar.patel@example.com', '555-1015', '161 Fir Path, Minneapolis, MN 55401', 15),
('Paula Quinn', 'paula.quinn@example.com', '555-1016', '171 Elm Trail, Portland, OR 97201', 16),
('Quinn Ross', 'quinn.ross@example.com', '555-1017', '181 Magnolia St, Phoenix, AZ 85001', 17),
('Rita Singh', 'rita.singh@example.com', '555-1018', '191 Sequoia Dr, Indianapolis, IN 46201', 18),
('Sam Taylor', 'sam.taylor@example.com', '555-1019', '201 Locust Lane, Detroit, MI 48201', 19),
('Tina Underwood', 'tina.underwood@example.com', '555-1020', '211 Aspen Way, Charlotte, NC 28201', 20),
('Umar Vasquez', 'umar.vasquez@example.com', '555-1021', '221 Cypress Court, Columbus, OH 43004', 21),
('Vera White', 'vera.white@example.com', '555-1022', '231 Ironwood St, Baltimore, MD 21201', 22),
('Will Xu', 'will.xu@example.com', '555-1023', '241 Hawthorn Ave, Nashville, TN 37201', 23),
('Xena Young', 'xena.young@example.com', '555-1024', '251 Buckeye Blvd, Jacksonville, FL 32202', 24),
('Yusuf Zane', 'yusuf.zane@example.com', '555-1025', '261 Alder Rd, Kansas City, MO 64101', 25),
('Zoe Allen', 'zoe.allen@example.com', '555-1026', '271 Beech Court, Salt Lake City, UT 84101', 26),
('Andy Brown', 'andy.brown@example.com', '555-1027', '281 Sycamore St, Memphis, TN 38101', 27),
('Beth Clark', 'beth.clark@example.com', '555-1028', '291 Chestnut Ln, Omaha, NE 68101', 28),
('Chris Davis', 'chris.davis@example.com', '555-1029', '301 Hemlock Path, New Orleans, LA 70112', 29),
('Diana Ellis', 'diana.ellis@example.com', '555-1030', '311 Olive Ave, Milwaukee, WI 53201', 30);
