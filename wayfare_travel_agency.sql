-- Create Database
Create Database wayfare_travel_agency;

-- Create Customer Table
Create Table customer(
 customer_id	  Varchar	(15)	Not Null,
 customer_name	Varchar	(30)	Not Null,
 phone_number	  Varchar	(20)	Not Null,
 email	        Varchar	(50)	Not Null,
 address	      Varchar	(90)	Not Null,
 Primary Key (customer_id)
 );

desc customer;

-- Insert Data Into Customer Table
Insert Into customer Values
('C041',	'Wendell Keith',	'+65 1109 8765',	'wendell.keith@email.com',	'20 Cecil Street, Singapore'),
('C042',	'Michael Smith',	'+65 8765 4321',	'michael.smith@email.com',	'71 Robinson Road, Singapore'),
('C043',	'David Johnson',	'+65 7654 3210',	'david.johnson@email.com',	'8 Shenton Way, Singapore'),
('C044',	'Jennifer Brown',	'+65 6543 2109',	'jennifer.brown@email.com',	'42 Alexandra Road, Singapore'),
('C045',	'Alexander Lee',	'+65 5432 1098',	'alexander.lee@email.com',	'10 Collyer Quay, Singapore'),
('C046',	'Ying Li',	      '+65 4432 1098',	'ying.li@email.com',	      '6 Raffles Quay, Singapore'),
('C047',	'Daniel White',	  '+65 9987 6543',	'daniel.white@email.com',	  '20 McCallum Street, Singapore');

Select * from customer;

-- Create Staff Table
Create Table staff(
 staff_id	    Varchar	(15)	Not Null,
 staff_name	  Varchar	(30)	Not Null,
 phone_number	Varchar	(20)	Not Null,
 email	      Varchar	(50)	Not Null,
 address	    Varchar	(90)	Not Null,
 salary	      Int		        Not Null,
 Primary Key (staff_id)
 );

desc staff;

-- Insert Data Into Staff Table
Insert Into staff Values
('S031',	'Emma Anderson',	'+65 3210 9876',	'emma.anderson@gmail.com',	'10 Anson Road, Singapore',	      3900),
('S032',	'Emily Tan',	    '+65 1098 7654',	'emily.tan@email.com',	    '60 Paya Lebar Road, Singapore',	3300),
('S033',	'Brian Lim',	    '+65 3321 0987',	'brian.lim@email.com',	    '1 North Bridge Road, Singapore',	4000),
('S034',	'Isabella Chan',	'+65 5543 2091',	'isabella.chan@email.com',  '3 Church Street, Singapore',	    4200),
('S035',	'Wei Chen',	      '+65 9653 4947',	'wei.chen@email.com',	      '10 Hoe Chiang Road, Singapore',	3800),
('S036',	'John Lim',	      '+65 6654 3210',	'john.lim@email.com',	      '1 George Street, Singapore',	    4000),
('S037',	'Anita Rajan',	  '+65 8234 5678',	'anita.rajan@gmail.com',	  '36 Robinson Road, Singapore',	  3200);

Select * from staff;

-- Create Payment_Method Table
Create Table payment_method(
 payment_method_id	Varchar	(15)	Not Null,
 payment_method	    Varchar	(20)	Not Null Check (payment_method In ('PayPal','Credit Card','Debit Card','Bank Transfer')),
 payment_date	      Date		      Not Null,
 payment_time	      Time		      Not Null,
 Primary Key (payment_method_id)
 );

desc payment_method;

-- Insert Data Into Payment_Method Table
Insert Into payment_method Values
('PM021',	'PayPal',	        '2023-06-15',	'15:00:00'),
('PM022',	'Credit Card',	  '2023-06-29',	'09:30:00'),
('PM023',	'Debit Card',	    '2023-07-01',	'17:10:00'),
('PM024',	'Bank Transfer',	'2023-07-18',	'11:00:00');

Select * from payment_method;

-- Create Package_Type Table
Create Table package_type(
 package_type_id	Varchar	(15)	Not Null,
 package_type	    Varchar	(30)	Not Null,
 departure_date	  Date		      Not Null,
 departure_time	  Time		      Not Null Check (departure_time < arrival_time),
 arrival_date	    Date		      Not Null,
 arrival_time	    Time		      Not Null Check (departure_time < arrival_time),
 Primary Key (package_type_id)
 );

desc package_type;

-- Insert Data Into Package_Type Table
Insert Into package_type Values
('PT001',	'Romantic Escape',	    '2023-06-18',	 '09:00:00',	 '2023-06-18',	'12:00:00'),
('PT002',	'Beach Escape',	        '2023-07-01',	 '13:30:00',   '2023-07-01',	'15:30:00'),
('PT003',	'Cultural Immersions',	'2023-07-05',	 '07:40:00',	 '2023-07-05',	'08:00:00'),
('PT004',	'City Explorer',	      '2023-07-20',	 '11:00:00',   '2023-07-20',	'19:00:00'),
('PT005',	'Family Vacation',	    '2023-08-15',	 '08:00:00',	 '2023-08-15',	'08:45:00'),
('PT006',	'Luxury Travel',	      '2023-09-01',	 '09:00:00',	 '2023-09-01',	'14:00:00');

Select * from package_type;

-- Create Hotel Table
Create Table hotel(
 hotel_id	      Varchar	(15)	Not Null,
 hotel_name	    Varchar	(40)	Not Null,
 location	      Varchar	(90)	Not Null,
 price	        Int		        Not Null,
 special_offer	Varchar	(90)	Not Null,
 room_type	    Varchar	(30)	Not Null,
 Primary Key (hotel_id)
 );

desc hotel;

-- Insert Data Into Hotel Table
Insert Into hotel Values
('H511',	'Ayana Resort and Spa',	'Jimbaran, Bali',	1200,	'Romantic dinner packages and spa treatments',	'Ocean View Pool Villa'),
('H512',	'Penang Palms Resort',	  'Batu Ferringhi',	80,	'20% off for 3+ nights',	'Sea View Room'),
('H513',	'ST Signature Chinatown',	'273A South Bridge Road, Singapore',	500,	'Free bike rental',	'Single Pod'),
('H514',  'Spice Hotel','456 Race Course Road, Little India, Singapore',  150,
 '10% discount on food and beverage at the hotel restaurant', 'Executive'),
('H515',	'Mount Fuji Inn',	'789 Shinjuku Avenue',	180,	'10% discount for extended stays',	'Superior'),
('H516',  'The Nai Harn','Nai Harn Beach, Phuket',	1000, 'Sunset yacht cruise and romantic beachfront dining',
 'Ocean View Pool Villa'),
('H517',  'Resorts World Sentosa - Festive Hotel', 'Sentosa Gateway, Sentosa Island, Singapore', 1200,
 'Kid-friendly amenities and activities','Family Room'),
('H518',	'Marina Bay Sands',	'10 Bayfront Avenue, Singapore',	1000,	'Infinity pool overlooking the city skyline',	'Family Suite'),
('H519',  'Resorts World Sentosa - Hard Rock Hotel','Resorts World Sentosa, Sentosa Island, Singapore', 1300,
 'Easy access to Universal Studios','Family Suite'),
('H520',  'One&Only Reethi Rah','North Male Atoll, Maldives', 1500, 'Private beachfront villas and exclusive spa experiences',
 'Grand Water Villa with Pool');
Select * from hotel;

-- Create Transportation Table
Create Table transportation(
 transportation_id	  Varchar	(15)	Not Null,
 transportation_type	Varchar	(20)	Not Null,
 carrier	            Varchar	(50)	Not Null,
 duration	            Varchar	(30)	Not Null,
 seat_type	          Varchar	(30)	Not Null,
 price                Int           Not Null,
 Primary Key (transportation_id)
 );

desc transportation;

-- Insert Data Into Transportation Table
Insert Into transportation Values
('T511',  'Flight',	 'Singapore Airlines',	'3 hours',	   'Business',	   1200),
('T512',	'Flight',	 'Singapore Airlines',	'2 hours',	   'Business',	   1000),
('T513',	'Train',	 'SMRT Trains',	        '20 minutes',	 'Regular',	     60),
('T514',	'Taxi',	   'ComfortDelGro',	      '20 minutes',	 'Standard',	   62),
('T515',	'Flight',	 'Singapore Airlines',	'8 hours',	   'First Class',	 2900),
('T516',	'Flight',	 'Singapore Airlines',	'3 hours',	   'Business',	   1300),
('T517',	'Bus',	   'SBS Transit',	        '45 minutes',	 'Regular',	     100),
('T518',	'Taxi',	   'ComfortDelGro',	      '45 minutes',	 'Standard',	   130),
('T519',	'Train',	 'SMRT Trains',	        '45 minutes',	 'Standard',	   120),
('T520',	'Flight',	 'Singapore Airlines',	'5 hours',	   'First Class',	 2500);

Select * from transportation;

-- Create Booking Table
Create Table booking(
 booking_id	        Varchar	(15)	Not Null,
 booking_date	      Date		      Not Null,
 booking_time	      Time		      Not Null,
 customer_id	      Varchar	(15)	Not Null,
 staff_id	          Varchar	(15)	Not Null,
 payment_method_id	Varchar	(15)	Not Null,
 Primary Key (booking_id),
 Foreign Key (customer_id) references customer(customer_id),
 Foreign Key (staff_id) references staff(staff_id),
 Foreign Key (payment_method_id) references payment_method(payment_method_id)
 );

desc booking;

-- Insert Data Into Booking Table
Insert Into booking Values
('B211',	'2023-06-15',	'10:00:00',	  'C041',	'S031',	'PM021'),
('B212',	'2023-06-23',	'09:00:00',	  'C042',	'S031',	'PM021'),
('B213',	'2023-06-23',	'17:00:00',	  'C042',	'S032',	'PM021'),
('B214',	'2023-06-29',	'09:30:00',	  'C043',	'S033',	'PM022'),
('B215',	'2023-07-01',	'17:10:00', 	'C044',	'S033',	'PM023'),
('B216',	'2023-07-18',	'11:00:00', 	'C045',	'S034',	'PM023'),
('B217',	'2023-07-18',	'15:30:00', 	'C045',	'S035',	'PM024'),
('B218',	'2023-08-12',	'12:30:00', 	'C046',	'S036',	'PM022'),
('B219',	'2023-08-29',	'13:00:00', 	'C047',	'S036',	'PM021'),
('B220',	'2023-08-29',	'17:50:00', 	'C047',	'S037',	'PM024');

Select * from booking;

-- Create Package Table
Create Table package(
 package_id	      Varchar	(15)	Not Null,
 destination	    Varchar	(60)	Not Null,
 duration	        Varchar	(25)	Not Null Check (duration >= 1 And duration <= 30),
 price	          Int		        Not Null,
 package_type_id	Varchar	(15)	Not Null,
 Primary Key (package_id),
 Foreign Key (package_type_id) references package_type(package_type_id)
 );

desc package;

-- Insert Data Into Package Table
Insert Into package Values
('P011',	'Bali, Indonesia',	              '4 days',	  1000,	 'PT001'),
('P012',	'Penang, Malaysia',	              '6 days',	  1200,	 'PT002'),
('P013',	'Chinatown, Singapore',	          '2 days',	  300,	 'PT003'),
('P014',	'Little India, Singapore',	      '4 days',	  1800,	 'PT003'),
('P015',	'Tokyo, Japan',	                  '10 days',	1500,	 'PT004'),
('P016',	'Phuket, Thailand',	              '5 days',	  800,	 'PT001'),
('P017',	'Sentosa Island, Singapore',	    '2 days',	  800,	 'PT005'),
('P018',	'Gardens by the Bay, Singapore',	'2 days',	  400,	 'PT005'),
('P019',	'Universal Studios Singapore',	  '2 days',	  200,	 'PT005'),
('P020',	'Maldives',                     	'8 days',	  3000,	 'PT006');

Select * from package;

-- Create Booking_Package Table
Create Table booking_package(
 booking_id	 Varchar	(15)	Not Null,
 package_id	 Varchar	(15)	Not Null,
 Primary Key (booking_id, package_id),
 Foreign Key (booking_id) references booking(booking_id),
 Foreign Key (package_id) references package(package_id)
 );

desc booking_package;

-- Insert Data Into Booking_Package Table
Insert Into booking_package Values
('B211',	'P011'),
('B212',	'P011'),
('B213',	'P012'),
('B213',	'P013'),
('B214',	'P011'),
('B215',	'P014'),
('B215',	'P015'),
('B216',	'P015'),
('B217',	'P016'),
('B217',	'P013'),
('B218',	'P017'),
('B218',	'P018'),
('B219',	'P018'),
('B220',	'P019'),
('B220',	'P020');
Select * from booking_package;

-- Create Hotel_Package Table
Create Table hotel_package(
 hotel_id	   Varchar	(15)	Not Null,
 package_id	 Varchar	(15)	Not Null,
 Primary Key (hotel_id, package_id),
 Foreign Key (hotel_id) references hotel(hotel_id),
 Foreign Key (package_id) references package(package_id)
 );

desc hotel_package;

-- Insert Data Into Hotel_Package Table
Insert Into hotel_package Values
('H511',	'P011'),
('H512',	'P012'),
('H513',	'P013'),
('H514',	'P014'),
('H515',	'P015'),
('H516',	'P016'),
('H517',	'P017'),
('H518',	'P018'),
('H519',	'P019'),
('H520',	'P020');

Select * from hotel_package;

-- Create Transportation_Package Table
Create Table transportation_package(
 transportation_id	 Varchar	(15)	Not Null,
 package_id	         Varchar	(15)	Not Null,
 Primary Key (transportation_id, package_id),
 Foreign Key (transportation_id) references transportation(transportation_id),
 Foreign Key (package_id) references package(package_id)
 );

desc transportation_package;

-- Insert Data Into Transportation_Package Table
Insert Into transportation_package Values
('T511',	'P011'),
('T512',	'P012'),
('T513',	'P013'),
('T514',	'P014'),
('T515',	'P015'),
('T516',	'P016'),
('T517',	'P017'),
('T518',	'P018'),
('T519',	'P019'),
('T520',	'P020');

Select * from transportation_package;


-- Count the number of customers who made bookings using PayPal.
Select  Count(c.customer_id) As Num_Of_Customers, pm.payment_method As Payment_Method
From    booking b, customer c, payment_method pm
Where   b.customer_id=c.customer_id
And     b.payment_method_id=pm.payment_method_id
And     pm.payment_method = 'PayPal';


-- Number of bookings made by each customer who booked package that start with 'Bali'.
Select   c.customer_name As Customer_Name, Count(b.booking_id) As Total_Bookings, p.destination As Destination
From     customer c, booking b, package p, booking_package bp
Where    b.booking_id=bp.booking_id
And      p.package_id=bp.package_id
And      c.customer_id=b.customer_id
And      p.destination Like 'Bali%'
Group by c.customer_name;


-- Find the minimum price among all packages booked by staff members earning less than 3500.
Select MIN(p.price) AS Min_Package_Price, p.destination As Destination
From   staff s, booking b, package p, booking_package bp
Where  b.booking_id=bp.booking_id
And    p.package_id=bp.package_id
And    s.staff_id=b.staff_id
And    s.salary < 3500;


-- What is the average price of hotel paid with each payment method.
Select   pm.payment_method As Payment_Method, Avg(h.price) AS Average_Hotel_Price
From     payment_method pm, booking b, package p, booking_package bp, hotel h, hotel_package hp
Where    pm.payment_method_id=b.payment_method_id
And      b.booking_id=bp.booking_id
And      p.package_id=bp.package_id
And      h.hotel_id=hp.hotel_id
And      p.package_id=hp.package_id
Group by pm.Payment_Method;


-- Which staff member made the booking for both "Tokyo, Japan" and "Phuket, Thailand".
Select   s.staff_id As Staff_ID, s.staff_name As Staff_Name, b.booking_id As Booking_ID, p.destination As Destination
From     staff s, booking b, package p, booking_package bp
Where    s.staff_id=b.staff_id
And      b.booking_id=bp.booking_id
And      p.package_id=bp.package_id
And      p.destination In ('Tokyo, Japan', 'Phuket, Thailand')
Group by s.staff_id;


-- Calculate the total revenue generated from bookings made in July 2023.
Select Sum(p.price) As Total_Revenue
From   booking_package bp, booking b, package p
Where  bp.booking_id=b.booking_id
And    bp.package_id=p.package_id
And    b.booking_date Between '2023-07-01' And '2023-07-31';



-- Which customer booked the maximum price of transportation.
Select c.customer_name As Customer_Name, t.price As Maximum_Price, t.transportation_type As Transportation_Type
From   customer c, booking b, package p, booking_package bp, transportation t, transportation_package tp
Where  t.transportation_id=tp.transportation_id
And    p.package_id=tp.package_id
And    b.booking_id=bp.booking_id
And    p.package_id=bp.package_id
And    c.customer_id=b.customer_id
And    t.price = (Select Max(t.price) From transportation t);


-- Find staff members who made more bookings than the average number of bookings.
Select   s.staff_id As Staff_ID, s.staff_name As Staff_Name, Count(b.booking_id) AS Number_Of_Booking
From     staff s, booking b
Where    b.staff_id=s.staff_id
Group by s.staff_id
Having   Count(b.booking_id) > (Select Avg(Number_Of_Booking) From (Select   Count(b.booking_id) As Number_Of_Booking 
                                                                    From     staff s, booking b
                                                                    Where    b.staff_id=s.staff_id
                                                                    Group by s.staff_id) As Average_Bookings);


-- Find the total price for each customer include hotel price and transportation price.
Select c.customer_id As Customer_ID, c.customer_name As Customer_Name, Sum(p.price) + Sum(h.price) + Sum(t.price) As Total_Price
From   customer c, booking b, package p, booking_package bp, transportation t, transportation_package tp, hotel h, hotel_package hp
Where  c.customer_id=b.customer_id
And    b.booking_id=bp.booking_id
And    p.package_id=bp.package_id
And    h.hotel_id=hp.hotel_id
And    p.package_id=hp.package_id
And    t.transportation_id=tp.transportation_id
And    p.package_id=tp.package_id
Group by c.customer_id;


-- Find the average duration of packages offered by hotels with a special offer.
Select Avg(p.duration) As Average_Duration
From   package p, hotel h, hotel_package hp
Where  h.hotel_id=hp.hotel_id
And    p.package_id=hp.package_id
And    h.special_offer Is Not Null;


