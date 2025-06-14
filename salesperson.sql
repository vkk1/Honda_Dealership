DROP TABLE IF EXISTS salesperson CASCADE;

CREATE TABLE Salesperson (
  ID INT PRIMARY KEY REFERENCES Employee(ID),
  Name VARCHAR(100),
  Email VARCHAR(100),
  Phone VARCHAR(20)
);


INSERT INTO Salesperson (ID, Name, Email, Phone) VALUES
(1, 'Ashley Carter', 'ashley.carter@example.com', '555-0101'),
(2, 'Brian Lee', 'brian.lee@example.com', '555-0102'),
(3, 'Carla Nguyen', 'carla.nguyen@example.com', '555-0103'),
(4, 'David Patel', 'david.patel@example.com', '555-0104'),
(5, 'Emily Gomez', 'emily.gomez@example.com', '555-0105'),
(6, 'Frank Zhao', 'frank.zhao@example.com', '555-0106'),
(7, 'Grace Kim', 'grace.kim@example.com', '555-0107'),
(8, 'Henry Martinez', 'henry.martinez@example.com', '555-0108'),
(9, 'Ivy Thompson', 'ivy.thompson@example.com', '555-0109'),
(10, 'Jack Wilson', 'jack.wilson@example.com', '555-0110'),
(11, 'Katie Brooks', 'katie.brooks@example.com', '555-0111'),
(12, 'Liam Rivera', 'liam.rivera@example.com', '555-0112'),
(13, 'Mia Reed', 'mia.reed@example.com', '555-0113'),
(14, 'Noah Lewis', 'noah.lewis@example.com', '555-0114'),
(15, 'Olivia Hayes', 'olivia.hayes@example.com', '555-0115'),
(16, 'Paul Young', 'paul.young@example.com', '555-0116'),
(17, 'Queenie Scott', 'queenie.scott@example.com', '555-0117'),
(18, 'Ryan Adams', 'ryan.adams@example.com', '555-0118'),
(19, 'Sophia Bell', 'sophia.bell@example.com', '555-0119'),
(20, 'Thomas Diaz', 'thomas.diaz@example.com', '555-0120'),
(21, 'Uma Ford', 'uma.ford@example.com', '555-0121'),
(22, 'Victor Grant', 'victor.grant@example.com', '555-0122'),
(23, 'Wendy Hall', 'wendy.hall@example.com', '555-0123'),
(24, 'Xavier Irwin', 'xavier.irwin@example.com', '555-0124'),
(25, 'Yara James', 'yara.james@example.com', '555-0125'),
(26, 'Zack King', 'zack.king@example.com', '555-0126'),
(27, 'Amy Lopez', 'amy.lopez@example.com', '555-0127'),
(28, 'Ben Morgan', 'ben.morgan@example.com', '555-0128'),
(29, 'Chloe Novak', 'chloe.novak@example.com', '555-0129'),
(30, 'Derek Owen', 'derek.owen@example.com', '555-0130');
