/*creating database*/
CREATE DATABASE CAREANDCURE
-->creating table for registration
CREATE TABLE registration (
  username varchar(100) NOT NULL Primary key,
  password varchar(50) NOT NULL,
  NameOfUser varchar(250) NOT NULL,
  ContactNo varchar(15) NOT NULL,
  Email varchar(250) NOT NULL
)
select *from registration
INSERT INTO registration (username, password, NameOfUser, ContactNo, Email) VALUES
('Ishan', '12345', 'Tajrian Islam Ishan', '01936877669', 'ishanislam22@gmail.com')
-->creating table for users
UPDATE username='ishan'
CREATE TABLE users(
	userid int IDENTITY(1,1) PRIMARY KEY,
	UserName varchar(100) Foreign key references
	registration(username) ON DELETE CASCADE ON UPDATE CASCADE,
	user_Password varchar(100) NOT NULL
)
drop table users
select *from users
INSERT INTO users (username, user_Password) VALUES('Ishan', '12345')

-->Creating table for diseaseDictionary

CREATE TABLE diseasedictionary (
  Name varchar(100) NOT NULL PRIMARY KEY,
  Cause varchar(100) NOT NULL,
  Treatment varchar(100) NOT NULL
)
drop table diseasedictionary
SELECT *FROM diseasedictionary
INSERT INTO diseasedictionary (Name, Cause, Treatment) VALUES
('corona', ' blocked skasdasdin follicles from a plug caused by oil from glands', 'Keep nesssat and clean'),
('acne', ' blocked skin follicles from a plug caused by oil from glands', 'Keep neat and clean'),
('alopecia areata', 'It is a condition that attacks your hair follicles they make hair,skin problem', 'Take care of your skin'),
('anemia', 'It is Classified as impaired', 'Have More fruits')


-->Creating table for drugDictionary

CREATE TABLE drugdictionary (
  name varchar(100) NOT NULL PRIMARY KEY,
  about varchar(100) NOT NULL,
  uses varchar(100) NOT NULL
)
drop table drugdictionary
INSERT INTO drugdictionary (name, about, uses) VALUES
('acyclovir', 'anti-infection medicine', 'used to treat infections caused by herpes viruses')
SELECT *FROM drugdictionary


-->Table for wardboy and Nurse
CREATE TABLE wardboy_nurse_tbl (
  ID  int NOT NULL PRIMARY KEY,
  W_N_Name varchar(250) NOT NULL,
  Category varchar(250) NOT NULL,
  Address varchar(250) NOT NULL,
  ContactNo varchar(15) NOT NULL,
  Email varchar(250) NOT NULL,
  Qualifications varchar(250)  NULL   DEFAULT  'HSC',
  BloodGroup varchar(50) NOT NULL,
  DateOfJoining varchar(100) NOT NULL,
  Age int not null CHECK(Age>18)
)
drop table wardboy_nurse_tbl
SELECT *FROM wardboy_nurse_tbl
INSERT INTO wardboy_nurse_tbl (ID,W_N_Name, Category, Address, ContactNo, Email,Qualifications, BloodGroup,DateOfJoining,age) VALUES
(1,'Rajib Khan', 'Wardboy', 'Banasree,A Block,House :27,Road: 6', '01931564561', 'rajibkhan22@gmail.com', 'HSC', 'O+', '2021-09-25',24);



CREATE TABLE INFORMATION
(
id int IDENTITY(1,1) PRIMARY KEY,
name varchar(50) NOT NULL,
age int NOT NULL,

)
ALTER TABLE INFORMATION ADD PatientSince date;
SELECT * FROM INFORMATION
INSERT INTO INFORMATION VALUES('Max', 12, '2021-01-01')
INSERT INTO INFORMATION VALUES('Gita', 50, '2021-05-18')
INSERT INTO INFORMATION VALUES('Hasib', 35, '2021-03-21')
INSERT INTO INFORMATION VALUES('Rifat', 41, '2020-12-29')


--->table bmirecord

CREATE TABLE bmirecord (
  ID int IDENTITY(1,1) PRIMARY KEY,
  Name varchar(30) NOT NULL,
  Age int NOT NULL,
  Sex varchar(30) NOT NULL,
  Dates date NOT NULL,
  BMI varchar(30) NOT NULL
)
drop table bmirecord
INSERT INTO bmirecord ( Name, Age, Sex, Dates, BMI) VALUES
( 'Ishan', 22, 'Male', '2021-09-3', '22.7'),
('Rakib', 24, 'Male', '2021-09-4', '22.9'),
( 'Zidan', 24, 'Male', '2021-9-5', '23.18');

SELECT *FROM bmirecord

-->creating table for doctor
CREATE TABLE doctor (
  DoctorID int NOT NULL PRIMARY KEY,
  DoctorName varchar(50) NOT NULL,
  FatherName varchar(50) NOT NULL,
  Address varchar(50) NOT NULL,
  ContactNo varchar(50) NOT NULL,
  Email varchar(50) NOT NULL UNIQUE ,
  Qualifications varchar(50) NOT NULL,
  Specialization varchar(50) NOT NULL,
  Gender varchar(50) NOT NULL,
  Bloodgroup varchar(50) NOT NULL,
  DateOfJoining varchar(100) NOT NULL
)
drop table doctor

INSERT INTO doctor (DoctorID, DoctorName, FatherName, Address, ContactNo, Email, Qualifications, Specialization, Gender, Bloodgroup, DateOfJoining) VALUES
(1, 'Ishan Islam', 'Sirajul Islam', 'Banasree', '01936877669', 'ishanislam22@gmail.com', 'MBBS', 'Heart', 'M', 'B+', '2021-09-3'),
(2, 'Md. Zahidul Haque', 'Md. Abdul Aziz', 'Moulovirtek', '01845223233', 'zahid@gmail.com', 'FCPS,FRCS from England', 'Brain,Neurologist', 'M', 'B-', '2020-09-3');

select *from doctor

-->creating table word

CREATE TABLE ward (
  wardname varchar(100) NOT NULL Primary key,
  wardtype varchar(50) NOT NULL,
  NoOfBeds int NOT NULL,
  Charges int NOT NULL
)
drop table ward
INSERT INTO ward (wardname, wardtype, NoOfBeds, Charges) VALUES
('A', 'General', 10, 1300),
('B', 'Special', 8, 2200);

select *from ward

insert into ward(Wardname,wardType,NoOfBeds,Charges)values('D','General',10,10)

update Ward set Wardtype='Special',NoOfBeds='13',Charges=2300 where Wardname='D'

delete from ward where wardname = 'D'


select WardName as 'Ward Name',WardType as 'Ward Type',NoOfbeds as 'No Of Beds',Charges from Ward where WardType='General'


--->creating table room

CREATE TABLE room (
  RoomNo int NOT NULL primary key,
  RoomType varchar(100) NOT NULL,
  RoomCharges int NOT NULL,
  RoomStatus varchar(100) NOT NULL
)
drop table room
select *from room
insert into Room(RoomNo,RoomType,RoomCharges,RoomStatus)values('104','General',2000,'Vacant')
update Room set Roomtype='Deluxe',RoomCharges=4000 where RoomNo='104'
update Room set RoomStatus='Booked' where RoomNo='101'
delete from Room where RoomNo = '104'


CREATE TABLE Patientregistration (
  PatientID int NOT NULL primary key,
  Patientname varchar(50) NOT NULL,
  Fathername varchar(50) NOT NULL,
  Address varchar(50) NOT NULL,
  ContactNo varchar(50) NOT NULL,
  Email varchar(50) NOT NULL,
  Age int NOT NULL,
  Gen varchar(50) NOT NULL,
  BG varchar(50) NOT NULL,
  Remarks varchar(50) NOT NULL
)
drop table Patientregistration
select *from patientregistration
INSERT INTO patientregistration (PatientID, Patientname, Fathername, Address, ContactNo, Email, Age, Gen, BG, Remarks) VALUES
(3, 'Rakib Khan', 'Kabir Jobbar', 'Modhubag', '0133822364', 'rakib22@gmail.com', 23, 'M', 'B+', 'Not good Condition')
CREATE TABLE services (
  ServiceID  int IDENTITY(1,1) PRIMARY KEY,
  ServiceName varchar(250) NOT NULL,
  ServiceDate varchar(100) NOT NULL,
  PatientID int Foreign key references Patientregistration(PatientID) ,
  ServiceCharges int NOT NULL
)
drop table services
select *from services

select PatientID as 'Patient ID', PatientName as 'Patient Name' from Patientregistration order by PatientName

SELECT s.ServiceID as 'Service ID', s.ServiceName as 'Service Name',s.ServiceDate as 'Service Date',p.PatientID as 'Patient ID', p.PatientName as 'Patient Name',ServiceCharges as 'Service Charges'
FROM services s JOIN  Patientregistration p
ON s.PatientID=p.PatientID order by PatientName

Select AdmitID as 'Admit ID',p.PatientID as 'Patient ID',p.PatientName as 'Patient Name',p.Gen as 'Gender',p.BG as 'Blood Group',Disease,AdmitDate as 'Admit Date',r.RoomNo as 'Room No',d.DoctorID as 'Doctor ID',DoctorName as 'Doctor Name',ap.AP_Remarks as 'Remarks'
from
    AdmitPatient_Room as ap
	join Room as r on r.RoomNo=ap.RoomNo

    join Doctor as d on d.DoctorID=ap.DoctorID 

	join PatientRegistration as p on ap.PatientID=p.PatientID order by admitdate
   
	
-->admitpatientRoom
CREATE TABLE admitpatient_room (
  AdmitID int IDENTITY(1,1) PRIMARY KEY,
  PatientID int FOREIGN KEY REFERENCES patientregistration (PatientID) ,
  Disease varchar(100) NOT NULL,
  RoomNo int FOREIGN KEY REFERENCES room (RoomNo) ,
  AdmitDate varchar(100) NOT NULL,
  DoctorID int FOREIGN KEY  REFERENCES doctor (DoctorID) ,
  AP_Remarks varchar(100) NOT NULL
)
drop table admitpatient_room



ALTER TABLE admitpatient_room
  ADD CONSTRAINT admitpatient_room_ibfk_1 FOREIGN KEY (PatientID) REFERENCES patientregistration (PatientID)

ALTER TABLE admitpatient_room
  ADD CONSTRAINT admitpatient_room_ibfk_2 FOREIGN KEY (RoomNo) REFERENCES room (RoomNo)
  
ALTER TABLE admitpatient_room
   ADD CONSTRAINT admitpatient_room_ibfk_3 FOREIGN KEY (DoctorID) REFERENCES doctor (DoctorID)

select *from admitpatient_room
INSERT INTO admitpatient_room (PatientID, Disease, RoomNo, AdmitDate, DoctorID, AP_Remarks) VALUES
(1, 'Dengue', '101', '2021-03-22', '2', 'Extreme Fever')

select distinct RoomNo from Room order by RoomNo
select DoctorID as 'Doctor ID', DoctorName as 'Doctor Name' from Doctor order by DoctorID
select PatientID as 'Patient ID', PatientName as 'Patient Name',Gen as 'Gender',BG as 'Blood Group' from Patientregistration order by PatientName
select * from PatientRegistration where PatientID = 1
select * from Doctor where DoctorID = 1

Select RoomNo from Room where RoomNo= 1 and RoomStatus='Booked'
Select PatientID,AdmitDate from AdmitPatient_Room where PatientID= 1 and AdmitDate='2021-02-12'
insert into AdmitPatient_Room(PatientID,Disease,AdmitDate,RoomNo,DoctorID,AP_Remarks)values(1,'','corona','101','1','good')

update room set RoomStatus='Vacant' where RoomNo=101

delete from AdmitPatient_Room where AdmitID =1

CREATE TABLE dischargepatient_room (
  ID int  IDENTITY(1,1) PRIMARY KEY,
  AdmitID int FOREIGN KEY  REFERENCES admitpatient_room (AdmitID),
  DischargeDate varchar(100) NOT NULL,
  DP_Remarks varchar(100) NOT NULL
)
drop table dischargepatient_room
select *from dischargepatient_room
CREATE TABLE bill_room (
  BillNo int IDENTITY(1,1) PRIMARY KEY,
  DischargeID int NOT NULL foreign key references dischargepatient_room(ID),/*id*/
  BillingDate varchar(100) NOT NULL,
  NoOfDays int NOT NULL,
  RoomCharges int NOT NULL,
  TotalRoomCharges int NOT NULL,
  ServiceCharges int NOT NULL,
  TotalCharges int NOT NULL,
  PaymentMode varchar(100) NOT NULL,
  PaymentModeDetails varchar(100) NOT NULL,
  ChargesPaid int NOT NULL,
  DueCharges int NOT NULL
)
select *from bill_room


CREATE TABLE admitpatient_ward (
  AdmitID int IDENTITY(1,1) PRIMARY KEY,
  PatientID int FOREIGN KEY REFERENCES patientregistration (PatientID) ,
  Disease varchar(100) NOT NULL,
  Wardname varchar(100) FOREIGN KEY REFERENCES ward (wardname),
  AdmitDate varchar(100) NOT NULL,
  DoctorID int FOREIGN KEY  REFERENCES doctor (DoctorID) ,
  AP_Remarks varchar(100) NOT NULL
)
select *from admitpatient_ward

ALTER TABLE admitpatient_ward
  ADD CONSTRAINT admitpatient_ward_ibfk_1 FOREIGN KEY (Wardname) REFERENCES ward (wardname)
ALTER TABLE admitpatient_ward
  ADD CONSTRAINT admitpatient_ward_ibfk_2 FOREIGN KEY (PatientID) REFERENCES patientregistration (PatientID)
ALTER TABLE admitpatient_ward
  ADD CONSTRAINT admitpatient_ward_ibfk_3 FOREIGN KEY (DoctorID) REFERENCES doctor (DoctorID)



CREATE TABLE dischargepatient_ward (
  ID int IDENTITY(1,1) PRIMARY KEY,
  AdmitID int FOREIGN KEY  REFERENCES admitpatient_ward (AdmitID),
  DischargeDate varchar(100) NOT NULL,
  DP_Remarks varchar(100) NOT NULL
) 
select *from dischargepatient_ward

CREATE TABLE bill_ward (
  BillNo int IDENTITY(1,1) PRIMARY KEY,
  DischargeID int FOREIGN KEY REFERENCES dischargepatient_ward (ID),
  BillingDate  varchar(100) NOT NULL,
  BedCharges int NOT NULL,
  NoOfDays int NOT NULL,
  TotalBedCharges int NOT NULL,
  ServiceCharges int NOT NULL,
  TotalCharges int NOT NULL,
  PaymentMode varchar(100) NOT NULL,
  PaymentModeDetails varchar(100) NOT NULL,
  ChargesPaid float NOT NULL,
  DueCharges int NOT NULL
)

Alter Table bill_ward
Alter column ChargesPaid int

-->to be done

SELECT DISTINCT Address FROM doctor

SELECT*
FROM
wardboy_nurse_tbl
WHERE
Age = (SELECT
MAX(Age)
FROM
wardboy_nurse_tbl)
ORDER BY W_N_Name;


SELECT ID,W_N_Name,Age,Address FROM wardboy_nurse_tbl WHERE ID LIKE '%Raj%'
UNION  SELECT ID,W_N_Name,Age,Address FROM wardboy_nurse_tbl WHERE  W_N_Name LIKE '%Raj%'
UNION  SELECT ID,W_N_Name,Age,Address FROM wardboy_nurse_tbl WHERE Age LIKE '%Raj%'
UNION  SELECT ID,W_N_Name,Age,Address FROM wardboy_nurse_tbl WHERE Address LIKE '%Raj%'



/*DELETE s
FROM services s
JOIN Patientregistration p
  ON s.PatientID = p.PatientID;


DELETE p
FROM Patientregistration p
JOIN services s 
  ON s.PatientID = p.PatientID;
*/
/*
	
	--bill_room
delete from Bill_Room where BillNo = 2 
Select DischargeID from Bill_Room where DischargeID= 2
insert into Bill_Room(DischargeID,BillingDate,RoomCharges,ServiceCharges,PaymentMode,PaymentModeDetails,ChargesPaid,DueCharges,TotalCharges,NoOfDays,TotalRoomCharges)values(5, '2021-01-01',1200,350,2,'Credit card',1200,350,1550,2,700)
update Bill_Room set DischargeID=5,BillingDate='2021-01-01',RoomCharges=700,ServiceCharges=300,PaymentMode=2,PaymentModeDetails='Credit card',ChargesPaid=1000,DueCharges=750,TotalCharges=1750,NoOfDays=3,TotalRoomCharges=700 where BillNo= 1
select PatientRegistration.PatientID as 'Patient ID', PatientName as 'Patient Name',sum(serviceCharges) as 'Service Charges' from Services,PatientRegistration where Services.PatientID=PatientRegistration.PatientID group by PatientRegistration.PatientID,PatientName order by PatientName


-- bill_roomrecord
Select BillNo as 'Bill No.',DisChargePatient_Room.ID as 'Discharge ID', AdmitPatient_Room.AdmitID as 'Admit ID',PatientRegistration.PatientID as 'Patient ID',PatientRegistration.PatientName as 'Patient Name',PatientRegistration.Gen as 'Gender',PatientRegistration.BG as 'Blood Group',Disease,AdmitDate as 'Admit Date',Room.RoomNo as 'Room No',Doctor.DoctorID as 'Doctor ID',DoctorName as 'Doctor Name',DischargeDate as 'Discharge Date',Bill_Room.RoomCharges as 'Room Charges',Bill_Room.ServiceCharges as 'Service Charges',Bill_Room.BillingDate as 'Billing Date',PaymentMode as 'Payement Mode',PaymentModeDetails as 'Payment Mode Details',TotalCharges as 'Total Charges',ChargesPaid as 'Charges Paid',DueCharges as 'Due Charges',NoOfDays as 'No. Of Days',TotalRoomCharges as 'Total Room Charges' from Room,Doctor,PatientRegistration,AdmitPatient_Room,DischargePatient_Room,Bill_Room where Room.RoomNo=AdmitPatient_Room.RoomNo and Doctor.DoctorID=AdmitPatient_Room.DoctorID and PatientRegistration.PatientID=AdmitPatient_Room.PatientID  and AdmitPatient_Room.admitID= DischargePatient_Room.admitID and Bill_Room.DischargeID=DischargePatient_Room.ID  order by Billingdate


--billward
delete from Bill_Ward where BillNo = 3
Select DischargeID from Bill_Ward where DischargeID= 3
insert into Bill_Ward(DischargeID,BillingDate,BedCharges,ServiceCharges,PaymentMode,PaymentModeDetails,ChargesPaid,DueCharges,TotalCharges,NoOfDays,TotalBedCharges)values(1,'2021-01-01',450,255,2,'Cash',255 ,450,705,1,450)
update Bill_ward set DischargeID=2,BillingDate='2021-01-01',BedCharges=550,ServiceCharges=270,PaymentMode=1,PaymentModeDetails='Cash',ChargesPaid=280,DueCharges=540,TotalCharges=820,NoOfDays=2,TotalBedCharges=1100  where BillNo= 3
select PatientRegistration.PatientID as 'Patient ID', PatientName as 'Patient Name',sum(serviceCharges) as 'Service Charges' from Services,PatientRegistration where Services.PatientID=PatientRegistration.PatientID group by PatientRegistration.PatientID,PatientName order by PatientName


--billward_record
Select BillNo as 'Bill No',DisChargePatient_Ward.ID as 'Discharge ID', AdmitPatient_Ward.AdmitID as 'Admit ID',PatientRegistration.PatientID as 'Patient ID',PatientRegistration.PatientName as 'Patient Name',PatientRegistration.Gen as 'Gender',PatientRegistration.BG as 'Blood Group',Disease,AdmitDate as 'Admit Date',Ward.WardName as 'Ward Name',Doctor.DoctorID as 'Doctor ID',DoctorName as 'Doctor Name',DischargeDate as 'Discharge Date',Bill_Ward.BedCharges as 'Bed Charges',Bill_Ward.ServiceCharges as 'Service Charges',Bill_Ward.BillingDate as 'Billing Date',PaymentMode as 'Payement Mode',PaymentModeDetails as 'Payment Mode Details',TotalCharges as 'Total Charges',ChargesPaid as 'Charges Paid',DueCharges as 'Due Charges',NoOfDays as 'No Of Days',TotalBedCharges as 'Total Bed Charges' from Ward,Doctor,PatientRegistration,AdmitPatient_Ward,DischargePatient_Ward,Bill_Ward where Ward.WardName=AdmitPatient_Ward.WardName and Doctor.DoctorID=AdmitPatient_Ward.DoctorID and PatientRegistration.PatientID=AdmitPatient_Ward.PatientID  and AdmitPatient_Ward.admitID= DischargePatient_Ward.admitID and Bill_Ward.DischargeID=DischargePatient_Ward.ID  order by Billingdate


--change password
select Username,User_Password from users where Username='ishan' and User_Password= '12345'
update users set User_password= '123456789' where Username= 'ishan' and User_password ='12345'
update Registration set password= '123456789' where Username= 'ishan'
select Username,User_Password from users where Username='ishan' and User_Password= '123456789' 
update users set User_password= '12345678' where Username= 'ishan' and User_password = '12345'
update Registration set password= '12345678' where username= 'ishan'


--disease dictionary
select Name as 'Name',Cause as 'Cause',Treatment as'Treatment' from diseasedictionary
insert into diseasedictionary (Name,Cause,Treatment) values ('dengue','aedes','saline and medicines')

--doctor
Select DoctorID from Doctor where DoctorID= 5
insert into Doctor(DoctorID,Doctorname,FatherName,Email,ContactNo,Qualifications,Specialization,Gender,BloodGroup,DateOfJoining,Address)values(5,'Md. Faqrul Hassan','Md. Zulfikar Karim','faqrul@gmail.com',01254775695,'FCPS','Surgery','Male','A+','2016-01-01','Khilgaon,Dhaka')
delete from Doctor where DoctorID = 2
update Doctor set Doctorname='Md. Fairuz Islam',FatherName='Md. Zulkar Uddin',Email='fairuz234@gmail.com',ContactNo=01789665232,Qualifications='MD',Specialization='Surgery',Gender='Male',BloodGroup='O+',DateOfJoining='2020-01-01',Address='Mirpur,Dhaka' where DoctorID=5;

--doctor_record
select DoctorID as 'Doctor ID', DoctorName as 'Doctor Name',FatherName as 'Father Name',Address,ContactNo as 'Contact No',Email as 'Email ID',Qualifications,Specialization,Gender,BloodGroup as 'Blood Group',DateOfJoining as 'Joining Date' from Doctor order by DateOfJoining
select * from Doctor where DoctorID = 3

--drug dictionary
select name as 'Name',about as 'About',uses as'Uses' from drugdictionary
insert into drugdictionary (name,about,uses) values ('Incrit ','product of Sanofi Bangladesh Ltd.','for treating diabetes')


--bmi calculator
insert into bmirecord (Name,Age,Sex,Date,BMI) values ('Rezana',18,'Female','2021-01-01',24)


--login
select * from users where UserName='ishan' and user_Password = '12345'
select * from users where UserName='ishan' and user_Password ='12345'


--loginDetails
select UserName as 'User Name',User_Password as 'Password' from users order by username


--room
select RoomNo as 'Room No.',RoomType as 'Room Type', RoomCharges as 'Room Charges',RoomStatus as 'Room Status' from Room where RoomType='luxarious'
delete from Room where RoomNo = 2
Select RoomNo from Room where RoomNo= 3
insert into Room(RoomNo,RoomType,RoomCharges,RoomStatus)values(4,'comfort',1500,'Vacant')
update Room set Roomtype='luxorious',RoomCharges=2200 where RoomNo=4
select * from Room where RoomNo = 4


--services
select PatientID as 'Patient ID', PatientName as 'Patient Name' from Patientregistration order by PatientName
select * from PatientRegistration where PatientID = 2
insert into Services(ServiceName,ServiceDate,PatientID,ServiceCharges)values('Operation','2021-01-01',2,7500)
delete from Services where ServiceID = 2
update Services set Servicename='delivery',ServiceDate='2021-08-04',PatientID=4,ServiceCharges=5500 where ServiceID=3


--servicesrecord
SELECT s.ServiceID as 'Service ID', s.ServiceName as 'Service Name',s.ServiceDate as 'Service Date',p.PatientID as 'Patient ID', p.PatientName as 'Patient Name',ServiceCharges as 'Service Charges'
FROM services s JOIN  Patientregistration p 
ON s.PatientID=p.PatientID order by PatientName

Select * from PatientRegistration,Services where Services.PatientID=PatientRegistration.PatientID and ServiceID=5

--showinfo
SELECT * FROM INFORMATION
SELECT * FROM INFORMATION ORDER BY age asc
SELECT * FROM INFORMATION ORDER BY PatientSince asc
SELECT * FROM INFORMATION WHERE name LIKE '%"m"%'
         UNION SELECT * FROM INFORMATION WHERE id LIKE '%5%'
         UNION SELECT * FROM INFORMATION WHERE age LIKE '%8%'
         UNION SELECT * FROM INFORMATION WHERE patientsince LIKE '%2%'


--userRegistratrion
Select username from Registration where Username= 'ishan'
insert into Registration(username,password,nameofuser,Email,ContactNo)values('Fahim','124','Fahim ','fahim24@gmail.com',01568956224)
insert into Users(username,user_password)values('Fahim','124')
delete from Registration where Username = 'Fahim'
delete from Users where Username = 'Fahim'
update Registration set password='k44k',nameofuser='omi',Email='omi@gmail.com',ContactNo='01452369822' where Username='omit'
update Users set user_password='12785' where username='ishan'


--userrRegistrationRecord
select NameOfUser as 'Name', UserName as 'User Name',Password,ContactNo as 'Contact No',Email as 'Email ID' from Registration
select * from registration where username= 'ishan'


--voluntaryBloodDonorRecord
select Name as 'Name',GENDER as 'GENDER',AGE as'AGE',WEIGHT as'WEIGHT',BLOOD_GROUP as'BLOOD_GROUP',LAST_DONATION as'LAST_DONATION',DISEASE as'DISEASE',MOBILE as'MOBILE',ADDRESS as'ADDRESS' from tbl_donors


--Nurse_WardboyRecord.java
select ID, W_N_name as 'Name',Category,Address,ContactNo as 'Contact No',Email as 'Email ID',Qualifications,BloodGroup as 'Blood Group',DateOfJoining as 'Joining Date' from Wardboy_Nurse_tbl order by DateOfJoining
select * from Wardboy_Nurse_tbl where ID = 1



--Nurse_Wardboy.java
Select ID from Wardboy_Nurse_tbl where ID= 2
insert into Wardboy_Nurse_tbl(ID,W_N_name,Category,Email,ContactNo,Qualifications,BloodGroup,DateOfJoining,Address)values(1, , 'azad','wardboy','azad@gmail.com', '56778','hsc pass','A+','2021-01-01','Dhanmondi')
delete from Wardboy_Nurse_tbl where ID = 1
update Wardboy_Nurse_tbl set W_N_name='kalam',Category='wardboy-senior',Email='"kalam@gmail.com',ContactNo='445677',Qualifications='ba pass ',BloodGroup='B+',DateOfJoining='2021-01-01',Address='Nilkhet' where ID=3


--PatientAdmit_Room.java
select distinct RoomNo from Room order by RoomNo
select DoctorID as 'Doctor ID', DoctorName as 'Doctor Name' from Doctor order by DoctorID
select PatientID as 'Patient ID', PatientName as 'Patient Name',Gen as 'Gender',BG as 'Blood Group' from Patientregistration order by PatientName
select * from PatientRegistration where PatientID = 2
Select RoomNo from Room where RoomNo= 202 andRoomStatus='Booked'
Select PatientID,AdmitDate from AdmitPatient_Room where PatientID= 2 and AdmitDate='2021-01-01'
insert into AdmitPatient_Room(PatientID,Disease,AdmitDate,RoomNo,DoctorID,AP_Remarks)values(2,'Diarrhoea','2021-08-11',202,4,'extremely sick'
update room set RoomStatus='Booked' where RoomNo=502
delete from AdmitPatient_Room where AdmitID = 4
Select RoomNo from Room where RoomNo= 445 and RoomStatus='Booked'
 update AdmitPatient_Room set  PatientID=3,Disease='Fever',AdmitDate='2021-01-04',RoomNo='665',DoctorID=6,AP_Remarks='doing well' where AdmitID= 4
 update room set RoomStatus='Booked' where RoomNo=303
 update room set RoomStatus='Vacant' where RoomNo=450


 --PatientAdmit_RoomRecord.java
 Select AdmitID as 'Admit ID',PatientRegistration.PatientID as 'Patient ID',PatientRegistration.PatientName as 'Patient Name',PatientRegistration.Gen as 'Gender',PatientRegistration.BG as 'Blood Group',Disease,AdmitDate as 'Admit Date',Room.RoomNo as 'Room No',Doctor.DoctorID as 'Doctor ID',DoctorName as 'Doctor Name',AdmitPatient_Room.AP_Remarks as 'Remarks' from Room,Doctor,PatientRegistration,AdmitPatient_Room where Room.RoomNo=AdmitPatient_Room.RoomNo and Doctor.DoctorID=AdmitPatient_Room.DoctorID and PatientRegistration.PatientID=AdmitPatient_Room.PatientID order by admitdate
 Select * from Room,Doctor,PatientRegistration,AdmitPatient_Room where Room.RoomNo=AdmitPatient_Room.RoomNo and Doctor.DoctorID=AdmitPatient_Room.DoctorID and PatientRegistration.PatientID=AdmitPatient_Room.PatientID and AdmitID=33


 --PatientAdmit_RoomRecord1.java
 Select AdmitID as 'Admit ID',PatientRegistration.PatientID as 'Patient ID',PatientRegistration.PatientName as 'Patient Name',PatientRegistration.Gen as 'Gender',PatientRegistration.BG as 'Blood Group',Disease,AdmitDate as 'Admit Date',Room.RoomNo as 'Room No',Doctor.DoctorID as 'Doctor ID',DoctorName as 'Doctor Name',AdmitPatient_Room.AP_Remarks as 'Remarks' from Room,Doctor,PatientRegistration,AdmitPatient_Room where Room.RoomNo=AdmitPatient_Room.RoomNo and Doctor.DoctorID=AdmitPatient_Room.DoctorID and PatientRegistration.PatientID=AdmitPatient_Room.PatientID order by admitdate
 Select * from Room,Doctor,PatientRegistration,AdmitPatient_Room where Room.RoomNo=AdmitPatient_Room.RoomNo and Doctor.DoctorID=AdmitPatient_Room.DoctorID and PatientRegistration.PatientID=AdmitPatient_Room.PatientID and AdmitID=54


 --PatienAdmit_Ward.java
 select distinct Wardname from Ward order by Wardname
 select DoctorID as 'Doctor ID', DoctorName as 'Doctor Name' from Doctor order by DoctorName
 select PatientID as 'Patient ID', PatientName as 'Patient Name',Gen as 'Gender',BG as 'Blood Group' from Patientregistration order by PatientName
 select * from PatientRegistration where PatientID = 3
 select * from Doctor where DoctorID = 5
 Select Wardname from Ward where Wardname= 'Geriatrics Ward' and NoOfbeds<=0
 Select PatientID,AdmitDate from AdmitPatient_Room where PatientID= 3 and AdmitDate='2021-01-01'
 insert into AdmitPatient_Ward(PatientID,Disease,AdmitDate,Wardname,DoctorID,AP_Remarks)values(2,'Dengue','2021-01-01','Corona Ward',3,'sick')
 update Ward set NoOfBeds=NoOfBeds - 1 where Wardname='Psychiatric Ward'
 delete from AdmitPatient_Ward where AdmitID =2
 Select Wardname from Ward where Wardname= 'Child Ward' and NoOfbeds<=0
 update AdmitPatient_Ward set PatientID=3,Disease='Corona',AdmitDate='2021-01-01',Wardname='Child Ward',DoctorID=4,AP_Remarks='better' where AdmitID= 6
 update Ward set NoOfBeds=NoOfBeds - 1 where Wardname='Child Ward'
 update Ward set NoOfBeds=NoOfBeds + 1 where Wardname='Child Ward'



 --PatientAdmit_WardRecord.java
 Select AdmitID as 'Admit ID',PatientRegistration.PatientID as 'Patient ID',PatientRegistration.PatientName as 'Patient Name',PatientRegistration.Gen as 'Gender',PatientRegistration.BG as 'Blood Group',Disease,AdmitDate as 'Admit Date',Ward.Wardname as 'Ward Name',Doctor.DoctorID as 'Doctor ID',DoctorName as 'Doctor Name',AdmitPatient_Ward.AP_Remarks as 'Remarks' from Ward,Doctor,PatientRegistration,AdmitPatient_Ward where Ward.Wardname=AdmitPatient_Ward.Wardname and Doctor.DoctorID=AdmitPatient_Ward.DoctorID and PatientRegistration.PatientID=AdmitPatient_Ward.PatientID order by admitdate
 Select * from Ward,Doctor,PatientRegistration,AdmitPatient_Ward where Ward.Wardname=AdmitPatient_Ward.Wardname and Doctor.DoctorID=AdmitPatient_Ward.DoctorID and PatientRegistration.PatientID=AdmitPatient_Ward.PatientID and AdmitID=6


 --PatientAdmit_WardRecord1.java
 Select AdmitID as 'Admit ID',PatientRegistration.PatientID as 'Patient ID',PatientRegistration.PatientName as 'Patient Name',PatientRegistration.Gen as 'Gender',PatientRegistration.BG as 'Blood Group',Disease,AdmitDate as 'Admit Date',Ward.Wardname as 'Ward Name',Doctor.DoctorID as 'Doctor ID',DoctorName as 'Doctor Name',AdmitPatient_Ward.AP_Remarks as 'Remarks' from Ward,Doctor,PatientRegistration,AdmitPatient_Ward where Ward.Wardname=AdmitPatient_Ward.Wardname and Doctor.DoctorID=AdmitPatient_Ward.DoctorID and PatientRegistration.PatientID=AdmitPatient_Ward.PatientID order by admitdate
 Select * from Ward,Doctor,PatientRegistration,AdmitPatient_Ward where Ward.Wardname=AdmitPatient_Ward.Wardname and Doctor.DoctorID=AdmitPatient_Ward.DoctorID and PatientRegistration.PatientID=AdmitPatient_Ward.PatientID and AdmitID=9


 --PatientDischargeRecord_Room.java
 Select ID as 'Discharge ID', AdmitPatient_Room.AdmitID as 'Admit ID',PatientRegistration.PatientID as 'Patient ID',PatientRegistration.PatientName as 'Patient Name',PatientRegistration.Gen as 'Gender',PatientRegistration.BG as 'Blood Group',Disease,AdmitDate as 'Admit Date',Room.RoomNo as 'Room No',Doctor.DoctorID as 'Doctor ID',DoctorName as 'Doctor Name',DischargeDate as 'Discharge Date',DP_Remarks as 'Remarks' from Room,Doctor,PatientRegistration,AdmitPatient_Room,DischargePatient_Room where Room.RoomNo=AdmitPatient_Room.RoomNo and Doctor.DoctorID=AdmitPatient_Room.DoctorID and PatientRegistration.PatientID=AdmitPatient_Room.PatientID  and AdmitPatient_Room.admitID= DischargePatient_Room.admitID order by Dischargedate
 Select * from Room,Doctor,PatientRegistration,AdmitPatient_Room,DischargePatient_Room where Room.RoomNo=AdmitPatient_Room.RoomNo and Doctor.DoctorID=AdmitPatient_Room.DoctorID and PatientRegistration.PatientID=AdmitPatient_Room.PatientID and AdmitPatient_Room.AdmitID=DischargePatient_Room.admitID and ID=2


--PatientDischargeRecord_Room1.java   
Select ID as 'Discharge ID', AdmitPatient_Room.AdmitID as 'Admit ID',PatientRegistration.PatientID as 'Patient ID',PatientRegistration.PatientName as 'Patient Name',PatientRegistration.Gen as 'Gender',PatientRegistration.BG as 'Blood Group',Disease,AdmitDate as 'Admit Date',Room.RoomNo as 'Room No',RoomCharges as 'Room Cahrges',Doctor.DoctorID as 'Doctor ID',DoctorName as 'Doctor Name',DischargeDate as 'Discharge Date',DP_Remarks as 'Remarks' from Room,Doctor,PatientRegistration,AdmitPatient_Room,DischargePatient_Room where Room.RoomNo=AdmitPatient_Room.RoomNo and Doctor.DoctorID=AdmitPatient_Room.DoctorID and PatientRegistration.PatientID=AdmitPatient_Room.PatientID  and AdmitPatient_Room.admitID= DischargePatient_Room.admitID order by Dischargedate
Select * from Room,Doctor,PatientRegistration,AdmitPatient_Room,DischargePatient_Room where Room.RoomNo=AdmitPatient_Room.RoomNo and Doctor.DoctorID=AdmitPatient_Room.DoctorID and PatientRegistration.PatientID=AdmitPatient_Room.PatientID and AdmitPatient_Room.AdmitID=DischargePatient_Room.admitID and ID=7


--PatientDischargeRecord_Ward.java
Select ID as 'Discharge ID', AdmitPatient_Ward.AdmitID as 'Admit ID',PatientRegistration.PatientID as 'Patient ID',PatientRegistration.PatientName as 'Patient Name',PatientRegistration.Gen as 'Gender',PatientRegistration.BG as 'Blood Group',Disease,AdmitDate as 'Admit Date',Ward.Wardname as 'Ward Name',Doctor.DoctorID as 'Doctor ID',DoctorName as 'Doctor Name',DischargeDate as 'Discharge Date',DP_Remarks as 'Remarks' from Ward,Doctor,PatientRegistration,AdmitPatient_Ward,DischargePatient_Ward where Ward.Wardname=AdmitPatient_Ward.Wardname and Doctor.DoctorID=AdmitPatient_Ward.DoctorID and PatientRegistration.PatientID=AdmitPatient_Ward.PatientID  and AdmitPatient_Ward.admitID= DischargePatient_Ward.admitID order by Dischargedate
Select * from Ward,Doctor,PatientRegistration,AdmitPatient_Ward,DischargePatient_Ward where Ward.Wardname=AdmitPatient_Ward.Wardname and Doctor.DoctorID=AdmitPatient_Ward.DoctorID and PatientRegistration.PatientID=AdmitPatient_Ward.PatientID and AdmitPatient_Ward.AdmitID=DischargePatient_Ward.admitID and ID=4


--PatientDischargeRecord_Ward1.java
Select ID as 'Discharge ID', AdmitPatient_Ward.AdmitID as 'Admit ID',PatientRegistration.PatientID as 'Patient ID',PatientRegistration.PatientName as 'Patient Name',PatientRegistration.Gen as 'Gender',PatientRegistration.BG as 'Blood Group',Disease,AdmitDate as 'Admit Date',Ward.Wardname as 'Ward Name',Charges as 'Bed Charges',Doctor.DoctorID as 'Doctor ID',DoctorName as 'Doctor Name',DischargeDate as 'Discharge Date',DP_Remarks as 'Remarks' from Ward,Doctor,PatientRegistration,AdmitPatient_Ward,DischargePatient_Ward where Ward.Wardname=AdmitPatient_Ward.Wardname and Doctor.DoctorID=AdmitPatient_Ward.DoctorID and PatientRegistration.PatientID=AdmitPatient_Ward.PatientID  and AdmitPatient_Ward.admitID= DischargePatient_Ward.admitID order by Dischargedate
Select * from Ward,Doctor,PatientRegistration,AdmitPatient_Ward,DischargePatient_Ward where Ward.Wardname=AdmitPatient_Ward.Wardname and Doctor.DoctorID=AdmitPatient_Ward.DoctorID and PatientRegistration.PatientID=AdmitPatient_Ward.PatientID and AdmitPatient_Ward.AdmitID=DischargePatient_Ward.admitID and ID=3


--PatientDischarge_Room.java
Select admitID from DischargePatient_Room where AdmitID=6
insert into DischargePatient_Room(AdmitID,DischargeDate,DP_Remarks)values(5,'2021-09-01','sick')
update room set RoomStatus='Vacant' where RoomNo=203
delete from DischargePatient_Room where ID=3
update DischargePatient_Room set AdmitID=3,DischargeDate='2021-01-11',DP_Remarks='doing well now' where ID= 2


--PatientDischarge_Ward.java
Select admitID from DischargePatient_Ward where AdmitID=6
insert into DischargePatient_Ward(AdmitID,DischargeDate,DP_Remarks)values(5,'2021-11-21','sick')
update Ward set NoOfBeds=NoOfBeds+1 where Wardname='Child Ward'
delete from DischargePatient_Wardwhere ID=3
update DischargePatient_Ward set AdmitID=3,DischargeDate='2021-04-16',DP_Remarks='doing well now' where ID= 2


--PatientRegistration.java
Select PatientID from PatientRegistration where PatientID= 2
insert into PatientRegistration(PatientID,Patientname,FatherName,Email,ContactNo,Age,Remarks,Gen,BG,Address)values(7,'naz','kamal','kamal@gmail.com','013445667',45,'sick','Female','AB+','Uttara')
delete from PatientRegistration where PatientID = 4
update PatientRegistration set Patientname='Ovi',Fathername='Wahid',Email='wahid@yahoo.com',ContactNo='0156768999',Age=34,Remarks='sick',Gen='Male',BG='O+',Address='Mirpur' where PatientID=5


--PatientRegistrationRecord.java
select PatientID as 'Patient ID', PatientName as 'Patient Name',FatherName as 'Father Name',Address,ContactNo as 'Contact No',Email as 'Email ID',Age,Gen as 'Gender',BG as 'Blood Group',Remarks from Patientregistration
select * from PatientRegistration where PatientID =8


--Ward.java
select WardName as 'Ward Name',WardType as 'Ward Type',NoOfbeds as 'No Of Beds',Charges from Ward where WardType='General Ward'
insert into ward(Wardname,wardType,NoOfBeds,Charges)values('Burn  Ward',' Ward',20,200)
update Ward set Wardtype='Maternity',NoOfBeds=15,Charges=300 where Wardname='Cancer Ward'
delete from ward where wardname = 'Child Ward'
select * from ward where wardname = 'Corona Ward'


--bmiDataRecord.java
select Name as 'Name',Age as 'Age',Sex as'Sex',Date as'Date',BMI as'Bmi' from bmirecord

--newDonor.java
insert into tbl_donors(NAME,GENDER,AGE,WEIGHT,BLOOD_GROUP,LAST_DONATION,DISEASE,MOBILE,ADDRESS) values ('tithi','Female',25,65,'A+','','2021-06-09'','01945678899','Dhanmondi')



















*/