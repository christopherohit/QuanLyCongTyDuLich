
/* Table structure for table AgencyForClient */
Create Table AgencyForClient (
    TenDaiLy VARCHAR(30) NOT NULL PRIMARY key,
    MoTa VARCHAR(50) ,
	MaDiaDiem int,
    LuotThich int NOT NULL,
    HinhAnh IMAGE NOT NULL,

	foreign key (MaDiaDiem) References Display (MaDiaDiem)
);
drop table AgencyForClient

/* Insert Data Into Table AgencyForClient */
INSERT INTO AgencyForClient(TenDaiLy ,MoTa ,MaDiaDiem, SoLuong, LuotThich , HinhAnh) VALUES
('Amazing' , '6 Star',123456,  130 , 6512 ,NULL),
('Arizo' , '5 Star' ,1234567 ,  170 , 3562 ,NULL),
('Raizent' , '7 Star',1234568 , 100 , 8421 , NULL),
('Xizonion' ,'6 Star' , 1234569,  150 , 5120 , NULL),
('LinQ' , '5 Start' ,656231,  165 , 3400 , NULL),
('Peninsula' , '8 Star', 152241 , 180 , 10532 , NULL),
('Georgia' , '7 Star'  , , 195 , 8231 , NULL),
('Florida' , '6 Star'  , 140 , 6741 , NULL),
('Virginia' , '7 Star'  , 185 , 8950 , NULL),
('Pennsylvania' , '6 Star'  , 170 , 6804 , NULL),
('Alaska' , '8 Star', 110 , 10822 ,NULL ),
('Nevada ', '5 Star' , 190 , 4100 , NULL),
('New Jersey' , '7 Star' , 150 , 8531, NULL),
('Delaware' , '6 Star'  , 110 , 7201 , NULL),
('Minnesota' , '5 Star'  , 150 , 3021 , NULL),
('Wisconsin' , '3 Star'  , 200 , 2103 , NULL),
('Missouri'  , '4 Star'  , 400 , 2030 , NULL),
('Vermont' , '7 Star'  , 200 , 10600 , NULL),
('Suncheon' , '8 Star'  , 500 , 14352 , NULL),
('Gwacheon' , '7 Star'  , 420 , 12034, NULL),
('Michigan' , '9 star'  , 860 , 27400 , NULL);


/* Table structure for table PortionTripClient */

CREATE TABLE PortionTripClient (
	MaDiaDiem int primary key,
    TenDaiLy VARCHAR (30) NOT NULL,
    TenTrip VARCHAR (50) NOT NULL,
    KhuyenMai VARCHAR(30) NOT NULL,
    SoLuong INT NOT NULL,
    GiaTien DECIMAL(19 , 4) NOT NULL,
	
)
drop table display
create table Display 
(
	MahienThi int primary key,
	TenDaiLy varchar (30),
	MaDiaDiem int, 
)
insert into Display (TenDaiLy , MaDiaDiem) values 
('Amazing' , 123456 );

select TenDaiLy , TenTrip , SoLuong , KhuyenMai, GiaTien From Display where KhuyenMai = 'On Sale'

/* ard PortionTripClient */
INSERT INTO PortionTripClient(MaDiaDiem, TenDaiLy , TenTrip , KhuyenMai , SoLuong , GiaTien) VALUES 
(123456,'Amazing' , 'Cairo' , 'On Sale' , 50 , 90000000),
(123457,'Arizo' , 'Skadarlija' , 'Flash Sale In Day' , 100 , 50000000),
(123458,'Wisconsin' , 'Maria Cathedral' , 'None' , 50 , 46000000),
(123459,'Vermont','Kalemegdan', 'Hot Sale' , 150 , 90000000),
(656231,'Missouri' , 'Mandalay' , 'Future Trip' , 210 , 20000000),
(152241,'Suncheon' , 'Jeju Island' , 'On Sale' , 410 , 15000000),
(465612,'Gwancheon' , 'Seol' , 'None' , 160 , 32000000 ),
(945321,'Michigan' , 'Paris' , 'Flash Sale In Day', 230 , 15000000),
(845412,'Delaware' , 'Bangkok' , 'Hot Sale' , 60 , 22000000),
(763561,'New Jersey' , 'New York' ,'On Sale' , 70 , 19000000),
(863566,'Minnesota' , 'London' , 'None' , 80 , 25000000),
(763468,'Nevada' , 'Budapest' , 'On Sale' , 100 , 20000000),
(999999,'Alaska' , 'Beijing' , 'Flash Sale In Day' , 50 , 50000000),
(713544,'Pennsylvania' , 'Rio de Janeiro' , 'On Sale' , 80 , 60000000),
(655661,'Virgina' ,'Talin', 'None',85 , 12000000),
(732554,'Florida' , 'Gdansk' , 'None' , 70 , 10000000),
(771132,'Georgia' , 'Berlin' , 'On Sale' , 95 , 50000000),
(886499,'Peninsula' , 'Petrovaradin' ,'On Sale', 100 , 80000000),
(766422,'LinQ' , 'Maputo Church','None', 85 , 65000000),
(221580,'Xizonion' , 'Serengeti' ,'Flash Sale In Day', 70 , 40000000),
(231500,'Raizent' , 'Titicaca Lake','Future Trip' , 50 , 80000000);

/* Table structure for table OrderTripClient */
CREATE TABLE OrderTripClient(
    TenDaiLy VARCHAR(30) NOT NULL PRIMARY KEY,
    DiaDiem VARCHAR(50) NOT NULL,
    SoLuong INT NOT NULL,
    GiaTien DECIMAL(19 , 4) NOT NULL, 
)

/* Table structure for table For ShowAgency */

CREATE TABLE ShowAgency(
    TenDaiLy VARCHAR(30) NOT NULL PRIMARY KEY,
    DiaDiem VARCHAR(50) NOT NULL,
    KhuyenMai VARCHAR(15) NOT NULL,
    SoLuong INT NOT NULL,
    GiaTien DECIMAL(19 , 4) NOT NULL,
) 

INSERT Into ShowAgency (TenDaiLy , DiaDiem , KhuyenMai , SoLuong , GiaTien) VALUES
('Amazing' , 'Cairo' , 'On Sale' , 50 , 90000000),
('Arizo' , 'Skadarlija' , 'Flash Sale In Day' , 100 , 50000000),
('Wisconsin' , 'Maria Cathedral' , 'None' , 50 , 46000000),
('Vermont','Kalemegdan', 'Hot Sale' , 150 , 90000000),
('Missouri' , 'Mandalay' , 'Future Trip' , 210 , 20000000),
('Suncheon' , 'Jeju Island' , 'On Sale' , 410 , 15000000),
('Gwancheon' , 'Seol' , 'None' , 160 , 32000000 ),
('Michigan' , 'Paris' , 'Flash Sale In Day', 230 , 15000000),
('Delaware' , 'Bangkok' , 'Hot Sale' , 60 , 22000000),
('New Jersey' , 'New York' ,'On Sale' , 70 , 19000000),
('Minnesota' , 'London' , 'None' , 80 , 25000000),
('Nevada' , 'Budapest' , 'On Sale' , 100 , 20000000),
('Alaska' , 'Beijing' , 'Flash Sale In Day' , 50 , 50000000),
('Pennsylvania' , 'Rio de Janeiro' , 'On Sale' , 80 , 60000000),
('Virgina' ,'Talin', 'None',85 , 12000000),
('Florida' , 'Gdansk' , 'None' , 70 , 10000000),
('Georgia' , 'Berlin' , 'On Sale' , 95 , 50000000),
('Peninsula' , 'Petrovaradin','On Sale' , 100 , 80000000),
('LinQ' , 'Maputo Church','None', 85 , 65000000),
('Xizonion' , 'Serengeti','Flash Sale In Day' , 70 , 40000000),
('Raizent' , 'Titicaca Lake','Future Trip' , 50 , 80000000);

create table Account (
	TenTaiKhoan nvarchar (20) primary key,
	MatKhau nvarchar (30),
	MaKiemDuyet nvarchar (10),
)

insert into Account (TenTaiKhoan , MatKhau , MaKiemDuyet) values
('singlake' , '7842391330' , '28121999'),
('cullen' , '28121999' , '28121999')
alter table Account add Emails nvarchar(50)
alter table Account alter column Emails nvarchar(50) not null


select * from Account where TenTaiKhoan = 'singlake' and MatKhau = '7842391330'
select * from PortionTripClient where KhuyenMai != 'None'
select * from AgencyForClient

select * from PortionTripClient where TenDaiLy in (select TenDaiLy from AgencyForClient where TenDaiLy = 'Alaska')
Alter table Account
drop column Emails

create table AccountForClient(
	TenTaiKhoan nvarchar (20) primary key not null,
	MatKhau nvarchar (30) not null,
	Emails nvarchar (30) not null,
)
insert into PortionTripClient (TenDaiLy , TenTrip , KhuyenMai , SoLuong, GiaTien) values
('Amazing' , 'Gdansk', 'On Sale' , 20 , 90000000),
('Arizo' , 'Larnaca' , 'Future Trip' , 10 , 40000000 ),
('Raizent' , 'Affins' , 'Hot Sale' , 15 , 15000000),
('xizonion' , 'Vienna' , 'Flash Sale In Day' , 30 , 60000000 ),
('Linq' , 'Sharm El Sheikh' , 'None' , 20 , 25000000),
('Peninsula' , 'Amsterdam' , 'On Sale' , 40 , 85300000 ),
('Georgia' , 'St. Petersburg' , 'Future Trip' , 60 , 74200000),
('Florida' , 'Moscow' , 'Future Trip' , 30 , 50000000),
('Florida' , 'Lviv' , 'On Sale' , 40 , 20000000),
('Virgina' , 'Vernice' , 'None' , 20 , 6100000),
('Virgina' , 'Kyoto' ,'Flash Sale In Day' , 20 , 15000000),
('Virgina', 'Sydney' , 'On Sale' , 30 , 5000000),
('Virgina', 'Odessa' , 'Future Trip' , 30 , 20000000),
('Amazing' , 'Cairo' , 'On Sale' , 50 , 90000000),
('Arizo' , 'Skadarlija' , 'Flash Sale In Day' , 100 , 50000000),
('Wisconsin' , 'Maria Cathedral' , 'None' , 50 , 46000000),
('Vermont','Kalemegdan', 'Hot Sale' , 150 , 90000000),
('Missouri' , 'Mandalay' , 'Future Trip' , 210 , 20000000),
('Suncheon' , 'Jeju Island' , 'On Sale' , 410 , 15000000),
('Gwancheon' , 'Seol' , 'None' , 160 , 32000000 ),
('Michigan' , 'Paris' , 'Flash Sale In Day', 230 , 15000000),
('Delaware' , 'Bangkok' , 'Hot Sale' , 60 , 22000000),
('New Jersey' , 'New York' ,'On Sale' , 70 , 19000000),
('Minnesota' , 'London' , 'None' , 80 , 25000000),
('Nevada' , 'Budapest' , 'On Sale' , 100 , 20000000),
('Alaska' , 'Beijing' , 'Flash Sale In Day' , 50 , 50000000),
('Pennsylvania' , 'Rio de Janeiro' , 'On Sale' , 80 , 60000000),
('Virgina' ,'Talin', 'None',85 , 12000000),
('Florida' , 'Gdansk' , 'None' , 70 , 10000000),
('Georgia' , 'Berlin' , 'On Sale' , 95 , 50000000),
('Peninsula' , 'Petrovaradin' ,'On Sale', 100 , 80000000),
('LinQ' , 'Maputo Church','None', 85 , 65000000),
('Xizonion' , 'Serengeti' ,'Flash Sale In Day', 70 , 40000000),
('Raizent' , 'Titicaca Lake','Future Trip' , 50 , 80000000),
('Pennsylvania', 'Zurich',  'None' , 20 , 71000000),
('Pennsylvania' , 'Cairo' , 'On Sale' , 20 ,4000000 ),
('Alaska' , 'Paris' , 'Hot Sale', 30 , 50000000 ),
('Nevada' , 'Kalemegdan' , 'Flash Sale In Day' , 10 , 15000000),
('Pennsylvania' , 'London' , 'Non Working', 15 , 8000000),
('Alaska' , 'Serengeti' , 'Future Trip' , 30 , 30000000),
('Nevada' , 'Bangkok' , 'On Sale' , 40 , 10000000 ),
('New Jersey' , 'Mauritius' , 'Non Working' , 30, 45000000  ),
('Delaware' , 'Coron' , 'Non Working' , 30 , 15000000),
('Pennsylvania' , 'Jeju' , 'Hot Sale', 15 , 25000000),
('Pennsylvania' , 'New York' , 'Future Trip' , 20 , 18000000),
('Nevada' , 'Obwalden' , 'None' , 15 , 6000000 ),
('New Jersey' , 'Vienna' , 'Non Working' , 20 , 15000000),
('Delaware' , 'Sigriswil Urban' , 'On Sale' , 20 , 12000000),
('Nevada' , 'Rio De Janerio' , 'Hot Sale' , 15 , 8000000),
('New Jersey' , 'Cusco' , 'Non Working' , 30 , 23000000 ),
('Nevada' , 'Talin' , 'None' , 10 , 70000000),
('Minnesota' , 'Oku Mountain' , 'Non Working' , 20 , 30000000),
('Wisconsin' , 'Fatucama Peninsula' , 'Hot Sale' , 30 , 15000000),
('Missouri' , 'Misti Volcano' , 'Flash Sale In Day' , 50 , 41000000),
('Minnesota' , 'Mozambique' , 'Future Trip' , 30 , 73000000),
('Vermont' , 'Bazaruto' , 'Hot Sale' , 20 , 10000000),
('Wisconsin' , 'Zanzibar', 'Non Working' , 30, 14000000),
('Missouri', 'Paris' , 'Flash Sale In Day' , 80 , 25000000),
('Missouri' , 'Berlin' , 'None' , 30, 16000000),
('Minnesota' , 'Affins', 'Non Working' , 20 , 24000000),
('Wisconsin' , 'Titicaca Lake' , 'Hot Sale' , 30 , 15000000),
('Missouri' , 'Maputo Church' ,'On Sale' , 30 , 80000000),
('Vermont' , 'Inhambane' , 'Flash Sale In Day', 30 , 8000000),
('Suncheon' , 'St. Petersburg' , 'Future Trip' , 40 , 45000000),
('Gwancheon' , 'Sharm El Sheikh' , 'Non Working' , 60, 25000000),
('Suncheon' , 'Petrovaradin' , 'Hot Sale' , 40 , 13000000),
('Michigan' , 'Sydney' , 'Future Trip' , 70 , 75000000),
('Suncheon' , 'Maria Cathedral' , 'Hot Sale' , 10 , 45000000 ),
('Gwancheon' , 'Skadarlija' , 'None' , 150 , 30000000 ),
('Gwancheon' , 'Moscow' , 'Non Working' , 50 , 10000000),
('Michigan' , 'Labadee' , 'Future Trip' , 100 , 15000000),
('Michigan', 'Grindelwald' , 'Hot Sale' , 100 , 10000000),
('Michigan', 'Misti Volcano' , 'On Sale' , 100 , 18000000),
('Michigan', 'Larnaca' , 'Flash Sale In Day' , 100 , 12000000),
('Michigan', 'Isetwald' , 'Future Trip', 100 , 19000000 );


delete From PortionTripClient  where TenDaiLy ='hhhhhh'
drop table PortionTripClient
truncate table PortionTripClient
Select * from PortionTripClient where KhuyenMai = 'Hot Sale'

insert into AccountForClient(TenTaiKhoan ,Emails , MatKhau) values
('dinhhuuthanhnguyen' , 'wibu@gmail.com' , 'wiburerach'),
('nguyendangtanhung' , 'caotodenhoi@icloud.com' , 'alo123alo'),
('hendrichscullen' , 'cohota@icloud.com', '2812199920032000');

select TenTaiKhoan , Emails from AccountForClient

use QuanLyDulich
go
insert into TripAvailable (MaChuyen , TenTrip) values 
(82163260 , 'Oku Mountain'),
(82163261 , 'Kilimanjaro'),
(82163262 , 'Futucama Peninsula'),
(82163263 , 'Inhambane'),
(82163264 , 'Misti Volcano'),
(82163265 , 'Bazaruto Island'),
(82163266 , 'Titicaca Lake'),
(82163267 , 'Serengeti'),
(82163268 , 'Petrovaradin'),
(82163269 , 'Maputo Church'),
(82163270 , 'Kalemegdan'),
(82163271 , 'Skadarlija'),
(82163272 , 'Maria Cathedral');

truncate table PortionTripClients
drop table PortionTripClient

create table PortionTripClient (
	TenDaiLy varchar (30) ,
	MaChuyen int ,

	foreign key (TenDaiLy) references AgencyForClient (TenDaiLy),
	foreign key (MaChuyen) references TripAvailable (MaChuyen)

)

select TenDaiLy, SoLuong, TenTrip,
From AgencyForClient af, TripAvailable ta
 

create database TravelAgency
use TravelAgency
go

create table Agency(
	NameAgency varchar (50) primary key,
	DescriptionAgency varchar(50) ,
	AmountTrip int ,
	AmountLike int ,
	ImageAgency Image,
)

Insert into Agency (NameAgency , DescriptionAgency , AmountTrip , AmountLike  , ImageAgency) values 
('Amazing' , '6 Star' , 130 , 6512 ,NULL),
('Arizo' , '5 Star' , 170 , 3562 ,NULL),
('Raizent' , '7 Star' , 100 , 8421 , NULL),
('Xizonion' ,'6 Star' , 150 , 5120 , NULL),
('LinQ' , '5 Start' , 165 , 3400 , NULL),
('Peninsula' , '8 Star' , 180 , 10532 , NULL),
('Georgia' , '7 Star' , 195 , 8231 , NULL),
('Florida' , '6 Star' , 140 , 6741 , NULL),
('Virginia' , '7 Star' , 185 , 8950 , NULL),
('Pennsylvania' , '6 Star' , 170 , 6804 , NULL),
('Alaska' , '8 Star',110 , 10822 ,NULL ),
('Nevada ', '5 Star' , 190 , 4100 , NULL),
('New Jersey' , '7 Star' , 150 , 8531, NULL),
('Delaware' , '6 Star' , 110 , 7201 , NULL),
('Minnesota' , '5 Star' , 150 , 3021 , NULL),
('Wisconsin' , '3 Star' , 200 , 2103 , NULL),
('Missouri'  , '4 Star' , 400 , 2030 , NULL),
('Vermont' , '7 Star' , 200 , 10600 , NULL),
('Suncheon' , '8 Star' , 500 , 14352 , NULL),
('Gwacheon' , '7 Star' , 420 , 12034, NULL),
('Michigan' , '9 star' , 860 , 27400 , NULL);


create Table Account (
	AdminName varchar (20) primary key,
	PassWordAdmin int ,

)
insert into Account (AdminName , PassWordAdmin) values 
('songngannguyen' , 19102000),
('christopherohit' , 05122000),
('huynhnhunguyen' , 28121999),
('QuinnTran' , 20032000)

create table Client(
	ClientName varchar (20)  ,
	EmailAddress varchar (30) ,
	PasswordClient int ,
	CONSTRAINT thongtin_dangnhap primary key (ClientName , EmailAddress)
)

insert into AccountForClient (TenTaiKhoan , MatKhau , Emails ) values

('sieuta' , 846223150,'burden@icloud.com' );


