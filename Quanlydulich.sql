
/* Table structure for table AgencyForClient */
Create Table AgencyForClient (
    TenDaiLy VARCHAR(30) NOT NULL PRIMARY key,
    MoTa VARCHAR(50) ,
    SoLuong int NOT NULL,
    LuotThich int NOT NULL,
    HinhAnh IMAGE NOT NULL,
)

/* Insert Data Into Table AgencyForClient */
INSERT INTO AgencyForClient(Ten ,MoTa , SoLuong, LuotThich , HinhAnh) VALUES
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


/* Table structure for table PortionTripClient */

CREATE TABLE PortionTripClient (
    TenDaiLy VARCHAR (30) NOT NULL PRIMARY key,
    TenTrip VARCHAR (50) NOT NULL,
    KhuyenMai VARCHAR(15) NOT NULL,
    SoLuong INT NOT NULL,
    GiaTien DECIMAL(19 , 4) NOT NULL,
)

/* ard PortionTripClient */
INSERT INTO PortionTripClient( TenDaiLy , TenTrip , KhuyenMai , SoLuong , GiaTien) VALUES 
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
('Raizent' , 'Titicaca Lake','Future Trip' , 50 , 80000000);

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
('' , '' , 'On Sale' ,  )
