CREATE TABLE Com_Admin (
Admin_ID varchar (50) PRIMARY KEY,
Admin_Address nvarchar (255),
Email varchar (30),
);


INSERT INTO Com_Admin(Admin_ID, Admin_Address, Email)
VALUES
('A001', '123 Main Street, New York, NY', 'info@abctours.com'),
('A002', '456 Park Avenue, Los Angeles, CA', 'info@xyztravels.com'),
('A003', '789 5th Avenue, Chicago, IL', 'info@pqrholidays.com'),
('A004', '321 Broadway, San Francisco, CA', 'info@funadventures.com'),
('A005', '555 Main Street, Miami, FL', 'info@globalgetaways.com'),
('A006', '999 Park Lane, Seattle, WA', 'info@dreamdestinations.com'),
('A007', '111 Green Street, Portland, OR', 'info@ecotours.com'),
('A008', '777 High Street, Las Vegas, NV', 'info@luxuryescapes.com'),
('A009', '444 Forest Drive, Denver, CO', 'info@adventureawaits.com'),
('A010', '1000 Main Street, Seattle, WA', 'info@globetrotters.com'),
('A011', '555 Broadway, San Francisco, CA', 'info@adventuresunlimited.com'),
('A012', '123 Elm Street, Miami, FL', 'info@wonderwanderers.com'),
('A013', '789 Oak Lane, Atlanta, GA', 'info@amazingjourneys.com'),
('A014', '456 Maple Road, Boston, MA', 'info@dreamdestinations.com'),
('A015', '555 Pine Street, Denver, CO', 'info@jollyjourneys.com');


CREATE TABLE Hotel (
H_ID nvarchar (9) PRIMARY KEY,
H_Name varchar (255) NOT NULL,
Country varchar (50),
City varchar (50),
Street varchar (50),
Hotel_type varchar (10),
About_info nvarchar (255),
Admin_ID varchar(50)
  FOREIGN KEY REFERENCES Com_Admin(Admin_ID)
);


INSERT INTO Hotel (H_ID, H_Name, Country, City, Street, Hotel_type, About_info, Admin_ID)
VALUES
('H001', 'Grand Hotel', 'USA', 'New York', 'Broadway', '5-star', 'Luxury hotel in the heart of Manhattan', 'A001'),
('H002', 'Ritz Carlton', 'USA', 'Los Angeles', 'Wilshire Boulevard', '5-star', 'Luxury hotel in Beverly Hills', 'A002'),
('H003', 'Hilton Chicago', 'USA', 'Chicago', 'Michigan Avenue', '4-star', 'Centrally located hotel in downtown Chicago', 'A003'),
('H004', 'Fairmont San Francisco', 'USA', 'San Francisco', 'California Street', '5-star', 'Historic luxury hotel atop Nob Hill', 'A004'),
('H005', 'The Beverly Hills Hotel', 'USA', 'Los Angeles', 'Sunset Boulevard', '5-star', 'Iconic Hollywood glamour in the heart of Beverly Hills', 'A005'),
('H006', 'The Drake Hotel', 'USA', 'Chicago', 'East Walton Place', '4-star', 'Historic hotel with stunning Lake Michigan views', 'A006'),
('H007', 'Four Seasons Resort Maui at Wailea', 'USA', 'Maui', 'Wailea Alanui Drive', '5-star', 'Luxury beachfront resort with world-class amenities', 'A006'),
('H008', 'The Ritz-Carlton, Kapalua', 'USA', 'Maui', 'Office Road', '5-star', 'Oceanfront luxury resort with golf and spa', 'A007'),
('H009', 'The Broadmoor', 'USA', 'Colorado Springs', 'Lake Avenue', '5-star', 'Historic resort in the Rocky Mountains', 'A008'),
('H010', 'The St. Regis New York', 'USA', 'New York', 'Fifth Avenue', '5-star', 'Luxury hotel with stunning Central Park views', 'A009'),
('H011', 'Mandarin Oriental, Las Vegas', 'USA', 'Las Vegas', 'Las Vegas Boulevard', '5-star', 'Sophisticated luxury in the heart of the Las Vegas Strip', 'A010'),
('H012', 'Waldorf Astoria Las Vegas', 'USA', 'Las Vegas', 'Las Vegas Boulevard', '5-star', 'Stylish luxury hotel with stunning city views', 'A011');


CREATE TABLE Hotel_Login (
    H_username nvarchar (15) NOT NULL,
    H_Password nvarchar (10) NOT NULL,
    H_ID nvarchar (9) NOT NULL FOREIGN KEY REFERENCES Hotel(H_ID),
    PRIMARY KEY (H_username, H_Password)
);

INSERT INTO Hotel_Login (H_username, H_Password, H_ID)
VALUES
('grandhotel', 'password1', 'H001'),
('ritzcarlton', 'password2', 'H002'),
('hiltonchicago', 'password3', 'H003'),
('Fairmont San ', 'password4', 'H004'),
('Beverly Hills', 'password5', 'H005'),
('The Drake Hotel', 'password6', 'H006'),
('Seasons Maui', 'password7', 'H007'),
('Ritz-Carlton', 'password8', 'H008'),
('Broadmoor', 'password9', 'H009'),
('Regis New York', 'password10', 'H010'),
('mandarin', 'password11', 'H011'),
('waldorf Astoria', 'password12', 'H012');


CREATE TABLE Traveler (
U_ID int PRIMARY KEY,
F_Name varchar (25),
L_Name varchar (25),
Country varchar (50)NOT NULL,
City varchar (50)NOT NULL,
Street varchar (50)NOT NULL,
D_O_B nvarchar (10),
Nationality varchar (15),
Email nvarchar (30),
Phone_no nvarchar (15)
);


INSERT INTO Traveler (U_ID, F_Name, L_Name, Country, City, Street, D_O_B, Nationality, Email, Phone_no)
VALUES
(1, 'John', 'Doe', 'USA', 'New York', 'Broadway', '1980-01-01', 'American', 'johndoe@gmail.com', '555-1111'),
(2, 'Jane', 'Smith', 'USA', 'Los Angeles', 'Wilshire Boulevard', '1990-02-01', 'American', 'janesmith@gmail.com', '555-2222'),
(3, 'David', 'Lee', 'USA', 'Chicago', 'Michigan Avenue', '1985-05-01', 'American', 'davidlee@gmail.com', '555-3333'),
(4, 'Emily', 'Wong', 'Canada', 'Toronto', 'Yonge Street', '1995-04-02', 'Canadian', 'emilywong@gmail.com', '555-4444'),
(5, 'Samantha', 'Johnson', 'USA', 'Miami', 'Ocean Drive', '1987-07-03', 'American', 'samanthajohnson@gmail.com', '555-5555'),
(6, 'Alex', 'Garcia', 'Spain', 'Madrid', 'Gran Via', '1992-12-04', 'Spanish', 'alexgarcia@gmail.com', '555-6666'),
(7, 'Chen', 'Wei', 'China', 'Shanghai', 'Nanjing Road', '1983-11-05', 'Chinese', 'chenwei@gmail.com', '555-7777'),
(8, 'Aya', 'Suzuki', 'Japan', 'Tokyo', 'Shibuya', '1990-06-06', 'Japanese', 'ayasuzuki@gmail.com', '555-8888'),
(9, 'Lena', 'Kovalenko', 'Russia', 'Moscow', 'Tverskaya Street', '1988-09-07', 'Russian', 'lenakovalenko@gmail.com', '555-9999'),
(10, 'Mohammed', 'Abdullah', 'Saudi Arabia', 'Riyadh', 'King Fahd Road', '1982-08-08', 'Saudi Arabian', 'mohammedabdullah@gmail.com', '555-0000'),
(11, 'Maria', 'Fernandez', 'Mexico', 'Mexico City', 'Paseo de la Reforma', '1991-03-09', 'Mexican', 'mariafernandez@gmail.com', '555-1122'),
(12, 'Kim', 'Lee', 'South Korea', 'Seoul', 'Myeong-dong', '1986-02-10', 'South Korean', 'kimelee@gmail.com', '555-3344'),
(13, 'Mario', 'Rossi', 'Italy', 'Rome', 'Via del Corso', '1994-01-11', 'Italian', 'mariorossi@gmail.com', '555-5566'),
(14, 'Sara', 'Lopez', 'Colombia', 'Bogota', 'Calle 72', '1989-10-12', 'Colombian', 'saralopez@gmail.com', '555-7788'),
(15, 'Ahmed', 'Ali', 'Egypt', 'Cairo', 'Tahrir Square', '1981-05-13', 'Egyptian', 'ahmedali@gmail.com', '555-9900');


CREATE TABLE Travelers_Login(
Username nvarchar (15)NOT NULL,
U_Password nvarchar (10)NOT NULL,
U_ID int NOT NULL FOREIGN KEY REFERENCES Traveler(U_ID)
PRIMARY KEY (Username,U_Password),
);

INSERT INTO Travelers_Login (Username, U_Password, U_ID)
VALUES
('johndoe', 'password1', 1),
('janesmith', 'password2', 2),
('davidlee', 'password3', 3),
('sarajohnson', 'password4', 4),
('michaelbrown', 'password5', 5),
('amandasmith', 'password6', 6),
('alexanderkim', 'password7', 7),
('olivertaylor', 'password8', 8),
('isabellajones', 'password9', 9),
('jonathansmith', 'password10', 10),
('emilydavis', 'password11', 11),
('williamjackson', 'password12', 12),
('sophiagarcia', 'password13', 13),
('ethanlee', 'password14', 14),
('nataliewilson', 'password15', 15);


CREATE TABLE Hotel_Event_Type (
  Event_Type_ID nvarchar (20)  PRIMARY KEY,
  Swimming_pool varchar(20),
  gynasium varchar(20),
  Carrom varchar(20),
  Gym varchar(20),
  );

INSERT INTO Hotel_Event_Type (Event_Type_ID, Swimming_pool, gynasium, Carrom, Gym)
VALUES
('ET001', 'Yes', 'Yes', 'No', 'Yes'),
('ET002', 'No', 'Yes', 'Yes', 'No');
INSERT INTO Hotel_Event_Type (Event_Type_ID, Swimming_pool, gynasium, Carrom, Gym)
VALUES
('ET003', 'Yes', 'No', 'Yes', 'No'),
('ET004', 'No', 'No', 'No', 'Yes'),
('ET005', 'Yes', 'Yes', 'No', 'No'),
('ET006', 'No', 'Yes', 'Yes', 'Yes'),
('ET007', 'Yes', 'No', 'No', 'Yes'),
('ET008', 'No', 'Yes', 'No', 'No'),
('ET009', 'Yes', 'Yes', 'Yes', 'Yes'),
('ET010', 'No', 'No', 'Yes', 'No'),
('ET011', 'Yes', 'No', 'Yes', 'Yes'),
('ET012', 'No', 'No', 'No', 'No'),
('ET013', 'Yes', 'Yes', 'No', 'Yes'),
('ET014', 'No', 'Yes', 'Yes', 'No');


CREATE TABLE Hotel_Event (
  Event_ID nvarchar(20) PRIMARY KEY,
  E_Date nvarchar(10),
  E_Time nvarchar(5),
  U_ID int FOREIGN KEY REFERENCES Traveler(U_ID),
  Event_Type_ID nvarchar (20) FOREIGN KEY REFERENCES Hotel_Event_Type (Event_Type_ID)
);



INSERT INTO Hotel_Event (Event_ID, E_Date, E_Time, U_ID, Event_Type_ID)
VALUES
('EV001', '2023-03-01', '10:00', 1, 'ET001'),
('EV002', '2023-03-02', '15:00', 2, 'ET002'),
('EV003', '2023-03-03', '12:00', 3, 'ET001'),
('EV004', '2023-03-04', '09:00', 4, 'ET003'),
('EV005', '2023-03-05', '14:00', 5, 'ET002'),
('EV006', '2023-03-06', '11:00', 6, 'ET003'),
('EV007', '2023-03-07', '10:00', 7, 'ET001'),
('EV008', '2023-03-08', '16:00', 8, 'ET002'),
('EV009', '2023-03-09', '13:00', 9, 'ET003'),
('EV010', '2023-03-10', '10:00', 10, 'ET001'),
('EV011', '2023-03-11', '15:00', 11, 'ET002'),
('EV012', '2023-03-12', '12:00', 12, 'ET001'),
('EV013', '2023-03-13', '09:00', 1, 'ET003'),
('EV014', '2023-03-14', '14:00', 2, 'ET002'),
('EV015', '2023-03-15', '11:00', 3, 'ET003');



CREATE TABLE Room (
  Room_NO varchar(5) PRIMARY KEY,
  Room_type varchar(20),
  Condition varchar(15),
  Price varchar(25),
  U_ID int,
 FOREIGN KEY (U_ID) REFERENCES Traveler(U_ID)
);
ALTER TABLE Room
ADD H_ID nvarchar(9);
ALTER TABLE Room
ADD FOREIGN KEY (H_ID) REFERENCES Hotel(H_ID);


INSERT INTO Room (Room_NO, Room_type, Condition, Price, U_ID)
VALUES
('101', 'Standard', 'Good', '100', NULL),
('102', 'Deluxe', 'Excellent', '200', NULL),
('201', 'Standard', 'Fair', '150', NULL),
('202', 'Deluxe', 'Excellent', '250', NULL),
('301', 'Standard', 'Good', '120', NULL),
('302', 'Deluxe', 'Fair', '220', NULL),
('401', 'Standard', 'Excellent', '180', NULL),
('402', 'Deluxe', 'Good', '280', NULL),
('501', 'Standard', 'Fair', '130', NULL),
('502', 'Deluxe', 'Excellent', '300', NULL),
('601', 'Standard', 'Good', '140', NULL),
('602', 'Deluxe', 'Fair', '240', NULL),
('701', 'Standard', 'Excellent', '190', NULL),
('702', 'Deluxe', 'Good', '320', NULL);



CREATE TABLE Reservation (
  B_ID int PRIMARY KEY,
  B_type varchar(50),
  B_Date varchar(10),
  No_guest int,
  U_ID int,
  H_ID nvarchar(9),
  FOREIGN KEY (U_ID) REFERENCES Traveler(U_ID),
  FOREIGN KEY (H_ID) REFERENCES Hotel(H_ID)
);

INSERT INTO Reservation (B_ID, B_type, B_Date, No_guest, U_ID, H_ID)
VALUES
(1, 'Standard', '2023-03-05', 2, 1, 'H001'),
(2, 'Deluxe', '2023-03-07', 3, 2, 'H002'),
(3, 'Standard', '2023-03-08', 1, 3, 'H003'),
(4, 'Deluxe', '2023-03-12', 2, 4, 'H001'),
(5, 'Standard', '2023-03-15', 1, 5, 'H002'),
(6, 'Deluxe', '2023-03-18', 3, 6, 'H003'),
(7, 'Standard', '2023-03-20', 2, 7, 'H001'),
(8, 'Deluxe', '2023-03-23', 1, 8, 'H002'),
(9, 'Standard', '2023-03-25', 3, 9, 'H003'),
(10, 'Deluxe', '2023-03-28', 2, 10, 'H001'),
(11, 'Standard', '2023-03-30', 1, 11, 'H002'),
(12, 'Deluxe', '2023-04-02', 3, 12, 'H003'),
(13, 'Standard', '2023-04-05', 2, 13, 'H001'),
(14, 'Deluxe', '2023-04-08', 1, 14, 'H002'),
(15, 'Standard', '2023-04-11', 3, 15, 'H003');


CREATE TABLE Feedback (
  Feedback_ID int PRIMARY KEY,
  Comment varchar(255),
  Rate int,
  U_ID int,
  H_ID nvarchar(9),
  FOREIGN KEY (U_ID) REFERENCES Traveler(U_ID),
  FOREIGN KEY (H_ID) REFERENCES Hotel(H_ID)
);

INSERT INTO Feedback (Feedback_ID, Comment, Rate, U_ID, H_ID) VALUES
(1, 'Great hotel with friendly staff!', 4, 1, 'H001'),
(2, 'Loved the location, but the room was too small.', 3, 2, 'H002'),
(3, 'Excellent service and amenities. Highly recommended!', 5, 3, 'H003'),
(4, 'Average hotel, nothing special.', 2, 4, 'H004'),
(5, 'The staff was rude and unhelpful.', 1, 5, 'H005'),
(6, 'Clean and comfortable room, but noisy at night.', 3, 6, 'H001'),
(7, 'Beautiful hotel with great views.', 5, 7, 'H002'),
(8, 'The breakfast was terrible.', 2, 8, 'H003'),
(9, 'Friendly staff and convenient location.', 4, 9, 'H004'),
(10, 'The room was not clean when we arrived.', 2, 10, 'H005'),
(11, 'Amazing hotel with top-notch service.', 5, 1, 'H001'),
(12, 'The bed was uncomfortable and the room smelled musty.', 2, 2, 'H002'),
(13, 'Excellent value for the price.', 4, 3, 'H003'),
(14, 'The pool was out of order during our entire stay.', 1, 4, 'H004'),
(15, 'The hotel was difficult to find and had no parking.', 2, 5, 'H005');


CREATE TABLE Payment (
  Trans_ID int PRIMARY KEY,
  Amount varchar(25),
  Method varchar(10),
  P_Date nvarchar(10),
  P_Time nvarchar(5),
  U_ID int,
  H_ID nvarchar(9),
  FOREIGN KEY (U_ID) REFERENCES Traveler(U_ID),
  FOREIGN KEY (H_ID) REFERENCES Hotel(H_ID)
);


INSERT INTO Payment (Trans_ID, Amount, Method, P_Date, P_Time, U_ID, H_ID)
VALUES
(1, '100', 'Credit Cd', '2023-02-01', '14:00', 1, 'H001'),
(2, '50', 'Debit Card', '2023-02-05', '10:30', 2, 'H002'),
(3, '75', 'Cash', '2023-02-08', '17:45', 3, 'H003'),
(4, '150', 'Credit cd', '2023-02-10', '16:30', 4, 'H004'),
(5, '90', 'Debit Card', '2023-02-12', '11:15', 5, 'H005'),
(6, '120', 'Cash', '2023-02-14', '19:00', 6, 'H006'),
(7, '200', 'Credit cd', '2023-02-16', '13:30', 7, 'H007'),
(8, '65', 'Debit Card', '2023-02-18', '08:45', 8, 'H008'),
(9, '80', 'Cash', '2023-02-20', '21:00', 9, 'H009'),
(10, '110', 'Credit Cd', '2023-02-22', '15:30', 10, 'H010'),
(11, '95', 'Debit Card', '2023-02-24', '12:00', 11, 'H011'),
(12, '70', 'Cash', '2023-02-26', '18:15', 12, 'H012'),
(13, '130', 'Credit Cd', '2023-02-28', '09:30', 13, 'H001'),
(14, '55', 'Debit Card', '2023-03-02', '07:45', 14, 'H004'),
(15, '90', 'Cash', '2023-03-04', '22:00', 15, 'H005');




CREATE TABLE Tours_Recode (
  Recode_ID nvarchar(13) PRIMARY KEY,
  Comment varchar(255),
  Tour_Location varchar(255),
  R_Date nvarchar(10),
  R_Time nvarchar(5),
  U_ID int,
  H_ID nvarchar(9),
  FOREIGN KEY (U_ID) REFERENCES Traveler(U_ID),
  FOREIGN KEY (H_ID) REFERENCES Hotel(H_ID)
  );




  INSERT INTO Tours_Recode (Recode_ID, Comment, Tour_Location, R_Date, R_Time, U_ID, H_ID)
VALUES
('TR001', 'Amazing tour with great guides', 'Paris, France', '2023-03-01', '09:00', 1, 'H001'),
('TR002', 'Incredible experience, highly recommend', 'Tokyo, Japan', '2023-03-05', '14:00', 2, 'H002'),
('TR003', 'Beautiful scenery and knowledgeable guide', 'Machu Picchu, Peru', '2023-03-10', '11:30', 3, 'H003'),
('TR004', 'Unforgettable trip with great company', 'Santorini, Greece', '2023-03-15', '10:00', 4, 'H004'),
('TR005', 'Awe-inspiring sights and friendly guides', 'Yellowstone National Park, USA', '2023-03-20', '12:00', 5, 'H005'),
('TR006', 'Fantastic food and breathtaking views', 'Amalfi Coast, Italy', '2023-03-25', '11:30', 6, 'H006'),
('TR007', 'Excellent service and comfortable accommodations', 'Dubai, UAE', '2023-03-28', '16:00', 7, 'H007'),
('TR008', 'Well-planned itinerary and knowledgeable guide', 'Cusco, Peru', '2023-04-01', '09:30', 8, 'H008'),
('TR009', 'A must-see destination for nature lovers', 'Bali, Indonesia', '2023-04-05', '13:30', 9, 'H009'),
('TR010', 'Impressive landmarks and fascinating history', 'Athens, Greece', '2023-04-10', '10:00', 10, 'H010'),
('TR011', 'Unforgettable experience with friendly locals', 'Sydney, Australia', '2023-04-15', '15:00', 11, 'H011'),
('TR012', 'Peaceful retreat with stunning views', 'Lake Louise, Canada', '2023-04-20', '12:00', 12, 'H012');



 CREATE TABLE Travel_experience (
  Exp_ID varchar(6) PRIMARY KEY,
  T_Location varchar(255),
  Comment varchar(255),
  E_Date nvarchar(10),
  E_Time nvarchar(5),
  U_ID int,
  FOREIGN KEY (U_ID) REFERENCES Traveler(U_ID),
 );


 INSERT INTO Travel_experience (Exp_ID, T_Location, Comment, E_Date, E_Time, U_ID)
VALUES
('TE001', 'Rome, Italy', 'Loved exploring the ancient ruins', '2023-02-02', '10:00', 1),
('TE002', 'Sydney, Australia', 'Amazing views from the top of the Sydney Tower Eye', '2023-02-08', '15:00', 2),
('TE003', 'Santorini, Greece', 'The sunset in Oia was breathtaking', '2023-02-15', '18:30', 3),
('TE004', 'New York City, USA', 'Times Square was so lively and exciting', '2023-02-22', '20:00', 4),
('TE005', 'Rio de Janeiro, Brazil', 'The Christ the Redeemer statue was stunning', '2023-03-01', '13:00', 5),
('TE006', 'London, UK', 'The British Museum was incredible', '2023-03-08', '11:00', 6),
('TE007', 'Amsterdam, Netherlands', 'The canals were beautiful and relaxing', '2023-03-15', '16:30', 7),
('TE008', 'Bangkok, Thailand', 'The street food was amazing and affordable', '2023-03-22', '19:00', 8),
('TE009', 'Barcelona, Spain', 'The Sagrada Familia was awe-inspiring', '2023-03-29', '10:30', 9),
('TE010', 'Cape Town, South Africa', 'The views from Table Mountain were breathtaking', '2023-04-05', '12:00', 10),
('TE011', 'Dubai, UAE', 'The Burj Khalifa was an incredible sight', '2023-04-12', '14:00', 11),
('TE012', 'Hong Kong, China', 'The skyline from Victoria Peak was unforgettable', '2023-04-19', '17:00', 12),
('TE013', 'Paris, France', 'The Eiffel Tower was as beautiful as I imagined', '2023-04-26', '09:30', 13),
('TE014', 'Rio de Janeiro, Brazil', 'The beaches were gorgeous and lively', '2023-05-03', '11:00', 14),
('TE015', 'Venice, Italy', 'The gondola ride was a romantic experience', '2023-05-10', '18:00', 15);






