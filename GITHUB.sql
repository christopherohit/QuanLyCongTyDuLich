create database Github
use QuanLyDuLich
go

-- DELETE OLD TABLE
DROP TABLE Account
DROP TABLE AccountForClient
DROP TABLE TRIPAVAILABLE
DROP TABLE ShowAgency
DROP TABLE OrderTripClient
DROP TABLE ChuyenDi
DROP TABLE AGENCYFORAdmin
DROP TABLE Display
DROP TABLE PortionTripClient
-----------------------------------------------------------------------------------------------------------
create table AGENCYFORAdmin(
	
	TenDaiLy varchar (30) PRIMARY KEY ,
	MoTaDanhGia varchar (50),
	SoLuongChuyenDi int , 
	SoLuoTThich int ,

)

insert into AGENCYFORAdmin (TenDaiLy , MoTaDanhGia, SoLuongChuyenDi , SoLuoTThich) values 
('Amazing' , '6 Star',6,  18231), --6 vv
('Arizo' , '5 Star' ,3,  11270 ), --3 vv
('Raizent' , '7 Star',11 , 121002),   --9
('Xizonion' ,'6 Star' , 5,  9153), --5 vv
('LinQ' , '5 Start' ,6,  16535 ),--6 vv
('Peninsula' , '8 Star', 15 , 18032 ), --8 vv
('Georgia' , '7 Star'  , 4 , 8131 ), --4 vv
('Florida' , '6 Star'  , 3 , 6741 ), --3 vv
('Virginia' , '7 Star', 5 , 18125 ), --5 vv
('Pennsylvania' , '6 Star', 4 , 17803 ), --4 vv
('Alaska' , '8 Star', 9 , 18312 ), --7
('Nevada ', '5 Star' ,2, 19032 ), --2 vv
('New Jersey' , '7 Star', 4, 15211 ),--4 vv
('Delaware' , '6 Star', 3  , 11231 ), --3 vv
('Minnesota' , '5 Star' ,3 , 15320 ),  --3 vv
('Wisconsin' , '3 Star',1   , 7103 ),  --1 vv
('Missouri'  , '4 Star' ,3  , 8030 ), --3 vv
('Vermont' , '7 Star'  , 9 , 10600 ), --4
('Suncheon' , '8 Star'  , 8 , 14352), --6
('Gwacheon' , '7 Star'  , 6 , 12034 ), --6vv
('Michigan' , '9 star'  , 12 , 27400 ); --6

-----------------------------------------------------------------------------------------------------------
create table ChuyenDi (
	MaChuyen char (10) primary key ,
	SoLuong int ,
	TinhTrang varchar(30) ,
	TenDiaDiem VARCHAR (30),
	HuongDanVien varchar (50),
	DichVuFree varchar (100),
	TENSOHUU VARCHAR (30),
	GIAIEN DECIMAL (9 , 0),
	LuotThich int ,
	TenDaiLy varchar (30),


	foreign key (TENSOHUU) references ACCOMODATION (TENSOHUU),
	foreign key (TenDaiLy) references AGENCYFORAdmin (TenDaiLy),
	foreign key (TenDiaDiem) references TRIPAVAILABLE (TenDiaDiem),
	foreign key (HuongDanVien) references HuongDanVien (HuongDanVien)
)

insert into ChuyenDi (MaChuyen , SoLuong , TinhTrang , TENDIADIEM , HuongDanVien , DichVuFree , TENSOHUU , LuotThich,GIAIEN  , TenDaiLy) values 
('MCD0889110' , 160 , 'On Sale' , 'Serengeti' , 'Hyun Bin'  , 'Free Wifi, Free Food and Free Entertainment', 'Cipriani & Palazzo Vendramin' , 14351 , 85000000 , 'Alaska'),
('MCD0889112' , 210 , 'Hot Sale' , 'London' , 'Robert Pattinson'   , 'Free Return Tickets' , 'Copacabana' , 10321 , 110000000 , 'Wisconsin'),
('MCD0889111' , 352 , 'Sold out' , 'Paris', 'Emma Wattson'  , 'Bigger Gift For Vip Customer' , 'Hotel Del Luna' , 91452 , 214000000 , 'Michigan'),
('MCD0889113' , 420 , 'Future Trip' , 'New York' , 'Tom Cruise'  , 'Free Present For Every Customer' , 'Marriott International' , 4210 , 24680000 , 'Delaware'),
('MCD0889116' , 300 , 'On Sale' , 'Cairo' , 'Ji Chang Wook'  , 'Free Wifi, Free Food and Free Entertainment' , 'Ritz Paris' , 43512 , 120300000 , 'Minnesota'),
('MCD0889114' , 125 , 'Future Trip' , 'Bangkok' , 'Lee Dong Wook'  , 'Free Resort Fee And Park Fee' , 'Cape Grace' , 3512 , 156000000 , 'Amazing' ),
('MCD0889115' , 373 , 'Future Trip' , 'Budapest' , 'Chris Evan'  , 'Free Return Tickets' , 'Casa Fuster' , 7641 , 84000000 , 'Arizo');

insert into ChuyenDi (MaChuyen , SoLuong , TinhTrang , TENDIADIEM , HuongDanVien , DichVuFree , TENSOHUU , LuotThich,GIAIEN  , TenDaiLy) values 
('MCD0889119' , 135 , 'Hot Sale' , 'Zurich' , 'Chris Hemsworth'  , 'Free Resort Fee And Park Fee' , 'Dolder Grand Zurich' , 7211 , 84600000 , 'Raizent'),
('MCD0889118' , 483 , 'Sold out' , 'Talin' , 'Elizabeth Olsen'  , 'Ticket Discount 50% For Anything In Gucci Store' , 'Taj palace' , 7912 , 65230000 , 'Xizonion'),
('MCD0889117' , 146 , 'Sold Out' , 'Beijing' , 'Chung Han Liang'  ,'Bigger Gift For Vip Customer' , 'Le Pavillon' , 18315 , 50310000 , 'Georgia'),
('MCD0889129' , 462 , 'Hot Sale' , 'Seoul' , 'Kim So Hyun'  , 'Free Resort Fee And Park Fee' , 'La Mamounia' , 3164 , 74530000 , 'Gwacheon'),
('MCD0889124' , 235 , 'On Sale' , 'Jeju Island' , 'Marco Reus'  , 'Free Wifi, Free Food and Free Entertainment', 'Cipriani & Palazzo Vendramin' , 7641 , 77900000 , 'Missouri'),
('MCD0889126' , 731 , 'Future Trip' , 'Maputo Church' , 'Kim Soo Hyun', 'Free Return Tickets' , 'Centara Grand Beach' , 9131 , 46800000 , 'Nevada'),
('MCD0889122' , 341 , 'On Sale' , 'Petrovaradin' , 'Park Bo Gum'  , 'Ticket Discount 50% For Anything In Nikes' , 'Casa Fuster', 7491 , 76450000 , 'Florida'),
('MCD0889123' , 329 , 'Sold Out' , 'Skadarlija' , 'Kim Yoo Jung'  , 'Free Present For Every Customer', 'Hotel Del Luna' , 8913 , 94620000 , 'Michigan'),
('MCD0889121' , 650 , 'Future Trip' , 'Kalemegdan' , 'Kim Bum'  , 'Free Wifi, Free Food and Free Entertainment', 'Hilton Worldwide' , 79543 , 125000000 , 'Vermont'),
('MCD0889127' , 135 , 'Hot Sale' , 'Berlin' , 'Robert Downey Jr'  , 'Free Accomodation Fee' , 'Okutaku Villa' , 7546 , 64800000 , 'Arizo'),
('MCD0889128' , 453 , 'On Sale' , 'Titicaca Lake' , 'Cao Xuan Tai'  , 'Free Resort Fee And Park Fee' , 'Casa Fuster' , 7946 , 41000000 , 'Arizo'),
('MCD0889125' , 120 , 'Future Trip' , 'Gdansk' , 'Yang Yang'  , 'Ticket Discount 50% For Anything In Levis','Quinn' , 19413 , 76200000 , 'Nevada'),
('MCD0889136' , 461 , 'Sold Out' , 'Sydney' , 'Zheng Shuang'  , 'Neil Barett For Every Customers','Gstaad' , 16234 , 42100000 , 'LinQ'),
('MCD0889131' , 220 , 'Sold Out' , 'Rio de Janeiro', 'Seo Dan'  , 'Salvatore Ferragamo For Every Customers','La Mamounia' , 9461 , 92600000 , 'Florida'),
('MCD0889120' , 415 , 'On Sale' , 'Mandalay','Arianna Grande'  , 'Ticket Discount 50% For Anything In Saint Laurent','Le Pavillon' , 46851 , 152000000 , 'New Jersey'),
('MCD0889135' , 135 , 'Future Trip' , 'New York' , 'Lee Ji-Eun'  , 'Ticket Discount 50% For Anything In Burberry' , 'LITTLE KULALA', 6413 , 53150000 , 'Gwacheon'),
('MCD0889139' , 715 , 'Hot Sale' , 'Serengeti' , 'Gong Yoo' , 'Neil Barett For Every Customers' , 'NAKA PHUKET', 7963 , 23000000 , 'Pennsylvania'),
('MCD0889130' , 160 , 'Future Trip' , 'London' , 'Im Yoon Ah'  , 'Free Present For Every Customer' , 'Casa Fuster' , 8469 , 46500000 , 'Delaware'),
('MCD0889132' , 455 , 'Future Trip' , 'Cairo' , 'Park Min Young'  , 'Salvatore Ferragamo For Every Customers' , 'DES PÊCHEURS' , 7946 , 46000000 , 'Florida'),
('MCD0889134' , 315 , 'Sold Out' , 'Paris' , 'Bae Suzy'  , 'Bigger Gift For Vip Customer' , 'OKUMA PRIVATE BEACH' , 9846  , 84600000 , 'Missouri');

insert into ChuyenDi (MaChuyen , SoLuong , TinhTrang , TENDIADIEM , HuongDanVien , DichVuFree , TENSOHUU , LuotThich,GIAIEN  , TenDaiLy) values
('MCD0889133' , 760 , 'Hot Sale' , 'Sharm El Sheikh' , 'Kim Woo Bin'  , 'Free Resort Fee And Park Fee' , 'Nesjavellir', 8123 , 15350000, 'Suncheon'),
('MCD0889137' , 245 , 'Future Trip' , 'Larnaca' , 'Gia Nai Luong'  , 'Ticket Discount 50% For Anything In Saint Laurent', 'Accor', 6423 , 65000000 , 'Alaska'),
('MCD0889138' , 650 , 'On Sale' , 'Affins' , 'Kim Ji Won' , 'Free Present For Every Customer','Anantara Al Jabal Al Akhdar', 6462 , 74600000 , 'Georgia');

insert into ChuyenDi (MaChuyen , SoLuong , TinhTrang , TENDIADIEM , HuongDanVien  , DichVuFree , TENSOHUU , LuotThich,GIAIEN  , TenDaiLy) values
('MCD0889140' , 150 , 'Sold Out' , 'Vienna' , 'Lee Joon-Gi'  , 'Bigger Gift For Vip Customer' , 'Choice Hotels International' , 7941 , 85200000 , 'Minnesota'),
('MCD0889141' , 510 , 'Sold Out' , 'Sigriswil Urban' , 'Shin Min Ah'  , 'Free Resort Fee And Park Fee' , 'WHITEPOD HOTEL' , 9321 , 45060000 , 'Alaska'),
('MCD0889142' , 410 , 'Future Trip' , 'Mauritius' , 'Lee Jong Suk'  , 'Salvatore Ferragamo For Every Customers' , 'Wyndham Hotel' , 4680 , 75100000 , 'Pennsylvania'),
('MCD0889143' , 320 , 'Future Trip' , 'Berlin' , 'Moon Chae Won'  , 'Free Return Tickets' , 'Starwood Hotels and Resorts' , 4135 , 56000000 , 'Pennsylvania'),
('MCD0889144' , 150 , 'On Sale' , 'Zanzibar' , 'Shin Se Kyung'  , 'Discount 25% For Total Fee' , 'Salto Chico – Patagonia' , 7481 , 86500000 , 'Virginia'),
('MCD0889145' , 250 , 'Hot Sale' , 'Kilimanjaro' , 'Seo Ye Ji' , 'Ticket Discount 50% For Anything In Saint Laurent','Dasan' , 4861 , 42100000 , 'Raizent');

insert into ChuyenDi (MaChuyen , SoLuong , TinhTrang , TENDIADIEM , HuongDanVien , DichVuFree , TENSOHUU , LuotThich,GIAIEN  , TenDaiLy) values
('MCD0889146' , 165 , 'Sold Out' , 'Amsterdam' , 'Kim Go Eun'  ,  'Ticket Discount 50% For Anything In Bottega Veneta' , 'Home Inns' , 5951 , 86000000 , 'LinQ' ),
('MCD0889147' , 525 , 'Hot Sale' , 'Rio De Janeiro' , 'Seo Dan'  , 'Ticket Discount 50% For Anything In Givenchy Store' , 'Jade Mountain – Soufriere', 9462 , 94600000 , 'Minnesota'),
('MCD0889148' , 135 , 'Future Trip' , 'Kyoto' , 'Scarlett Johansson'  , 'Free Wifi, Free Food and Free Entertainment' , 'The Rezidor Hotel' , 7946 , 86400000 , 'Peninsula'),
('MCD0889149' , 865 , 'Future Trip' , 'Obwalden' , 'Elle Fanning'  , 'Free Present For Every Customer', 'SALA SILVERMINE' , 4953 , 45000000 , 'Xizonion'),
('MCD0889150' , 450 , 'Sold Out' , 'Bazaruto Island' , 'Lee Dong Wook'  , 'Neil Barett For Every Customers' , 'Anantara Al Jabal Al Akhdar', 7962 , 79800000 , 'Peninsula'),
('MCD0889151' , 150 , 'Sold Out' , 'Cusco' , 'Kim Ji Won'  , 'Free Return Tickets' , 'Uluru, Northern Territory' , 4632 , 16500000 , 'Amazing'),
('MCD0889152' , 145 , 'Hot Sale' , 'Mauritius' , 'Chung Han Liang' ,'Ticket Discount 50% For Anything In Gucci Store', 'Kumaon – Uttarakhand' , 9441 , 65000000 , 'Virginia' ),
('MCD0889153' , 310 , 'On Sale' , 'Jeju Island' , 'Nam Joo-hyuk'  , 'Free Wifi, Free Food and Free Entertainment' , 'Salto Chico – Patagonia' , 7461 , 94500000 , 'New Jersey'),
('MCD0889154' , 135 , 'Hot Sale' , 'St. Petersburg' , 'Lisa'  , 'Bigger Gift For Vip Customer' , 'InterContinental Hotels' , 4644 , 79100000 , 'Gwacheon'),
('MCD0889155' , 320 , 'Future Trip' , 'Seoul' , 'Kim Ji-Soo'  , 'Free Resort Fee And Park Fee' , 'Hotel Del Luna' , 8913 , 45000000 , 'Amazing'),
('MCD0889156' , 240 , 'Sold Out' , 'Gdansk' , 'Zheng Shuang'  , 'Ticket Discount 50% For Anything In Saint Laurent', 'Fogo Island Inn Labrador' , 9843 , 84500000 , 'Xizonion'),
('MCD0889157' , 280 , 'Hot Sale' , 'Moscow' , 'Scarlett Johansson'  , 'Ticket Discount 50% For Anything In Fendi Store' , 'SALA SILVERMINE' , 4652 , 65000000 , 'Missouri'),
('MCD0889158' , 270 , 'Hot Sale' , 'Cairo' , 'Gia Nai Luong'  , 'Ticket Discount 50% For Everything In Prada Store' , 'Hilton Worldwide' , 5216 , 56000000 , 'Delaware'),
('MCD0889159' , 230 , 'Future Trip' , 'Kyoto' , 'Bae Suzy'  , 'Ticket Discount 50% For Everything In Agent Provocateur Store' , 'The Rezidor Hotel' , 6894 , 61200000 , 'Georgia' ),
('MCD0889160' , 490 , 'Future Trip' , 'Labadee' , 'Emma Wattson'  , 'Ticket Discount 50% For Everything In Balenciaga Store' , 'Quinn' , 6921 , 150000000 , 'Vermont'),
('MCD0889161' , 410 , 'Hot Sale' , 'Mozambique' , 'Emma Wattson' , 'Free Present For Every Customer' , 'Starwood Hotels and Resorts' , 6120 , 110000000 , 'New Jersey'),
('MCD0889162' , 250 , 'Future Trip' , 'London' , 'Chris Hemsworth'  , 'Free Wifi, Free Food and Free Entertainment', 'InterContinental Hotels' , 8943 , 44500000 , 'LinQ'),
('MCD0889163' , 159 , 'Hot Sale' , 'New York' , 'Kim Soo Hyun'  , 'Neil Barett For Every Customers' , 'Hotel Del Luna' , 9523 , 62000000 , 'Raizent'),
('MCD0889164' , 260 , 'Sold Out', 'Rio De Janeiro' , 'Kim Ji-Soo'  , 'Salvatore Ferragamo For Every Customers' , 'Quinn' , 4923 , 45000000 , 'Pennsylvania'),
('MCD0889165' , 310 , 'On Sale' , 'Venice' , 'Bae Suzy'  , 'Ticket Discount 50% For Anything In Saint Laurent' , 'La Mamounia' , 5912 , 84600000 , 'Virginia'),
('MCD0889166' , 290 , 'Hot Sale' , 'Fatucama Peninsula' , 'Im Yoon Ah'  , 'Free Return Tickets' , 'Cipriani & Palazzo Vendramin' , 15062 , 91600000 , 'Suncheon'),
('MCD0889167' , 240 , 'Future Trip' , 'Kalemegdan' , 'Kim Ji Won'  , 'Ticket Discount 50% For Everything In Prada Store' , 'Fogo Island Inn Labrador' , 7943 , 26000000, 'Michigan'),
('MCD0889168' , 260 , 'Future Trip' , 'Mandalay' , 'Gong Yoo'  , 'Ticket Discount 50% For Anything In Burberry' , 'LITTLE KULALA' , 9431 , 66560000 , 'Peninsula'),
('MCD0889169' , 190 , 'Sold Out' , 'Misti Volcano' , 'Moon Chae Won'  , 'Free Wifi, Free Food and Free Entertainment' , 'AZUR LODGE' , 7964 , 64300000 , 'New Jersey'),
('MCD0889170' , 230 , 'Hot Sale' , 'Grindelwald', 'Park Min Young'  , 'Free Resort Fee And Park Fee'  , 'Nesjavellir' , 4913 , 77500000 , 'Xizonion'),
('MCD0889171' , 290 , 'Hot Sale' , 'Isetwald' , 'Tom Cruise'  , 'Free Present For Every Customer' , 'Salto Chico – Patagonia' , 5981 , 51300000 ,'Virginia'),
('MCD0889172' , 340 , 'Future Trip' , 'Stuttgart' , 'Ji Chang Wook'  , 'Neil Barett For Every Customers' , 'Anantara Al Jabal Al Akhdar' , 8641 , 68400000 , 'Georgia'),
('MCD0889173' , 160 ,  'Future Trip' , 'Maria Cathedral' , 'Hyun Bin'  , 'Free Fee Hotels' , 'Jade Mountain – Soufriere', 6418 , 61500000 , 'Alaska');
select * from accomodation
INSERT INTO ChuyenDi (MaChuyen , SoLuong , TinhTrang , TenDiaDiem , HuongDanVien , DichVuFree , TENSOHUU , LuotThich , GIAIEN , TenDaiLy) values
('MCD0889174' , 190 , 'Future Trip' , 'Lviv' , 'Scarlett Johansson' , 'Free Return Tickets' , 'WHITEPOD HOTEL', 2613, 18000000 , 'Michigan' ),
('MCD0889175' , 265 , 'Hot Sale' , 'Odessa' , 'Chadwick Boseman' , 'Ticket Discount 50% For Anything In Gucci Store', 'SALA SILVERMINE' , 7646 , 65000000 , 'Peninsula'),
('MCD0889176' , 340 , 'Sold Out' , 'Oku Mountain' , 'Adele' , 'Free Resort Fee And Park Fee' , 'Negresco' , 14031 , 78000000 , 'Alaska'),
('MCD0889177' , 510 , 'On Sale' , 'Mauritius' , 'Justin Bieber' , 'Ticket Discount 50% For Anything In Saint Laurent' , 'Starwood Hotels and Resorts' , 4319 , 85000000 , 'Peninsula'),
('MCD0889178' , 290 , 'Future Trip' , 'Inhambane' , 'Justin Bieber' , 'Ticket Discount 50% For Anything In Fendi Store' , 'Taj palace' , 8315 , 71000000 , 'LinQ'),
('MCD0889179' , 462 , 'Sold Out' , 'Maputo Church', 'Bae Joo-Hyun' , 'Free Present For Every Customer' , 'AZUR LODGE' ,20321 , 21500000 , 'Virginia'),
('MCD0889180' , 640 , 'Future Trip', 'Sydney' , 'Bae Joo-Hyun' , 'Neil Barett For Every Customers' , 'THE DATAI LANGKAWI' , 12031 , 56000000 , 'Amazing'),
('MCD0889181' , 665 , 'Hot Sale' , 'Venice' , 'Bae Joo-Hyun' , 'Free Fee Hotels' , 'DES PÊCHEURS' , 5651 , 84200000 , 'Vermont'),
('MCD0889182' , 445 , 'Hot Sale' , 'Maria Cathedral' , 'Kang Han Na' , 'Ticket Discount 50% For Anything In Gucci Store' , 'HOTEL DE GLACE'  , 16121 , 45000000 , 'Peninsula'),
('MCD0889183' , 225 , 'Future Trip' , 'Amsterdam' , 'Camila Cabello' , 'Bigger Gift For Vip Customer' , 'LITTLE KULALA' , 4413 , 65000000 , 'Michigan'),
('MCD0889184' , 415 , 'Future Trip' , 'Beijing' , 'Chadwick Boseman' , 'Salvatore Ferragamo For Every Customers' , 'Fogo Island Inn Labrador' , 7689 , 46000000 , 'Alaska'),
('MCD0889185' , 165 , 'Future Trip' , 'Venice' , 'Kang Ha-Neul' , 'Free Present For Every Customer' , 'Fogo Island Inn Labrador' , 64612 , 85000000 , 'Raizent' ),
('MCD0889186' , 195 , 'Sold Out' , 'Cusco' , 'Selena Gomez' , 'Free Fee Hotels' , 'Salto Chico – Patagonia' , 16112 , 59000000 , 'Xizonion'),
('MCD0889187' , 225 , 'Hot Sale' , 'Cusco' , 'Shawn Mendes' , 'Neil Barett For Every Customers' , 'AZUR LODGE' , 12003 , 61000000 , 'LinQ'),
('MCD0889188' , 290 , 'Sold Out' , 'Inhambane' , 'Kang Ha-Neul' , 'Ticket Discount 50% For Anything In Burberry' , 'Anantara Al Jabal Al Akhdar' , 8931 , 76000000 , 'Raizent'),
('MCD0889189' , 310 , 'Future Trip', 'Misti Volcano' , 'Pornnappan Pornpenpipat' , 'Free Return Tickets' , 'Wyndham Hotel' , 15321 , 56000000 , 'LinQ'),
('MCD0889190' , 305 , 'Future Trip' , 'Maputo Church' , 'Charlie Puth', 'Free Present For Every Customer' , 'Home Inns' , 8461 , 23000000 , 'Gwacheon'),
('MCD0889191' , 150 , 'Hot Sale' , 'Kilimanjaro' , 'Pornnappan Pornpenpipat', 'Free Wifi, Free Food and Free Entertainment' , 'Le Pavillon' , 12304 , 49500000 , 'Alaska'),
('MCD0889192' , 220 , 'Sold Out' , 'Venice' , 'Son Ye Jin' , 'Free Resort Fee And Park Fee' , 'Cipriani & Palazzo Vendramin' , 4613 , 46000000 , 'Peninsula'),
('MCD0889193' , 195 , 'Sold Out' , 'Oku Mountain' , 'Charlie Puth' , 'Bigger Gift For Vip Customer' , 'La Mamounia' , 7964 , 51000000 , 'Amazing'),
('MCD0889194' , 180 , 'On Sale' , 'New York' , 'Son Ye Jin' , 'Discount 25% For Total Fee' , 'Okutaku Villa' , 9461 , 35000000 ,'Suncheon'),
('MCD0889195' , 175 , 'Future Trip' , 'Talin' , 'Kim Woo Bin' , 'Discount 20% For Total Fee', 'Gstaad' , 4942 , 45000000 , 'Peninsula' ),
('MCD0889196' , 220 , 'Sold Out' , 'Berlin' , 'Taylor Swift' , 'Ticket Discount 50% For Everything In Balenciaga Store' , 'Centara Grand Beach', 19641 , 64600000 , 'Suncheon'), 
('MCD0889197' , 250 , 'Sold Out' , 'Paris' , 'Tom Cruise' , 'Discount 25% For Total Fee' , 'Negresco' , 9431 , 89150000 , 'Raizent'),
('MCD0889198' , 165 , 'Hot Sale' , 'Larnaca' , 'Scarlett Johansson' , 'Free Present For Every Customer' , 'Uluru, Northern Territory'  , 8461 , 42100000 , 'Gwacheon'),
('MCD0889199' , 280 , 'Hot Sale' , 'Sydney' , 'Shin Se Kyung' , 'Salvatore Ferragamo For Every Customers' , 'Nesjavellir' , 7653 , 35000000 , 'Raizent'),
('MCD0889200' ,260 , 'Future Trip' , 'Affins' , 'Wallace Huo' , 'Free Resort Fee And Park Fee' , 'Hyatt Hotels' , 6531 , 45100000 , 'Suncheon'),
('MCD0889201' , 310 , 'Sold Out' , 'Moscow' , 'Wallace Huo' , 'Free Accomodation Fee' , 'Jade Mountain – Soufriere' , 4510 , 42000000 , 'Amazing'),
('MCD0889202' , 285 , 'On Sale'  , 'Stuttgart' , 'Kathryn Newton' , 'Bigger Gift For Vip Customer' , 'Salto Chico – Patagonia' , 8461 , 65100000 , 'Michigan'),
('MCD0889203' , 195 , 'Sold Out' , 'Isetwald' , 'Robert Downey Jr', 'Free Present For Every Customer' , 'Hotel Del Luna' , 13201 , 68900000 , 'Alaska'),
('MCD0889204' , 265 , 'Hot Sale' , 'Sharm El Sheikh' , 'Cao Xuan Tai' , 'Free Fee Hotels' , 'Cape Grace' , 8641 , 34300000 , 'Raizent'),
('MCD0889205' , 345 , 'Future Trip' , 'Budapest' , 'Marco Reus' , 'Free Resort Fee And Park Fee' , 'Dolder Grand Zurich' , 8452 , 41000000 , 'Amazing'),
('MCD0889206' , 260 , 'Sold Out' , 'Skadarlija' , 'Seo Ye Ji' , 'Free Accomodation Fee' , 'Negresco' , 15613 , 13000000 , 'Raizent'),
('MCD0889207' , 190 , 'Sold Out' , 'Bangkok' , 'Kim Woo Bin' , 'Discount 25% For Total Fee' , 'Gstaad' , 8643 , 25000000 , 'Suncheon'),
('MCD0889208' , 210 , 'Hot Sale' , 'Vienna' , 'Kim Yoo Jung' , 'Free Present For Every Customer' , 'Centara Grand Beach' , 12603 , 31000000 , 'Gwacheon'),
('MCD0889209' , 255 , 'On Sale' , 'Odessa' , 'Son Ye Jin' , 'Free Return Tickets' , 'Dasan' , 6041 , 15000000 , 'Alaska'),
('MCD0889210' , 215 , 'On Sale' , 'Lviv' , 'Tom Cruise' , 'None' , 'HOTEL DE GLACE' , 3569 , 94500000 , 'Alaska'),
('MCD0889211' , 745 , 'Future Trip' , 'Zurich' , 'Kim So Hyun' , 'Free Fee Hotels' , 'Dolder Grand Zurich' , 7646,65000000,'Vermont');



SELECT * FROM ChuyenDi
-----------------------------------------------------------------------------------------------------------

create Table HuongDanvien (
	HuongDanVien varchar (50) primary key ,
	Ngaysinh date ,
	SoDienThoai int , 
	DiaChi varchar (100),
	Emails varchar (100),
	AnhHuongDan varbinary(max) ,
	
)
alter table HuongDanVien add unique(SoDienThoai)

insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
SELECT 'Emma Wattson' ,'1990-4-15', 083441564 , 'Pa-ri, France', 'Emma@yanidex.com', BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Emma.jpg', SINGLE_BLOB) as picture --Wattson -- 3
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
SELECT 'Chris Evan' ,'1981-6-13' , 416314352 , 'Boston, Massachusetts, The United State', 'Chrise@yisli.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Evan.jpg', SINGLE_BLOB) as picture --Chris Evan -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
Select 'Chadwick Boseman' , '1976-11-29' , 464313135 , ' Anderson, South Carolina, The United State' , 'pantherforever@gitlab.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Forever.jpg', SINGLE_BLOB) as picture --Chadwick Boseman -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Kim Go Eun' , '1991-7-2' , 135432153 , 'Seoul, Korean' ,'bombom@digiever.com',  BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\GoEun.jpg', SINGLE_BLOB) as picture --Kim Go Eun -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Adele' , '1988-5-5' , 163213323 , 'Tottenham, London, The United Kingdom', 'adele@skected.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Adele.jpg', SINGLE_BLOB) as picture --Adele -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Justin Bieber' , '1994-3-1', 464313313 , 'St. Josephs Hospital, London, Canada', 'babybieber@amazon.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Bieber.jpg', SINGLE_BLOB) as picture --Justin Bieber -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Camila Cabello' , '1997-3-3' , 464654565 , 'Cojímar, Cu-ba','bello@kindwood.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Camilla.jpg', SINGLE_BLOB) as picture --Camilla Cabello -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Gong Yoo' , '1979-7-10' , 161335466 , 'Busan, South Korea', 'yoo@hyosung.cpom' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Gong Yoo.jpg', SINGLE_BLOB) as picture --Gong Yoo -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Chung Han Liang' , '1974-11-30' , 128121226 , 'British, Hong Kong', '致相关人士@gmail.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\HanLuong.jpg', SINGLE_BLOB) as picture --Chung Han Luong -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Kang Han Na' , '1989-1-30' , 123346189 , 'Seoul, South Korea', 'kimmy.kim@celltrion.com', BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\HanNA.jpg', SINGLE_BLOB) as picture --Kang Han Na -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Kang Ha-Neul' , '1990-2-21' , 991631331 , 'Busan, South Korea', 'gtsai@its.jni.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\HaNuel.jpg', SINGLE_BLOB) as picture --Kang Ha Nuel -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Chris Hemsworth' , '1983-8-11' , 656649164 , 'Melbourne, Australia', 'gorthlke@icloud.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\hemworth.jpg', SINGLE_BLOB) as picture --Chris Hemworth -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Hyun Bin' , '1982-9-25' , 168413146 , 'Jamsilbon-dong, Seoul, South Korean' , 'crashland@emerson.iji.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Huyn Bin.jpg', SINGLE_BLOB) as picture --Hyun Bin -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Bae Joo-Hyun' , '1991-3-29' ,359494134 , 'Buk-gu, Daegu, South Korea', 'baejoo@damsan.com' ,  BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Irene.jpg', SINGLE_BLOB) as picture --Irene (Bae Joo-Hyun) -- 3
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Lee Ji-Eun' , '1993-5-16' , 461320031 , 'Gwangjin-gu, Seoul, South Korea', 'IUSing@rso.ini.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\IU.jpg', SINGLE_BLOB) as picture --Lee Ji-Eun -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Kim Ji-Soo' , '1995-1-3' , 631100319 , ' Sanbon-dong, Gunpo, South Korea' , 'jisoo_bp@gmail.com' ,  BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Jisoo.jpg', SINGLE_BLOB) as picture --Kim Ji-Soo -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Kim Ji Won' , '1992-10-19' , 564696994 , 'Geumcheon-gu, Seoul, South Korea' , 'jiwonjiwon@dansan.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\JiWon.jpg', SINGLE_BLOB) as picture --Kim Ji Won -- 3
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Lee Jong Suk' , '1989-10-14' , 216161619 , ' Yongin, South Korea' , 'doctorstranger@bizan.jins.com' ,  BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\JongSuk.jpg', SINGLE_BLOB) as picture --Lee Jong Suk -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Nam Joo-hyuk' , '1994-2-22' , 1319463131 , 'Dongsam-dong, Busan, South Korea' ,'dosan@sns.cn.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\JooHyun.jpg', SINGLE_BLOB) as picture --Nam Joo-Hyuk -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Lee Joon-Gi' , '1982-4-17' , 464616191 , 'Busan, South Korea', 'Wangso@init.echo.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\JoonGi.jpg', SINGLE_BLOB) as picture --Lee Joon-Gi -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Kim Bum' , '1989-7-7' , 065618944 , 'Mapo-gu, Seoul, South Korea' , 'BoemKim@gmail.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Kim Boem.jpg', SINGLE_BLOB) as picture --Kim Bum -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Kim Soo Hyun' , '1988-2-16'  , 2135411653 , 'Seoul, South Korea', 'SooSooHyun@skttel.t1.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Kim Soo Hyun.jpg', SINGLE_BLOB) as picture --Kim Soo Hyun -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Lisa' , '1997-3-27' , 191316160 , 'Buriram, Thailand' , 'lisaaaaaaa@yahoo.com', BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Lisa.jpg', SINGLE_BLOB) as picture --Lisa -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Shin Min Ah' , '1984-4-5' , 169594129 , ' Yatap 1 (il) -dong, Seongnam, South Korea', 'MinAhMin@iandon.cn.com' ,  BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\MinAh.jpg', SINGLE_BLOB) as picture --Shin Min Ah -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Moon Chae Won' , '1986-11-13' , 594612168 , 'Daegu, South Korea', 'ChaeWonwan@gmail.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\MoonChaeWon.jpg', SINGLE_BLOB) as picture --Moon Chae Won -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Gia Nai Luong' , '1984-4-12' , 262191641 , 'Harbin, China', 'Landi@gmail.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\NaiLuong.jpg', SINGLE_BLOB) as picture --Gia Nai Luong -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Scarlett Johansson' , '1984-11-22' , 611613003 , 'Manhattan, New York City, New York State, The United State' , 'Blackwindow@gmail.inc.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\ScarrletJohansson.jpg', SINGLE_BLOB) as picture --Scarlett Johanson -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Shin Se Kyung' , '1990-7-29' , 033691261 , 'Yangcheon-gu, Seoul, South Korea', 'KyungWook@icloud.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\SeKyung.jpg', SINGLE_BLOB) as picture --Shin Se Kyung -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
SELECT 'Park Bo Gum' ,  '1993-6-16' , 16163131 , 'Mok-dong, Seoul, Korean' , 'Leeyoung@sktt1.com' ,BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Bo Gum.jpg', SINGLE_BLOB) as picture --Park Bo Gum -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
SELECT 'Ji Chang Wook' , '1987-7-5' , 94613163 , 'Anyang, Korean' , 'Wookie@gmail.com', BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\ChangWook.jpg', SINGLE_BLOB) as picture --Ji Chang Wook -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
SELECT 'Lee Dong Wook' , '1981-11-6' , 46941364 , ' Seoul, Korean' , 'wangjeon@gmail.com' ,  BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\DongWook.jpg', SINGLE_BLOB) as picture --Lee Dong Wook -- 2 
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
SELECT 'Elle Fanning' , '1998-4-9' , 16594564 , 'Conyers, Georgia, The United Stated' , 'Elle@icloud.com' ,  BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Elle Fanning.jpg', SINGLE_BLOB) as picture --Elle Fanning -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
SELECT 'Arianna Grande' ,'1993-6-26', 113441564 , 'Boca Raton, Florida, The United State', 'grandeAri@twii.com', BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Ariana.jpg', SINGLE_BLOB) as picture --Arianna Grande -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Selena Gomez' , '1992-7-22' , 016313646 , 'Grand Prairie, Texas, The United State' , 'Selena.imad@gmail.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\SelenaGomez.jpg', SINGLE_BLOB) as picture --Selena Gomez -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Seo Dan' , '1986-2-18' , 065313119 , 'Pyongyang, Pyongyang, North Korea' , 'flythekind.dan.seo@gmail.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\SeoDan.jpg', SINGLE_BLOB) as picture --Seo Dan -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Seo Ye Ji' , '1990-4-6' , 913160331 , 'Seoul, South Korea' , 'yeji.seo@damsan.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\SeoYeJi.jpg', SINGLE_BLOB) as picture --Seo Ye Ji -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
SELECT 'Shawn Mendes', '1998-8-8' , 135549135 , 'Pickering, Canada' , 'bella.bella@msg.box.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\ShawnMendes.jpg', SINGLE_BLOB) as picture --Shawn Mendes -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
SELECT 'Kim So Hyun' , '1999-6-4' , 013169113 , ' Australia' , 'loovelolve.dreamgirls@gmail.com' ,  BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\So Huyn.jpg', SINGLE_BLOB) as picture --Kim So Hyun -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
Select 'Son Ye Jin' , '1982-1-11' , 030500312 , 'Sang-dong, Daegu, South Korea' , 'seri.rieis.choice@gmail.com',  BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Son Ye Jin.jpg', SINGLE_BLOB) as picture --Son Ye Jin -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
SELECT 'Taylor Swift' , '1989-12-13', 066613884 , 'West Reading, Pennsylvania, The United State' , 'taylortaylor.swiff@gmail.com', BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Taylor.jpg', SINGLE_BLOB) as picture --Taylor Swift -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Tom Cruise' , '1962-7-3' , 041216811 , 'Syracuse, State of New York, The United State' , 'misspossible.im@yandex.inc.com' ,  BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Tom Cruise.jpg', SINGLE_BLOB) as picture --Tom Cruise -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Zheng Shuang' , '1991-8-22' , 051605003 , 'Shenyang, China' , 'boivyvy.trinhsang@gmasl.ccc.vn' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\TrinhSang.jpg', SINGLE_BLOB) as picture --Zheng Shuang -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Kim Woo Bin' , '1989-7-16' , 065452320 , 'Seoul, South Korea' , 'woo.bin@gmail.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\WooBin.jpg', SINGLE_BLOB) as picture --Kim Woo Bin -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Cao Xuan Tai' , '1995-12-05' , 062303200 , 'DaNang , Viet Nam' , 'namvuong.thegioi@gmail.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\XuanTai.jpg', SINGLE_BLOB) as picture --Cao Xuan Tai -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Yang Yang' , '1991-9-9' , 106032311 , 'Shanghai, China' , 'tieunai.yangyang@gmail.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\YangYang.jpg', SINGLE_BLOB) as picture --Yang Yang -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Kim Yoo Jung' , '1999-9-22' , 206632312 , 'Geumho-dong, Sokcho, South Korea' , 'yoojung.css@gmail.cnn.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\YooJung.jpg', SINGLE_BLOB) as picture --Kim Yoo Jung -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Im Yoon Ah' , '1990-5-30', 309620631 , 'Daerim-dong, Seoul, South Korea','yoona.cutelove@gmail.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Yoona.jpg', SINGLE_BLOB) as picture --Im Yoon Ah -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Pornnappan Pornpenpipat' , '1997-6-25' , 062161611 , 'Bangkok, Thailand' , 'trinhnaihinh.nene@gmail.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Nene.jpg', SINGLE_BLOB) as picture --Pornnappan Pornpenpipat -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Kathryn Newton' , '1997-2-8' , 326202303 , 'Orlando, Florida, The United State' , 'pikachu.newton@gmail.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\NewTon.jpg', SINGLE_BLOB) as picture --Kathryn Newton -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Elizabeth Olsen' , '1989-2-16' , 065201009 , 'Sherman Oaks, Los Angeles, California, The United State' , 'Scarletwitch.olse@gmail.cnn.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Olsen.jpg', SINGLE_BLOB) as picture --Elizabeth Olsen -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Park Min Young' , '1986-3-4' , 062166006 , 'Seoul, South Korea' , 'kim.misoo@damsan.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\ParkMinYoung.jpg', SINGLE_BLOB) as picture --Park Min Young -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Robert Pattinson' , '1986-5-13' , 036206156 , ' London, The United Kingdom' , 'edward.cullen@gmail.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Pattinson.jpg', SINGLE_BLOB) as picture --Robert Pattinson -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Charlie Puth' , '1991-12-2' , 063032990 , 'Rumson, New Jersey, The United State' , 'gomez.lovelyselena@gmail.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Puth.jpg', SINGLE_BLOB) as picture --Charlie Puth -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Marco Reus' , '1989-5-31' , 024654169 , 'Dortmund, Germany' , 'only.dortmund@yandex.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Reus.jpg', SINGLE_BLOB) as picture --Marco Reus -- 2
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Robert Downey Jr' , '1965-4-4' , 111111111 , 'Manhattan, New York City, New York State, The United State' , 'tony.stark@vinux.cnn.com',  BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\RobertJr.jpg', SINGLE_BLOB) as picture --Robert Downey Jr -- 1
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Bae Suzy' , '1994-10-10' , 095031633 , 'Gwangju , South Korea', 'Seo.dami@damsan.cnn.com' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\Suzy.jpg', SINGLE_BLOB) as picture --Bae Suzy -- 3
insert into HuongDanvien (HuongDanVien , Ngaysinh , SoDienThoai , DiaChi , Emails , AnhHuongDan)
select 'Wallace Huo' , '1979-12-26' , 062512360 , 'Taipei , Taiwan' , '霍建华.霍建华@gmail.com' ,  BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Image Host\HoacKienHoa.jpg', SINGLE_BLOB) as picture --Wallace Huo -- 2

-----------------------------------------------------------------------------------------------------------

create TABLE TRIPAVAILABLE(
	
	TenDiaDiem varchar (30) primary key,
	PhongCanh image ,

) 

insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Cairo' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Cairo.jpg', SINGLE_BLOB) as picture -- Cairo -- 3
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Bangkok' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Bangkok.jpg', SINGLE_BLOB) as picture -- Bangkok -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'New York' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\NewYork.jpg', SINGLE_BLOB) as picture -- New York -- 4
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Budapest' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Budapest.jpg', SINGLE_BLOB) as picture -- Budapest -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'London' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\London.jpg', SINGLE_BLOB) as picture -- London -- 3
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Paris' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Paris.jpg', SINGLE_BLOB) as picture -- Paris -- 3
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Berlin' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Berlin.jpg', SINGLE_BLOB) as picture -- Berlin -- 3
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Gdansk' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Gdansk.jpg', SINGLE_BLOB) as picture -- Gdansk -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Talin' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Talin.jpg', SINGLE_BLOB) as picture -- Talin -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Beijing' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Beijing.jpg', SINGLE_BLOB) as picture -- Beijing -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Rio De Janeiro' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\RioDe.jpg', SINGLE_BLOB) as picture -- Rio De Janeiro -- 3
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Affins' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Affins.jpg', SINGLE_BLOB) as picture -- Affins -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Larnaca' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Larnaca.jpg', SINGLE_BLOB) as picture -- Larnaca -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Sharm El Sheikh' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\SharmElSheikh.jpg', SINGLE_BLOB) as picture -- Sharm El Sheikh -- 1
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Vienna' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Vienna.jpg', SINGLE_BLOB) as picture -- Vienna -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Amsterdam' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Amsterdam.jpg', SINGLE_BLOB) as picture -- Amsterdam -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Odessa' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Odessa.jpg', SINGLE_BLOB) as picture -- Odessa -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'St. Petersburg' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\St.Petersburg.jpg', SINGLE_BLOB) as picture -- St. Petersburg -- 1
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Moscow' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Moscow.jpg', SINGLE_BLOB) as picture -- Moscow -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Lviv ' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Lviv.jpg', SINGLE_BLOB) as picture -- Lviv -- 1
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Sydney' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Sydney.jpg', SINGLE_BLOB) as picture -- Sydney -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Kyoto' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Kyoto.jpg', SINGLE_BLOB) as picture -- Kyoto -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Seoul' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Seoul.jpg', SINGLE_BLOB) as picture -- Seoul -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Venice' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Venice.jpg', SINGLE_BLOB) as picture -- Venice -- 3
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Stuttgart' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Stuttgart.jpg', SINGLE_BLOB) as picture -- Stuttgart -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Mauritius' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Mauritius.jpg', SINGLE_BLOB) as picture -- Mauritius -- 3
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Mandalay' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Mandalay.jpg', SINGLE_BLOB) as picture -- Mandalay -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Isetwald' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Isetwald.jpg', SINGLE_BLOB) as picture -- Isetwald -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Sigriswil Urban' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Sigriswil.jpg', SINGLE_BLOB) as picture -- Sigriswil Urban -- 1
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Grindelwald' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Grindelwald.jpg', SINGLE_BLOB) as picture -- Grindelwald -- 1
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Obwalden' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Obwalden.jpg', SINGLE_BLOB) as picture -- Obwalden -- 1
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Zurich' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Zurich.jpg', SINGLE_BLOB) as picture -- Zurich -- 1
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Jeju Island' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Jeju.jpg', SINGLE_BLOB) as picture -- Jeju Island -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Zanzibar' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Zanzibar.jpg', SINGLE_BLOB) as picture -- Zanzibar -- 1
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Labadee' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Labadee.jpg', SINGLE_BLOB) as picture -- Labadee -- 1
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Mozambique' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Mozambique.jpg', SINGLE_BLOB) as picture -- Mozambique -- 1
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Cusco' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Cusco.jpg', SINGLE_BLOB) as picture -- Cusco -- 3
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Oku Mountain' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Oku.jpg', SINGLE_BLOB) as picture -- Oku Mountain -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Kilimanjaro' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Kilimanjaro.jpg', SINGLE_BLOB) as picture -- Kilimanjaro -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Fatucama Peninsula' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Fatucama Peninsula.jpg', SINGLE_BLOB) as picture -- Fatucama Peninsula -- 1
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Inhambane' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Inhambane.jpg', SINGLE_BLOB) as picture -- Inhambane -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Misti Volcano' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Misti.jpg', SINGLE_BLOB) as picture -- Misti Volcano -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Bazaruto Island' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Bazaruto.jpg', SINGLE_BLOB) as picture -- Bazaruto Island -- 1
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Titicaca Lake' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Titicaca.jpg', SINGLE_BLOB) as picture -- Titicaca Lake -- 1
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Petrovaradin' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Petrovaradin.jpg', SINGLE_BLOB) as picture -- Petrovaradin -- 1
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Maputo Church' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Maputo.jpg', SINGLE_BLOB) as picture -- Maputo Church -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Kalemegdan' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Kalemegdan.jpg', SINGLE_BLOB) as picture -- Kalemegdan -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Skadarlija' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Skadarlija.jpg', SINGLE_BLOB) as picture -- Skadarlija -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Maria Cathedral' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Maria Cathedral.jpg', SINGLE_BLOB) as picture -- Maria Cathedral -- 2
insert into TRIPAVAILABLE (TenDiaDiem , PhongCanh)
Select 'Serengeti' , BulkColumn From OPENROWSET(BULK 'D:\Lesson\RIT\C #\ABC\QuanLyCongTyDuLich\Place\Serengeti.jpg', SINGLE_BLOB) as picture -- Serengeti -- 2

-----------------------------------------------------------------------------------------------------------

create Table ACCOMODATION(
	
	HinhThuc varchar (30) , 
	TenSoHuu varchar (30) PRIMARY KEY,
)

insert into ACCOMODATION( HinhThuc , TenSoHuu ) values
( 'Villa' , 'Okutaku Villa'),
( 'Hotel' , 'Hotel Del Luna'),
( 'Motel' , 'Dasan'),
( 'House' , 'Quinn'),
('Hotel' , 'Marriott International'),
('Hotel' , 'Hilton Worldwide');
insert into ACCOMODATION( HinhThuc , TenSoHuu ) values
('Hotel' , 'Negresco'),
('Hotel' , 'Cipriani & Palazzo Vendramin'),
('Hotel' , 'Copacabana');
insert into ACCOMODATION( HinhThuc , TenSoHuu ) values
('Hotel' , 'Ritz Paris'),
('Palace' , 'Taj palace'),
('Hotel' , 'Cape Grace'),
('Hotel' , 'Casa Fuster'),
('Hotel' , 'Dolder Grand Zurich'),
('Palace' , 'Gstaad'),
('Resort' , 'Centara Grand Beach'),
('Resort' ,'La Mamounia'),
('Palace' , 'The Langham London'),
('Hotel' , 'Le Pavillon');
insert into ACCOMODATION (HinhThuc , TenSoHuu) values
('Resort' , 'LITTLE KULALA'),
('Resort' , 'NAKA PHUKET'),
('Resort' , 'THE DATAI LANGKAWI'),
('Hotel' , 'DES PÊCHEURS'),
('Resort' , 'AZUR LODGE'),
('Resort' , 'POSEIDON UNDERSEA '),
('Resort' , 'OKUMA PRIVATE BEACH'),
('Hotel' , 'ATTRAP REVES'),
('Hotel' , 'SALA SILVERMINE'),
('Hotel' , 'WHITEPOD HOTEL'),
('Hotel' , 'HOTEL DE GLACE'),
('Hotel' , 'Home Inns'),
('Hotel' , 'Choice Hotels International'),
('Hotel' , 'The Rezidor Hotel'),
('Hotel' , 'Hyatt Hotels'),
('Hotel' , 'Wyndham Hotel '),
('Hotel' , 'Accor'),
('Resort' , 'Starwood Hotels and Resorts'),
('Hotel' , 'InterContinental Hotels'),
('Hotel' , 'Nesjavellir'),
('Resort' , 'Anantara Al Jabal Al Akhdar'),
('Villa' , 'Salto Chico – Patagonia'),
('Homestay' , 'Fogo Island Inn Labrador'),
('Hotel' , 'Marincanto – Positano'),
('Resort' , 'Jade Mountain – Soufriere'),
('Hotel' , 'Kumaon – Uttarakhand'),
('Resort' , 'Uluru, Northern Territory');

-----------------------------------------------------------------------------------------------------------

create table Account(
	
	ADMINNAME varchar(30) primary key,
	PASSWORDADMIN varchar (30),
)

insert into Account (ADMINNAME , PASSWORDADMIN) values 
('singlake' , 7842391330 ),
('cullen' , 28121999),
('songngannguyen' , 19102000),
('christopherohit' , 05122000),
('huynhnhunguyen' , 28121999),
('QuinnTran' , 20032000)

-----------------------------------------------------------------------------------------------------------

create table AccountForClient(
	TENTAIKHOAN varchar (30) PRIMARY KEY ,
	Emails varchar (30) ,
	MATKHAU varchar (30) ,
)

ALTER TABLE dbo.AccountForClient ADD UNIQUE(Emails)

insert into AccountForClient (TENTAIKHOAN ,Emails , MatKhau ) values
('sieuta','burden@icloud.com' , '846223150' ),
('dinhhuuthanhnguyen' , 'wibu@gmail.com' , 'wiburerach'),
('nguyendangtanhung' , 'caotodenhoi@icloud.com' , 'alo123alo'),
('hendrichscullen' , 'cohota@icloud.com', '2812199920032000');

insert into AccountForClient (Tentaikhoan , emails , matkhau) values
('huynhtrongphuc' , 'phuc.lun@gmail.ins.com' , '29102002'),
('hanhathuy', 'huyha@gmail.com' , 'abcxyz0519'),
('nguyenduchung' , 'hungciuto@icloud.com' , '78562553'),
('doanchilinh' , 'viemass@gmail.com' , '51653216'),
('nguyenmainghiem' , 'toxicgamerWgmail.com' , '12345678900');

-----------------------------------------------------------------------------------------------------------

create table InforBookTrip (
	MaHoaDon char(10) primary key ,
	TenTaiKhoan varchar (30),
	Machuyen char (10),
	NgayGio date,

	foreign key (MaChuyen) references ChuyenDi (MaChuyen),
	foreign key (TenTaiKhoan) references AccountForClient (TenTaiKhoan)
)

insert into InforBookTrip (MaHoaDon , TENTAIKHOAN , MaChuyen, NgayGio) values 
('MHD0788411' , 'Sieuta' , 'MCD0889110' , '2020-12-06' );

-----------------------------------------------------------------------------------------------------------

create trigger KiemTraSoluongHanhKhach
on ChuyenDi
	after insert
as
begin
	if exists (select * from inserted where SoLuong <0)
	begin
	rollback tran
	print 'The Amount of Customers For This Trip not Suitables. Please Try Another Inputs Method'
	end
	else print 'Insert Successfully'
end

select TenDiaDiem , TinhTrang, HuongDanVien ,DichVu , TenSoHuu , Giaien , TenDaiLy
FROM dbo.TRIPAVAILABLE trip, dbo.ChuyenDi cd, dbo.InforBookTrip ibt
WHERE trip.TenDiaDiem = cd.TenDiaDiem
AND	cd.MaChuyen = ibt.MaChuyen
AND ibt.TENTAIKHOAN = 'sieuta'

select go.TenDaiLy, go.TenDiaDiem , ibt.TenTaiKhoan , go.HuongDanVien, go.DichVuFree , go.Giaien from TripAvailable trip , ChuyenDi go , InforBookTrip ibt
select go.TenDaiLy, go.TenDiaDiem , ibt.TenTaiKhoan , go.HuongDanVien, go.DichVuFree , go.Giaien from TripAvailable trip , ChuyenDi go , InforBookTrip ibt 
select go.TenDaiLy, go.TenDiaDiem , ibt.TenTaiKhoan , go.HuongDanVien, go.DichVuFree , go.Giaien from TripAvailable trip , ChuyenDi go , InforBookTrip ibt Where  trip.TenDiaDiem = go.TenDiaDiem And go.MaChuyen = ibt.MaChuyen