DROP TABLE IF EXISTS Employee CASCADE;

CREATE TABLE Employee (
  ID SERIAL PRIMARY KEY,
  Name VARCHAR(100),
  Title VARCHAR(50),
  SSN CHAR(11),
  Phone VARCHAR(20),
  Address TEXT
);


INSERT INTO Employee (Name, Title, SSN, Phone, Address) VALUES
('Alice Kim', 'Sales Manager', '100-00-0001', '555-0001', '123 Main St'),
('Bob Lee', 'Technician', '100-00-0002', '555-0002', '456 Pine Rd'),
('Cindy Park', 'Sales Rep', '100-00-0003', '555-0003', '789 Oak Ave'),
('David Choi', 'Technician', '100-00-0004', '555-0004', '135 River Ln'),
('Ella Moore', 'Sales Rep', '100-00-0005', '555-0005', '246 Lake Dr'),
('Frank Zhang', 'Technician', '100-00-0006', '555-0006', '357 Forest Ct'),
('Grace Lee', 'Sales Manager', '100-00-0007', '555-0007', '468 Maple Rd'),
('Henry Wu', 'Technician', '100-00-0008', '555-0008', '579 Birch St'),
('Ivy Kang', 'Sales Rep', '100-00-0009', '555-0009', '680 Cedar Ln'),
('Jack Brown', 'Technician', '100-00-0010', '555-0010', '791 Elm Dr'),
('Karen White', 'Sales Rep', '100-00-0011', '555-0011', '902 Cherry Pl'),
('Leo Davis', 'Technician', '100-00-0012', '555-0012', '123 Riverwalk'),
('Mina Patel', 'Sales Manager', '100-00-0013', '555-0013', '234 Ridgeview'),
('Nate Kim', 'Technician', '100-00-0014', '555-0014', '345 Glen Cove'),
('Olivia Ross', 'Sales Rep', '100-00-0015', '555-0015', '456 Sunset Blvd'),
('Paul Lim', 'Technician', '100-00-0016', '555-0016', '567 Ocean View'),
('Quincy Chan', 'Sales Manager', '100-00-0017', '555-0017', '678 Sunrise Ln'),
('Rachel Kim', 'Technician', '100-00-0018', '555-0018', '789 Bluejay Rd'),
('Sam Park', 'Sales Rep', '100-00-0019', '555-0019', '890 Hilltop Ave'),
('Tina Nguyen', 'Technician', '100-00-0020', '555-0020', '901 Deer Path'),
('Uma Shah', 'Sales Rep', '100-00-0021', '555-0021', '101 Riveredge'),
('Victor Lee', 'Technician', '100-00-0022', '555-0022', '202 Bay St'),
('Wendy Hu', 'Sales Manager', '100-00-0023', '555-0023', '303 Marina Cir'),
('Xander Cho', 'Technician', '100-00-0024', '555-0024', '404 Cedar Hill'),
('Yuna Lee', 'Sales Rep', '100-00-0025', '555-0025', '505 Oak Crest'),
('Zane Wu', 'Technician', '100-00-0026', '555-0026', '606 Meadow Dr'),
('Amy Cho', 'Sales Manager', '100-00-0027', '555-0027', '707 Brook Ln'),
('Brian Kim', 'Technician', '100-00-0028', '555-0028', '808 Cypress Rd'),
('Chloe Han', 'Sales Rep', '100-00-0029', '555-0029', '909 Birch Cove'),
('Dylan Yu', 'Technician', '100-00-0030', '555-0030', '111 Apple Ct');
