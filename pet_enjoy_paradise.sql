
Create Database Pet_Enjoy_Paradise;

Create Table PetOwner
(PetOwnerID	  Char	 (15)	Primary Key,
 PetOwnerName Varchar(30)	Not Null,
 Email	      Varchar(50)	Not Null,
 PhoneNo	    Varchar(20)	Not Null,
 Address	    Varchar(50)	Not Null);

Insert Into PetOwner Values
('PO001',	'Wendell Keith',	 'wendell.keith@email.com',	  '+65 1109 8765',	'456 Marina Bay Sands, Singapore'),
('PO002',	'Michael Smith',	 'michael.smith@email.com',	  '+65 8765 4321',	'789 Sentosa Cove, Singapore'),
('PO003',	'David Johnson',	 'david.johnson@email.com',	  '+65 7654 3210',	'234 Raffles Place, Singapore'),
('PO004',	'Jennifer Brown',	 'jennifer.brown@email.com',	'+65 6543 2109',	'567 Orchard Road, Singapore'),
('PO005',	'Alexander Lee',	 'alexander.lee@email.com',	  '+65 5432 1098',	'890 Clarke Quay, Singapore'),
('PO006',	'Ethan Moore',	   'ethan.moore@email.com',	    '+65 1098 7654',	'123 Main Street, Singapore'),
('PO007',	'Benjamin Harris', 'benjamin.harris@email.com',	'+65 3321 0987',	'234 Woodlands Drive, Singapore');

Create Table Vet
(VetID	            Char	(10)	Primary Key,
 VetName	          Varchar(30)	Not Null,
 PhoneNo	          Varchar(20)	Not Null,
 Email	            Varchar(50)	Not Null,
 TypeOfWorkingTime	Varchar(30)	Not Null,
 WorkingHour	      Varchar(30)	Not Null,
 WorkingDay	        Varchar(40)	Not Null,
 Specialization	    Varchar(50)	Not Null);

Insert Into Vet Values
('V001',	'Dr. Sarah Tan',	    '+65 9123 4567', 'dr.sarahtan@email.com',	     'Standard Full-Time',	'9:00 AM to 5:00 PM',	 
 'Monday to Friday',	            'Emergency and Critical Care Specialist'),
('V002',	'Dr. John Lim',	      '+65 6654 3210', 'dr.johnlim@email.com',	     'Overnight',	          '10:00 PM to 6:00 AM', 
 'Three days a week',	            'Avian Veterinarian'),
('V003',	'Dr. Emily Lee',	    '+65 7345 6789', 'dr.emilylee@email.com',	     'Part time morning',	  '8:00 AM to 12:00 AM', 
 'Monday, Wednesday, and Friday',	'Dentistry Specialist'),
('V004',	'Dr. Olivia Chan',	  '+65 6456 7890', 'dr.oliviachan@email.com',	   'Standard Full-Time',	'9:00 AM to 5:00 PM',	 
 'Monday to Friday',	            'Rodent Veterinarian'),
('V005',	'Dr. Jonathan Wong',	'+65 6895 2345', 'dr.jonathanwong@email.com',	 'Part time afternoon', '1:00 PM to 5:00 PM',	 
 'Tuesday and Thursday',	        'Orthopedic Specialist'),
('V006',	'Dr. Wei Min',	      '+65 9987 6543', 'dr.weimin@gmail.com',	       'Weekend',	            '10:00 AM to 4:00 PM', 
 'Saturday and Sunday',	          'Small Animal Veterinarian'),
('V007',	'Dr. Emma Anderson',	'+65 3210 9876', 'dr.emmaanderson@gmail.com',	 'Part time evening',	  '6:00 PM to 10:00 PM', 
 'Monday to Friday',	            'Dermatology Specialist'),
('V008',	'Dr. Anita Rajan',	  '+65 8234 5678', 'dr.anitarajan@gmail.com',	   'Part time morning',	  '8:00 AM to 12:00 AM', 
 'Monday, Wednesday, and Friday',	'Exotic Animal Veterinarian');

Create Table VaccinationRecord
(VaccinationID	        Char	 (15)	Primary Key,
 VaccineName	          Varchar(30)	Not Null,
 DateOfVaccination	    Date		    Not Null,
 NextVaccinationDueDate	Date		    Not Null);

Insert Into VaccinationRecord Values
('VA001',	'Distemper',	          '2022/1/3',	  '2023/1/3'),
('VA002',	'Rabies',	              '2022/1/15',	'2023/1/15'),
('VA003',	'Canine Leptospirosis', '2022/2/8',	  '2023/2/8'),
('VA004',	'Bordetella',	          '2022/2/11',	'2023/2/11'),
('VA005',	'Avian Polyomavirus',   '2022/3/12',	'2023/3/12'),
('VA006',	'Feline Leukemia',	    '2022/4/19',	'2023/4/19'),
('VA007',	'Parvovirus',	          '2022/6/7',	  '2023/6/7'),
('VA008',	'Canine Influenza',	    '2022/6/16',	'2023/6/16');

Create Table StaffType
(StaffTypeID	  Char	(15)	Primary Key,
 Role	          Varchar(50)	Not Null,
 Certification	Varchar(70)	Not Null,
 Salary	        Varchar(25)	Not Null);

Insert Into StaffType Values
('ST001',	  'Pet Care Attendant',	              'None required, but need experience',	             '$12 per hour'),
('ST002',	  'Pet Groomer',	                    'Certified Professional Groomer (CPG)',	           '$18 per hour'),
('ST003',	  'Pet Trainer',	                    'Certified Professional Dog Trainer (CPDT)',	     '$20 per hour'),
('ST004',	  'Marketing Coordinator',	          'None required, but need experience',	             '$18 per hour'),
('ST005',	  'Playgroup Supervisor',	            'Certified in Animal Behavior and Socialization',	 '$16 per hour'),
('ST006',	  'Customer Service Representative',	'None required, but need experience',	             '$14 per hour'),
('ST007',	  'Security Officer',	                'Security guard certification',	                   '$16 per hour'),
('ST008',	  'Receptionist',	                    'None required, but need experience',	             '$14 per hour');

Create Table Service
(ServiceID	      Char	(15)	Primary Key,
 ServiceName	    Varchar(35)	Not Null,
 ServiceDate	    Date	    	Not Null,
 ServiceDuration	Varchar(20)	Not Null,
 Cost	            Varchar(20)	Not Null);

Insert Into Service Values
('SE001',	  'Veterinary Checkup',	        '2022/1/3',	  '30 minutes',	    '$45'),
('SE002',	  'Pet Spa Package',	          '2022/2/18',	'1 hour',	        '$75'),
('SE003',	  'Specialized Diet Feeding',	  '2022/3/5',	  'Per meal',	      '$5'),
('SE004',	  'Pet Daycare (Half Day)',	    '2022/4/22',	'4 hours', 	      '$20'),
('SE005',	  'Pet Grooming (Small Dogs)',	'2022/5/2',	  'Varies',	        '$40 and up'),
('SE006',	  'Pet Photography Session',	  '2022/5/20',	'1 hour',	        '$50'),
('SE007',	  'Pet Daycare (Full Day)',	    '2022/6/19',	'8 hours',	      '$30'),
('SE008',	  'Pet Birthday Party Package',	'2022/6/30',	'2 hours',	      '$75'),
('SE009',	  'Dog Training',	              '2022/7/8',	  '6-week course',	'$150'),
('SE010',	  'Overnight Boarding',	        '2022/7/14',	'Per night',	    '$35 and up');

Create Table Pet
(PetID	        Char	(10)	Primary Key,
 PetName	      Varchar(15)	Not Null,
 Species	      Varchar(15)	Not Null,
 Breed	        Varchar(25)	Not Null,
 Age	          Varchar(15)	Not Null,
 Gender	        Varchar(10)	Not Null,
 BehaviorTraits	Varchar(30)	Not Null,
 Allergies	    Varchar(30)	Not Null,
 PetOwnerID	    Char	(15)	Not Null,
 Foreign Key(PetOwnerID) References PetOwner(PetOwnerID));

Insert Into Pet Values
('P001', 'Max',	    'Dog',	   'Labrador Retriever', '3 years',	  'Male',	  'Friendly, Obedient',	   'Sensitive to wheat', 'PO001'),
('P002', 'Luna',	  'Cat',	   'Persian',	           '2 years',	  'Female', 'Curious, Affectionate', 'None',	             'PO002'),
('P003', 'Eboo',	  'Dog',	   'Siberian Husky',	   '9 months',	'Male',	  'Energetic, Talkative',	 'Flea bite',	         'PO003'),
('P004', 'Zoey',	  'Parrot',	 'African Grey',	     '1 year',	  'Female', 'Social, Intelligent',	 'None',	             'PO004'),
('P005', 'Jack',	  'Hamster', 'Syrian',	           '6 months',	'Male',	  'Playful, Friendly',	   'Dusty environment',  'PO004'),
('P006', 'Rocky',	  'Cat',	   'Maine Coon',	       '10 months', 'Male',	  'Active, Intelligent',	 'Sensitive to beef',  'PO005'),
('P007', 'Daisy',	  'Dog',	   'Yorkshire Terrier',  '1 year',	  'Female', 'Affectionate, Playful', 'Flea bite',	         'PO006'),
('P008', 'Whisker', 'Hamster', 'Tibetan Dwarf',	     '5 months',	'Male',	  'Gentle, Shy',	         'None',	             'PO006'),
('P009', 'Ellie',	  'Cat',	   'Siamese',	           '1 year',	  'Female', 'Talkative, Social',	   'Sensitive to bacon', 'PO006'),
('P010', 'Bruno',	  'Dog',	   'Chihuahua',	         '7 months',	'Male',	  'Curious, Temperament',	 'None',	             'PO007');

Create Table PetMedicalAppointment
(AppointmentID	      Char	(10)	Primary Key,
 AppointmentDate	    Date		    Not Null,
 AppointmentTime	    Varchar(15)	Not Null,
 PurposeOfAppointment	Varchar(50)	Not Null,
 PetID	              Char	(10)	Not Null,
 Foreign Key(PetID) References Pet(PetID),
 VetID	              Char	(10)	Not Null,
 Foreign Key(VetID) References Vet(VetID),
 VaccinationID	      Char	(15)	Not Null,
 Foreign Key(VaccinationID) References VaccinationRecord(VaccinationID));

Insert Into PetMedicalAppointment Values
('A001',	'2022/1/1',	 '2:00 PM',	 'Vaccinate and Skin Condition Check',	  'P001',	'V001',	'VA001'),
('A002',	'2022/1/8',	 '4:30 PM',	 'Vaccinate and Dental Cleaning',	        'P002',	'V001',	'VA001'),
('A003',	'2022/1/14', '1:00 PM',	 'Nutrition Consultation and Vaccinate',	'P003',	'V002',	'VA002'),
('A004',	'2022/2/6',	 '9:40 AM',	 'Vaccinate and Annual Wellness',	        'P004',	'V003',	'VA003'),
('A005',	'2022/2/10', '1:00 PM',	 'Vaccinate and Parasite Prevention',	    'P005',	'V004',	'VA004'),
('A006',	'2022/3/10', '11:30 AM', 'Weight Management and Vaccinate',	      'P005',	'V004',	'VA005'),
('A007',	'2022/3/16', '4:00 PM',	 'Vaccinate and Behavioral Consultation', 'P006',	'V005',	'VA005'),
('A008',	'2022/4/18', '1:30 PM',	 'Allergy Evaluation and Vaccinate',	    'P007',	'V006',	'VA006'),
('A009',	'2022/5/5',	 '8:00 AM',	 'Heartworm Testing and Vaccinate',	      'P008',	'V007',	'VA006'),
('A010',	'2022/6/5',	 '5:30 PM',	 'Vaccinate and Vision Check',	          'P008',	'V007',	'VA007'),
('A011',	'2022/6/14', '8:40 AM',	 'Bloodwork Testing and Vaccinate',	      'P009',	'V008',	'VA008'),
('A012',	'2022/7/3',	 '11:00 AM', 'Injury Assessment and Vaccinate',	      'P010',	'V008',	'VA008');

Create Table OnlineBooking
(BookingID	  Char	(10)	Primary Key,
 BookingDate	Date		    Not Null,
 BookingTime	Varchar(15)	Not Null,
 PetOwnerID	  Char	(15)	Not Null,
 Foreign Key(PetOwnerID) References PetOwner(PetOwnerID));

Insert Into OnlineBooking Values
('B001',	'2022/1/2',	  '10:00 AM',	'PO001'),
('B002',	'2022/2/16',	'2:15 PM',	'PO002'),
('B003',	'2022/3/4',	  '4:00 PM',	'PO002'),
('B004',	'2022/4/20',	'9:10 AM',	'PO003'),
('B005',	'2022/5/1',	  '11:00 AM',	'PO004'),
('B006',	'2022/5/19',	'6:00 PM',	'PO005'),
('B007',	'2022/6/17',	'10:45 AM',	'PO006'),
('B008',	'2022/6/29',	'2:30 PM',	'PO007'),
('B009',	'2022/7/5',	  '9:00 PM',	'PO007'),
('B010',	'2022/7/13',	'11:25 AM',	'PO007');

Create Table Staff
(StaffID	          Char	(10)	Primary Key,
 StaffName	        Varchar(30)	Not Null,
 TypeOfWorkingTime	Varchar(30)	Not Null,
 WorkingHour	      Varchar(30)	Not Null,
 WorkingDay	        Varchar(40)	Not Null,
 PhoneNo	          Varchar(20)	Not Null,
 Email	            Varchar(50)	Not Null,
 StaffTypeID	      Char	(15)	Not Null,
 Foreign Key(StaffTypeID) References StaffType(StaffTypeID));

Insert Into Staff Values
('S001', 'Emily Tan',	    'Standard full time',	 '8:00 AM to 5:00 PM',	'Monday to Friday',	   '+65 5543 2091',	
 'emily.tan@email.com',	   'ST001'),
('S002', 'Jane Smith',	  'Part time evening',	 '5:00 PM to 9:00 PM',	'Monday to Friday',	   '+65 9653 4947',	
 'jane.smith@email.com',	   'ST001'),
('S003', 'Brian Lim',	    'Weekend',	           '8:00 AM to 6:00 PM',	'Saturday and Sunday', '+65 7285 6139',	
 'brian.lim@email.com',	   'ST002'),
('S004', 'Isabella Chan', 'Part time morning',	 '7:00 AM to 11:00 AM',	'Monday to Friday',	   '+65 6437 1990',	
 'isabella.chan@email.com', 'ST003'),
('S005', 'Amy Hernandez',	'Overnight',	         '9:00 PM to 6:00 AM',	'Three nights a week', '+65 6994 2148',	
 'amy.hernandez@email.com', 'ST004'),
('S006', 'Lee Heng',	    'Part time afternoon', '12:00 AM to 4:00 PM',	'Monday to Friday',	   '+65 2210 9876',	
 'lee.heng@email.com',	     'ST005'),
('S007', 'Ava Garcia',	  'Standard full time',	 '8:00 AM to 5:00 PM',	'Monday to Friday',	   '+65 9760 7031',	
 'ava.garcia@email.com',	   'ST005'),
('S008', 'Ying Li',	      'Part time morning',	 '7:00 AM to 11:00 AM',	'Monday to Friday',	   '+65 4432 1098',	
 'ying.li@email.com',	     'ST006'),
('S009', 'Daniel White',	'Part time evening',	 '5:00 PM to 9:00 PM',	'Monday to Friday',	   '+65 8794 5618',	
 'daniel.white@email.com',	 'ST007'),
('S010', 'Wei Chen',	    'Overnight',	         '9:00 PM to 6:00 AM',	'Three nights a week', '+65 3688 9101',	
 'wei.chen@email.com',	     'ST008');

Create Table OnlineBooking_Staff
(BookingID	Char	(10)	Not Null,
 Foreign Key(BookingID) References OnlineBooking(BookingID),
 StaffID	  Char	(10)	Not Null,
 Foreign Key(StaffID) References Staff(StaffID),
 Primary Key(BookingID,StaffID));

Insert Into OnlineBooking_Staff Values
('B001',	'S001'),
('B002',	'S002'),
('B003',	'S003'),
('B004',	'S004'),
('B005',	'S005'),
('B006',	'S006'),
('B007',	'S007'),
('B008',	'S008'),
('B009',	'S009'),
('B010',	'S010');

Create Table OnlineBooking_Service
(BookingID	Char	(10)	Not Null,
 Foreign Key(BookingID) References OnlineBooking(BookingID),
 ServiceID	Char	(15)	Not Null,
 Foreign Key(ServiceID) References Service(ServiceID),
 Primary Key(BookingID,ServiceID));

Insert Into OnlineBooking_Service Values
('B001',	'SE001'),
('B002',	'SE002'),
('B003',	'SE003'),
('B004',	'SE004'),
('B005',	'SE005'),
('B006',	'SE006'),
('B007',	'SE007'),
('B008',	'SE008'),
('B009',	'SE009'),
('B010',	'SE010');

Create Table Payment
(PaymentID	    Char	(15)	Primary Key,
 PaymentAmount	Varchar(10)	Not Null,
 PaymentMethod	Varchar(20)	Not Null,
 PaymentDate	  Date	    	Not Null,
 PetOwnerID	    Char	(15)	Not Null,
 Foreign Key(PetOwnerID) References PetOwner(PetOwnerID));

Insert Into Payment Values
('PA001',	'$50',	'Credit Card',	 '2022/1/3',	'PO001'),
('PA002',	'$120',	'PayPal',	       '2022/1/11',	'PO002'),
('PA003',	'$35',	'Bank Transfer', '2022/1/19',	'PO003'),
('PA004',	'$260',	'Debit Card',	   '2022/2/8',	'PO004'),
('PA005',	'$45',	'Cash',	         '2022/2/12',	'PO004'),
('PA006',	'$90',	'Apple Pay',	   '2022/3/17',	'PO005'),
('PA007',	'$110',	'Google Pay',	   '2022/3/20',	'PO006'),
('PA008',	'$30',	'GrabPay',	     '2022/3/25',	'PO007');

-- Select all online bookings that the pet owner 'PO007' make and which services this pet owner take.
Select ob_se.*, po.PetOwnerID, po.PetOwnerName, ob.BookingDate, ob.BookingTime, se.ServiceName
From   PetOwner as po, OnlineBooking as ob, Service as se, OnlineBooking_Service as ob_se
Where  po.PetOwnerID=ob.PetOwnerID
And    ob.BookingID=ob_se.BookingID
And    ob_se.ServiceID=se.ServiceID
And    po.PetOwnerID='PO007';

-- Select all 'StaffID' and 'StaffName' who work as 'Playgroup Supervisor'.
Select s.StaffID, s.StaffName, st.StaffTypeID, st.Role
From   Staff as s, StaffType as st 
Where  s.StaffTypeID=st.StaffTypeID
And    st.Role='Playgroup Supervisor';

-- Select all pet owner and their pet names in ascending order by the payment amount between '$30' and '$90'.
Select   po.PetOwnerID, po.PetOwnerName, p.PetID, p.PetName, pa.PaymentID, pa.PaymentAmount
From     PetOwner as po,Pet as p,Payment as pa
Where    po.PetOwnerID=p.PetOwnerID
And      po.PetOwnerID=pa.PetOwnerID
And      pa.PaymentAmount Between '$30' and '$90'
Order By pa.PaymentAmount ASC;

-- Select the number of pet owners who have booked each service online.
Select   Count(PetOwnerID) As NoOfPetOwners, ServiceName
From     OnlineBooking as ob, Service as se, OnlineBooking_Service as ob_se
Where    ob.BookingID=ob_se.BookingID
And      se.ServiceID=ob_se.ServiceID
Group By ServiceName;

-- Update the specialization 'Dermatology Specialist' to 'Internal Medicine Specialist' of vet 'Dr. Emma Anderson'.
Update Vet
Set    Specialization='Internal Medicine Specialist'
Where  VetID='V007';

-- Update the payment date '2022/1/3' to '2022/1/2' of pet owner 'PO001'.
Update Payment
Set    PaymentDate='2022/1/2'
Where  PetOwnerID='PO001';

-- Delete 'A009' from the pet medical appointment table.
Delete
From   PetMedicalAppointment
Where  AppointmentID='A009';

-- Delete the staff 'Ying Li' from the staff table.
Delete
From   OnlineBooking_Staff
Where  StaffID='S008';

Delete
From   Staff
Where  StaffID='S008';