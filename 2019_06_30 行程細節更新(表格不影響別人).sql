

--------------------------------------------------------
--  刪除表格
--------------------------------------------------------
Alter session set deferred_segment_creation=false;

DROP TABLE PGOrdDetails;
DROP TABLE PointGoodsOrd;
DROP TABLE PointGoods;
DROP TABLE PartList;
DROP TABLE Activity;
DROP TABLE ReportWishOrder;
DROP TABLE WishDetails;
DROP TABLE WishOrd;
DROP TABLE wishlist;
DROP TABLE WishItem;
DROP TABLE storeOrdDetails;
DROP TABLE storeOrd;
DROP TABLE items;
DROP TABLE ReportArticle;
DROP TABLE ArticleDetails;
DROP TABLE Article;
DROP TABLE ReportTrip;
DROP TABLE TripDetails;
DROP TABLE TripList;
DROP TABLE SpotList;
DROP TABLE City;
DROP TABLE Country;
DROP TABLE MemberList;

DROP TABLE AUTHORITY;
DROP TABLE ADMINISTRATOR;
DROP TABLE FUNCLIST;


DROP SEQUENCE funclist_seq;
DROP SEQUENCE administrator_seq;
DROP SEQUENCE PointGoodsOrdNo_SEQ;
DROP SEQUENCE PointGoodsNo_SEQ;
DROP SEQUENCE ActivityNo_SEQ;
DROP SEQUENCE WishOrd_seq;
DROP SEQUENCE listNo_seq;
DROP SEQUENCE itemNo_seq;
DROP SEQUENCE storeOrd_seq;
DROP SEQUENCE MemberList_seq;
DROP SEQUENCE Country_seq;
DROP SEQUENCE City_seq;
DROP SEQUENCE SpotList_seq;
DROP SEQUENCE TripList_SEQ;
DROP SEQUENCE Article_seq;
DROP SEQUENCE WishItem_seq;
DROP SEQUENCE authority_seq;

--------------------------------------------------------
--  建立會員
--------------------------------------------------------

CREATE TABLE MemberList(	
  MemNo      VARCHAR2(7)   NOT NULL PRIMARY KEY, 
  MemName    VARCHAR2(12)  NOT NULL, 
  E_mail     VARCHAR2(30)  NOT NULL UNIQUE, 
  MemPasswd  VARCHAR2(20)  NOT NULL, 
  MemPhoto   BLOB,
  NickName   VARCHAR2(12) , 
  IdNo       VARCHAR2(10) NOT NULL UNIQUE, 
  BirDay     DATE  NOT NULL,  
  Address    VARCHAR2(100), 
  Phone      VARCHAR2(15), 
  SumOfTrip      NUMBER(4,0), 
  SumOfArticle   NUMBER(4,0), 
  SumOfPoints    NUMBER(7,0) , 
  SumOfCreditsOfPurchasing    NUMBER(30,0), 
  DateOfAccountEshablished    DATE  NOT NULL, 
  Status         NUMBER(1,0)  NOT NULL);
  
CREATE SEQUENCE MemberList_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'梁睿軒','Curry@gmail.com','123456790',null,'Curry','A223456790',TO_DATE('1992-02-24','YYYY-MM-DD'),'桃園市平鎮區民族路二段175號','0987-087587','3','6','666','8888',TO_DATE('2019-02-19','YYYY-MM-DD'),'1');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'吳永志','Thompthon@gmail.com','123456792',null,'Thompthon','A223456792',TO_DATE('1995-02-19','YYYY-MM-DD'),'新竹縣竹東鎮長春路3段130號','0912-345678','1','6','666','8888',TO_DATE('2019-02-20','YYYY-MM-DD'),'1');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'游凱宇','Durant@gmail.com','123456794',null,'Durant','A223456794',TO_DATE('1991-02-25','YYYY-MM-DD'),'臺北市大安區新生南路三段96-1號','0978-078578','0','6','666','8888',TO_DATE('2019-03-21','YYYY-MM-DD'),'1');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'林信錡','Nowitzki@gmail.com','123456796',null,'Nowitzki','I223456796',TO_DATE('1994-12-09','YYYY-MM-DD'),'臺南市中西區中華西路二段38號','0922-456777','0','6','666','8888',TO_DATE('2019-03-05','YYYY-MM-DD'),'0');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'涂育銘','Jerermy@gmail.com','123456797',null,'Jerermy','A123456797',TO_DATE('1991-08-23','YYYY-MM-DD'),'高雄市前鎮區中華五路1111號','0966-345678','1','6','666','8888',TO_DATE('2019-04-23','YYYY-MM-DD'),'2');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'劉學義','Duncan@gmail.com','123456800',null,'Duncan','A223456800',TO_DATE('1990-12-23','YYYY-MM-DD'),'臺中市大里區中興路二段478號','0909-123321','0','6','666','8888',TO_DATE('2019-04-24','YYYY-MM-DD'),'1');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'吳冠宏','Kawhi@gmail.com','123456803',null,'Kawhi','A123456803',TO_DATE('1995-08-01','YYYY-MM-DD'),'嘉義市忠孝路489號','0989-654321','0','6','666','8888',TO_DATE('2019-05-11','YYYY-MM-DD'),'0');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'鄭仲凱','Allen@gmail.com','123456808',null,'Allen','A223456808',TO_DATE('1995-04-15','YYYY-MM-DD'),'臺東市新生路158號','0921-556656','2','6','666','8888',TO_DATE('2019-05-26','YYYY-MM-DD'),'1');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'陳新','Rose@gmail.com','123456779',null,'Rose','F122456789',TO_DATE('1990-10-11','YYYY-MM-DD'),'屏東市自由路496號','0976-546996','0','6','666','8888',TO_DATE('2019-05-31','YYYY-MM-DD'),'2');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'陳致緯','Kobe@gmail.com','123456876',null,'Kobe','H233478901',TO_DATE('1990-04-16','YYYY-MM-DD'),'雲林縣斗六市民生南路169號','0933-540520','3','6','666','8888',TO_DATE('2019-06-27','YYYY-MM-DD'),'1');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'賴玟翰','Harden@gmail.com','1234576824',null,'Harden','K222567899',TO_DATE('1991-09-11','YYYY-MM-DD'),'苗栗市中正路880號','0952-450540','4','6','666','8888',TO_DATE('2019-06-30','YYYY-MM-DD'),'1');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'陳品維','Westbrook@gmail.com','5566520520',null,'Westbrook','G126568763',TO_DATE('1991-02-22','YYYY-MM-DD'),'臺南市東區崇明路376號','0913-336455','1','6','666','8888',TO_DATE('2019-07-03','YYYY-MM-DD'),'1');

--------------------------------------------------------
--  建立國家
--------------------------------------------------------

CREATE TABLE Country(	
  CountryNo      VARCHAR2(7)   NOT NULL PRIMARY KEY, 
  CountryName    VARCHAR2(30)  NOT NULL);
  
CREATE SEQUENCE Country_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into Country(CountryNo,CountryName)values ('CRY'||LPAD(to_char(Country_seq.NEXTVAL), 4, '0'),'臺灣');
Insert into Country(CountryNo,CountryName)values ('CRY'||LPAD(to_char(Country_seq.NEXTVAL), 4, '0'),'日本');
Insert into Country(CountryNo,CountryName)values ('CRY'||LPAD(to_char(Country_seq.NEXTVAL), 4, '0'),'韓國');

commit;
--------------------------------------------------------
--  建立城市
--------------------------------------------------------
CREATE TABLE City(	
  CityNo      VARCHAR2(7)   NOT NULL  PRIMARY KEY, 
  CountryNo   VARCHAR2(7)   NOT NULL  REFERENCES Country(CountryNo), 
  CityName    VARCHAR2(30)  NOT NULL);
  
CREATE SEQUENCE City_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','基隆市');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','臺北市');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','新北市');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','桃園市');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','新竹縣');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','苗栗縣');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','彰化縣');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','南投縣');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','雲林縣');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','嘉義縣');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','高雄市');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','屏東縣');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','臺東縣');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','花蓮縣');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','宜蘭縣');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','澎湖縣');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','金門縣');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','連江縣');

commit;
--------------------------------------------------------
--  建立景點
--------------------------------------------------------
CREATE TABLE SpotList(	
  SpotNo       VARCHAR2(9)    NOT NULL, 
  SpotName     VARCHAR2(100)  NOT NULL, 
  CityNo       VARCHAR2(7)    NOT NULL REFERENCES City(CityNo),
  Location     VARCHAR2(300)  NOT NULL,
  SpotType     NUMBER(1)      NOT NULL, 
  SpotPhoto    BLOB, 
  SpotStatus   NUMBER(1)      NOT NULL,
  Tel          VARCHAR2(20),
  SpotLati     NUMBER(10,6)   NOT NULL,
  SpotLong     NUMBER(10,6)   NOT NULL, 
  SpotDetail   VARCHAR2(500)  NOT NULL, 
   
  CONSTRAINT  SpotList_PK PRIMARY KEY (SpotNo));
  
CREATE SEQUENCE SpotList_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'宏亞食品巧克力觀光工廠','CIT0004','桃園市八德市建國路386號',2,null,1,'886-3-3656555',24.943325,121.297187,'宏亞食品巧克力觀光工廠是一座以巧克力為主題的觀光工廠，建築設計、展場文字、陳列物、戶外景觀及相關造型皆與巧克力密不可分，全棟為綠建築，展場設計依照建築外觀之透光與否進行規劃，節能省碳，此外，展場更提供豐富的巧克力相關知識(含巧克力3500年歷史)為一寓教於樂之專業型廠館，是休閒娛樂絕佳去處。');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'宏亞食品巧克力觀光工廠','CIT0004','桃園市八德市建國路386號',2,null,1,'886-3-3656555',24.943325,121.297187,'宏亞食品巧克力觀光工廠是一座以巧克力為主題的觀光工廠，建築設計、展場文字、陳列物、戶外景觀及相關造型皆與巧克力密不可分，全棟為綠建築，展場設計依照建築外觀之透光與否進行規劃，節能省碳，此外，展場更提供豐富的巧克力相關知識(含巧克力3500年歷史)為一寓教於樂之專業型廠館，是休閒娛樂絕佳去處。');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'臺灣菸酒(股)公司林口觀光酒廠','CIT0004','桃園市八德市建國路386號',6,null,1,'886-3-3656555',24.943325,121.297187,'宏亞食品巧克力觀光工廠是一座以巧克力為主題的觀光工廠，建築設計、展場文字、陳列物、戶外景觀及相關造型皆與巧克力密不可分，全棟為綠建築，展場設計依照建築外觀之透光與否進行規劃，節能省碳，此外，展場更提供豐富的巧克力相關知識(含巧克力3500年歷史)為一寓教於樂之專業型廠館，是休閒娛樂絕佳去處。');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'水璉、牛山海岸','CIT0016','花蓮縣壽豐鄉牛山39之5號',1,null,1,'886-3-3656555',24.943325,121.297187,'宏亞食品巧克力觀光工廠是一座以巧克力為主題的觀光工廠，建築設計、展場文字、陳列物、戶外景觀及相關造型皆與巧克力密不可分，全棟為綠建築，展場設計依照建築外觀之透光與否進行規劃，節能省碳，此外，展場更提供豐富的巧克力相關知識(含巧克力3500年歷史)為一寓教於樂之專業型廠館，是休閒娛樂絕佳去處。');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'石梯坪','CIT0016','花蓮縣豐濱鄉石梯坪52號',6,null,1,'886-3-3656555',24.943325,121.297187,'宏亞食品巧克力觀光工廠是一座以巧克力為主題的觀光工廠，建築設計、展場文字、陳列物、戶外景觀及相關造型皆與巧克力密不可分，全棟為綠建築，展場設計依照建築外觀之透光與否進行規劃，節能省碳，此外，展場更提供豐富的巧克力相關知識(含巧克力3500年歷史)為一寓教於樂之專業型廠館，是休閒娛樂絕佳去處。');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'長虹橋','CIT0016','花蓮縣豐濱鄉台11線68公里處',1,null,1,'886-3-3656555',24.943325,121.297187,'宏亞食品巧克力觀光工廠是一座以巧克力為主題的觀光工廠，建築設計、展場文字、陳列物、戶外景觀及相關造型皆與巧克力密不可分，全棟為綠建築，展場設計依照建築外觀之透光與否進行規劃，節能省碳，此外，展場更提供豐富的巧克力相關知識(含巧克力3500年歷史)為一寓教於樂之專業型廠館，是休閒娛樂絕佳去處。');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'北回歸線','CIT0016','花蓮縣豐濱鄉台11線70.5公里處',2,null,1,'886-3-3656555',24.943325,121.297187,'宏亞食品巧克力觀光工廠是一座以巧克力為主題的觀光工廠，建築設計、展場文字、陳列物、戶外景觀及相關造型皆與巧克力密不可分，全棟為綠建築，展場設計依照建築外觀之透光與否進行規劃，節能省碳，此外，展場更提供豐富的巧克力相關知識(含巧克力3500年歷史)為一寓教於樂之專業型廠館，是休閒娛樂絕佳去處。');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'金樽','CIT0015','臺東縣959東河鄉七里橋11號',0,null,0,'886-3-3656555',24.943325,121.297187,'宏亞食品巧克力觀光工廠是一座以巧克力為主題的觀光工廠，建築設計、展場文字、陳列物、戶外景觀及相關造型皆與巧克力密不可分，全棟為綠建築，展場設計依照建築外觀之透光與否進行規劃，節能省碳，此外，展場更提供豐富的巧克力相關知識(含巧克力3500年歷史)為一寓教於樂之專業型廠館，是休閒娛樂絕佳去處。');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'加路蘭','CIT0015','臺東縣950臺東市台11線157公里處',2,null,1,'886-3-3656555',24.943325,121.297187,'宏亞食品巧克力觀光工廠是一座以巧克力為主題的觀光工廠，建築設計、展場文字、陳列物、戶外景觀及相關造型皆與巧克力密不可分，全棟為綠建築，展場設計依照建築外觀之透光與否進行規劃，節能省碳，此外，展場更提供豐富的巧克力相關知識(含巧克力3500年歷史)為一寓教於樂之專業型廠館，是休閒娛樂絕佳去處。');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'都蘭','CIT0015','臺東縣959東河鄉都蘭61號',3,null,1,'886-3-3656555',24.943325,121.297187,'宏亞食品巧克力觀光工廠是一座以巧克力為主題的觀光工廠，建築設計、展場文字、陳列物、戶外景觀及相關造型皆與巧克力密不可分，全棟為綠建築，展場設計依照建築外觀之透光與否進行規劃，節能省碳，此外，展場更提供豐富的巧克力相關知識(含巧克力3500年歷史)為一寓教於樂之專業型廠館，是休閒娛樂絕佳去處。');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'成功新港漁港','CIT0015','臺東縣961成功鎮港邊路19號',0,null,1,'886-3-3656555',24.943325,121.297187,'宏亞食品巧克力觀光工廠是一座以巧克力為主題的觀光工廠，建築設計、展場文字、陳列物、戶外景觀及相關造型皆與巧克力密不可分，全棟為綠建築，展場設計依照建築外觀之透光與否進行規劃，節能省碳，此外，展場更提供豐富的巧克力相關知識(含巧克力3500年歷史)為一寓教於樂之專業型廠館，是休閒娛樂絕佳去處。');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'阿美族民俗中心','CIT0015','臺東縣961成功鎮新村路25號',1,null,1,'886-3-3656555',24.943325,121.297187,'宏亞食品巧克力觀光工廠是一座以巧克力為主題的觀光工廠，建築設計、展場文字、陳列物、戶外景觀及相關造型皆與巧克力密不可分，全棟為綠建築，展場設計依照建築外觀之透光與否進行規劃，節能省碳，此外，展場更提供豐富的巧克力相關知識(含巧克力3500年歷史)為一寓教於樂之專業型廠館，是休閒娛樂絕佳去處。');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'紫坪','CIT0015','臺東縣951綠島鄉溫泉路256號',5,null,1,'886-3-3656555',24.943325,121.297187,'宏亞食品巧克力觀光工廠是一座以巧克力為主題的觀光工廠，建築設計、展場文字、陳列物、戶外景觀及相關造型皆與巧克力密不可分，全棟為綠建築，展場設計依照建築外觀之透光與否進行規劃，節能省碳，此外，展場更提供豐富的巧克力相關知識(含巧克力3500年歷史)為一寓教於樂之專業型廠館，是休閒娛樂絕佳去處。');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'帆船鼻大草原','CIT0015','臺東縣951綠島鄉溫泉路167號',0,null,1,'886-3-3656555',24.943325,121.297187,'宏亞食品巧克力觀光工廠是一座以巧克力為主題的觀光工廠，建築設計、展場文字、陳列物、戶外景觀及相關造型皆與巧克力密不可分，全棟為綠建築，展場設計依照建築外觀之透光與否進行規劃，節能省碳，此外，展場更提供豐富的巧克力相關知識(含巧克力3500年歷史)為一寓教於樂之專業型廠館，是休閒娛樂絕佳去處。');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'哈巴狗與睡美人岩','CIT0015','臺東縣951綠島鄉環島公路8公里處',2,null,1,'886-3-3656555',24.943325,121.297187,'宏亞食品巧克力觀光工廠是一座以巧克力為主題的觀光工廠，建築設計、展場文字、陳列物、戶外景觀及相關造型皆與巧克力密不可分，全棟為綠建築，展場設計依照建築外觀之透光與否進行規劃，節能省碳，此外，展場更提供豐富的巧克力相關知識(含巧克力3500年歷史)為一寓教於樂之專業型廠館，是休閒娛樂絕佳去處。');

commit;

--------------------------------------------------------
--  建立行程
--------------------------------------------------------
CREATE TABLE TripList(
    TripNo       VARCHAR2(7)    NOT NULL PRIMARY KEY, 
    MemNo        VARCHAR2(7)    NOT NULL REFERENCES MemberList (MEMNO), 
    CityNo       VARCHAR2(7)    NOT NULL REFERENCES City(CityNO), 
    TripName     VARCHAR2(50)   NOT NULL, 
    TripStartDay DATE NOT NULL, 
    TripEndDay   DATE NOT NULL, 
    TripDays     NUMBER(4,0), 
    TripEstDate  DATE,
    BeTheBuyer   NUMBER(1,0),
    TripStatus   NUMBER(1,0),
    TimeOfViews  NUMBER(4,0),
    KindOfTrip   NUMBER(1,0),
	TripPic blob
	
	);
	
  
CREATE SEQUENCE TripList_SEQ
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0001','CIT0001','花蓮7日遊',TO_DATE('2019-06-03','YYYY-MM-DD'),TO_DATE('2019-06-07','YYYY-MM-DD'),5, TO_DATE('2019-05-30','YYYY-MM-DD'),0,0,100,0);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0001','CIT0002','一個人也要衝',TO_DATE('2019-05-21','YYYY-MM-DD'),TO_DATE('2019-05-24','YYYY-MM-DD'),4, TO_DATE('2019-04-23','YYYY-MM-DD'),1,1,200,0);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0001','CIT0003','台東清淨之旅',TO_DATE('2019-06-18','YYYY-MM-DD'),TO_DATE('2019-06-19','YYYY-MM-DD'),2, TO_DATE('2019-06-02','YYYY-MM-DD'),0,1,300,1);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0002','CIT0004','嘉義阿里山',TO_DATE('2019-04-15','YYYY-MM-DD'),TO_DATE('2019-04-18','YYYY-MM-DD'),4, TO_DATE('2019-06-16','YYYY-MM-DD'),1,2,400,1);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0005','CIT0005','台中海岸遊',TO_DATE('2019-06-15','YYYY-MM-DD'),TO_DATE('2019-06-21','YYYY-MM-DD'),7, TO_DATE('2019-06-02','YYYY-MM-DD'),0,0,500,2);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0008','CIT0006','台北輕鬆行',TO_DATE('2019-08-28','YYYY-MM-DD'),TO_DATE('2019-08-29','YYYY-MM-DD'),2, TO_DATE('2019-06-17','YYYY-MM-DD'),1,1,600,2);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0008','CIT0007','台南古都8日',TO_DATE('2019-06-02','YYYY-MM-DD'),TO_DATE('2019-06-04','YYYY-MM-DD'),3, TO_DATE('2019-06-16','YYYY-MM-DD'),1,1,700,3);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0010','CIT0008','澎湖2日',TO_DATE('2019-07-15','YYYY-MM-DD'),TO_DATE('2019-07-17','YYYY-MM-DD'),3, TO_DATE('2019-05-01','YYYY-MM-DD'),1,1,800,3);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0010','CIT0009','宜蘭自由行',TO_DATE('2019-06-15','YYYY-MM-DD'),TO_DATE('2019-06-21','YYYY-MM-DD'),7, TO_DATE('2019-06-16','YYYY-MM-DD'),0,1,900,4);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0010','CIT0010','中壢讀書趣',TO_DATE('2019-09-23','YYYY-MM-DD'),TO_DATE('2019-09-26','YYYY-MM-DD'),4, TO_DATE('2019-06-30','YYYY-MM-DD'),0,1,1000,4);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0011','CIT0011','台北遊',TO_DATE('2019-06-02','YYYY-MM-DD'),TO_DATE('2019-06-03','YYYY-MM-DD'),2, TO_DATE('2019-06-16','YYYY-MM-DD'),0,1,1100,5);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0011','CIT0012','台中遊',TO_DATE('2019-06-15','YYYY-MM-DD'),TO_DATE('2019-06-18','YYYY-MM-DD'),4, TO_DATE('2019-06-17','YYYY-MM-DD'),1,2,1123,5);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0011','CIT0013','台南啦',TO_DATE('2019-06-15','YYYY-MM-DD'),TO_DATE('2019-06-24','YYYY-MM-DD'),10, TO_DATE('2019-06-11','YYYY-MM-DD'),1,1,1234,5);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0011','CIT0014','苗栗哦',TO_DATE('2019-06-05','YYYY-MM-DD'),TO_DATE('2019-06-06','YYYY-MM-DD'),2, TO_DATE('2019-06-03','YYYY-MM-DD'),1,1,1024,5);
COMMIT;

--------------------------------------------------------
--  建立行程內容
--------------------------------------------------------
CREATE TABLE TripDetails(
 TripNo VARCHAR2(7)  NOT NULL REFERENCES TripList(TripNO),
 SpotNo VARCHAR2(9)  NOT NULL REFERENCES SpotList (SpotNO),
 TimeOfArrive        DATE,
 TimeOfLeave         DATE,
 StayHours           NUMBER(4,0),
 MilestoNextSpots    NUMBER(8,2),
 TripDayOrder        NUMBER(2,0),
 TripOrderBy         NUMBER(2,0),
 TripTips            VARCHAR2(300) ,

    CONSTRAINT TripDetails_PK PRIMARY KEY(TripNo, SpotNo)
);

Insert into TripDetails values ('TLI0001', 'SPT000001', TO_DATE('11:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 9, 1.1, 1, 1, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0001', 'SPT000002', TO_DATE('11:00','HH24:MI'), TO_DATE('19:00','HH24:MI'), 8, 2.2, 2, 2, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0001', 'SPT000003', TO_DATE('11:00','HH24:MI'), TO_DATE('22:00','HH24:MI'), 11, 3.3, 3, 3, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0002', 'SPT000004', TO_DATE('8:00','HH24:MI') ,TO_DATE('21:00','HH24:MI') ,13, 6.8, 1, 1, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0002', 'SPT000005', TO_DATE('8:00','HH24:MI') ,TO_DATE('9:00','HH24:MI')  , 1, 5.5, 2, 2, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0002', 'SPT000001', TO_DATE('9:00','HH24:MI') ,TO_DATE('11:00','HH24:MI') ,2, 10, 2, 3, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0002', 'SPT000002', TO_DATE('11:00','HH24:MI'), TO_DATE('13:00','HH24:MI'), 2, 20, 2, 4, '這應該不錯');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0002', 'SPT000003', TO_DATE('13:00','HH24:MI'), TO_DATE('14:00','HH24:MI'), 1, 5.5, 2, 5, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0002', 'SPT000011', TO_DATE('14:00','HH24:MI'), TO_DATE('18:00','HH24:MI'), 4, 10, 2, 6, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0002', 'SPT000012', TO_DATE('18:00','HH24:MI'), TO_DATE('19:00','HH24:MI'), 1, 20, 2, 7, '這應該不錯');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0002', 'SPT000013', TO_DATE('19:00','HH24:MI'), TO_DATE('22:00','HH24:MI'), 3, 60, 2, 8, '這應該不錯');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0002', 'SPT000014', TO_DATE('12:00','HH24:MI'), TO_DATE('18:00','HH24:MI'), 6, 3.3, 3, 9, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0002', 'SPT000015', TO_DATE('19:00','HH24:MI'), TO_DATE('22:00','HH24:MI'), 3, 20, 3, 10, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0003', 'SPT000004', TO_DATE('11:00','HH24:MI'), TO_DATE('16:00','HH24:MI'), 5, 30, 1, 1, '這應該不錯');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0003', 'SPT000005', TO_DATE('16:00','HH24:MI'), TO_DATE('19:00','HH24:MI'), 3, 50, 1, 2, '這應該不錯');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0003', 'SPT000001', TO_DATE('10:00','HH24:MI'), TO_DATE('13:00','HH24:MI'), 3, 20, 2, 3, '這應該不錯');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0003', 'SPT000002', TO_DATE('13:00','HH24:MI'), TO_DATE('19:00','HH24:MI'), 6, 1.1, 2, 4, '讚');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0003', 'SPT000003', TO_DATE('10:00','HH24:MI'), TO_DATE('19:00','HH24:MI'), 9, 2.2, 3, 5, '讚');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0003', 'SPT000011', TO_DATE('11:00','HH24:MI'), TO_DATE('16:00','HH24:MI'), 5, 3.3, 4, 6, '讚');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0004', 'SPT000005', TO_DATE('11:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 9, 6.8, 1, 1, '這應該不錯');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0004', 'SPT000001', TO_DATE('11:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 9, 5.5, 2, 2, '讚');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0004', 'SPT000002', TO_DATE('11:00','HH24:MI'), TO_DATE('16:00','HH24:MI'), 5, 6.8, 3, 3, '這應該不錯');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0004', 'SPT000003', TO_DATE('16:00','HH24:MI'), TO_DATE('19:00','HH24:MI'), 3, 9.6, 3, 4, '讚');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0004', 'SPT000004', TO_DATE('15:00','HH24:MI'), TO_DATE('16:00','HH24:MI'), 1, 1.1, 4, 5, '讚');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0004', 'SPT000012', TO_DATE('16:00','HH24:MI'), TO_DATE('18:00','HH24:MI'), 2, 2.2, 4, 6, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0004', 'SPT000011', TO_DATE('12:00','HH24:MI'), TO_DATE('16:00','HH24:MI'), 4, 3.3, 5, 7, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0005', 'SPT000002', TO_DATE('11:00','HH24:MI'), TO_DATE('12:00','HH24:MI'), 1, 6.8, 1, 1, '這應該不錯');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0006', 'SPT000003', TO_DATE('12:00','HH24:MI'), TO_DATE('15:00','HH24:MI'), 3, 5.5, 1, 1, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0007', 'SPT000004', TO_DATE('15:00','HH24:MI'), TO_DATE('19:00','HH24:MI'), 4, 1.1, 1, 1, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0007', 'SPT000005', TO_DATE('10:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 10, 2.2, 2, 2, '這應該不錯');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0007', 'SPT000001', TO_DATE('10:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 10, 3.3, 3, 3, '這應該不錯');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0007', 'SPT000002', TO_DATE('10:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 10, 6.8, 4, 4, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0007', 'SPT000003', TO_DATE('10:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 10, 5.5, 5, 5, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0007', 'SPT000011', TO_DATE('10:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 10, 1.1, 6, 6, '這應該不錯');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0007', 'SPT000012', TO_DATE('10:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 10, 2.2, 7, 7, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0007', 'SPT000013', TO_DATE('10:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 10, 3.3, 8, 8, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0008', 'SPT000002', TO_DATE('11:00','HH24:MI'), TO_DATE('13:00','HH24:MI'), 2, 6.8, 1, 1, '這應該不錯');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0008', 'SPT000003', TO_DATE('13:00','HH24:MI'), TO_DATE('19:00','HH24:MI'), 6, 5.5, 2, 2, '這應該不錯');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0009', 'SPT000004', TO_DATE('10:00','HH24:MI'), TO_DATE('11:00','HH24:MI'), 1, 3.3, 1, 1, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0009', 'SPT000005', TO_DATE('11:00','HH24:MI'), TO_DATE('13:00','HH24:MI'), 2, 6.8, 1, 2, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0010', 'SPT000001', TO_DATE('13:00','HH24:MI'), TO_DATE('15:00','HH24:MI'), 2, 5.5, 1, 1, '這應該不錯');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0010', 'SPT000002', TO_DATE('15:00','HH24:MI'), TO_DATE('17:00','HH24:MI'), 2, 1.1, 1, 2, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0011', 'SPT000003', TO_DATE('17:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 3, 2.2, 1, 1, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0011', 'SPT000004', TO_DATE('16:00','HH24:MI'), TO_DATE('23:00','HH24:MI'), 7, 3.3, 2, 2, '這應該不錯');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0012', 'SPT000005', TO_DATE('11:00','HH24:MI'), TO_DATE('21:00','HH24:MI'), 10, 6.8, 1, 1, '這應該不錯');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0012', 'SPT000001', TO_DATE('21:00','HH24:MI'), TO_DATE('22:00','HH24:MI'), 1, 5.5, 1, 2, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0013', 'SPT000002', TO_DATE('22:00','HH24:MI'), TO_DATE('23:00','HH24:MI'), 1, 10, 1, 1, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0013', 'SPT000003', TO_DATE('23:00','HH24:MI'), TO_DATE('23:00','HH24:MI'), 1, 20, 1, 2, '這應該不錯');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0013', 'SPT000004', TO_DATE('11:00','HH24:MI'), TO_DATE('18:00','HH24:MI'), 7, 30, 2, 3, '這超好玩');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0014', 'SPT000005', TO_DATE('9:00','HH24:MI') ,TO_DATE('18:00','HH24:MI') ,9, 20, 1, 1, '這超好玩');
commit;

--------------------------------------------------------
--  建立行程檢舉單
--------------------------------------------------------
CREATE TABLE ReportTrip( 
    TripNo     VARCHAR2(7)     NOT NULL REFERENCES TripList(TRIPNO), 
    MemNo      VARCHAR2(7)     NOT NULL REFERENCES MemberList (MEMNO), 
    REASON     VARCHAR2(300)   NOT NULL, 
    TRIPSTATUS  NUMBER(1,0),
    
    CONSTRAINT ReportTrip_PK PRIMARY KEY(TRIPNO, MEMNO));

Insert into ReportTrip(TripNo,MemNo ,REASON,TRIPSTATUS)VALUES('TLI0001','MEM0002','用詞不雅',0);
Insert into ReportTrip(TripNo,MemNo ,REASON,TRIPSTATUS)VALUES('TLI0002','MEM0001','用詞不雅',0);
Insert into ReportTrip(TripNo,MemNo ,REASON,TRIPSTATUS)VALUES('TLI0004','MEM0001','用詞不雅',1);
Insert into ReportTrip(TripNo,MemNo ,REASON,TRIPSTATUS)VALUES('TLI0006','MEM0001','用詞不雅',1);
Insert into ReportTrip(TripNo,MemNo ,REASON,TRIPSTATUS)VALUES('TLI0008','MEM0001','用詞不雅',2);
Insert into ReportTrip(TripNo,MemNo ,REASON,TRIPSTATUS)VALUES('TLI0009','MEM0001','用詞不雅',2);
COMMIT;

--------------------------------------------------------
--  建立遊記清單
--------------------------------------------------------
CREATE TABLE Article(
	ArticleNo	   VARCHAR2(7)   NOT NULL PRIMARY KEY,
	MemNo		   VARCHAR2(7)   NOT NULL REFERENCES MemberList(MemNo),
	TripNo		   VARCHAR2(7)   NOT NULL REFERENCES TripList(TripNo),
	ArticleTitle   VARCHAR2(200),
	DaysOfStaying  NUMBER(4),
	DayOfStart	   DATE	         NOT NULL,
	DayOfEnd	   DATE          NOT NULL,
	ArticleStatus  NUMBER(1)     NOT NULL,
	DayOfLastEdit  DATE	         NOT NULL,
	TimeOfViews    NUMBER(4),
	KindOfTrip     NUMBER(1)	 NOT NULL);

CREATE SEQUENCE Article_SEQ
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into Article (ArticleNo,MemNo,TripNo,ArticleTitle,DaysOfStaying,DayOfStart,DayOfEnd,ArticleStatus,DayOfLastEdit,TimeOfViews,KindOfTrip) values
('ANI'||LPAD(to_char(Article_seq.NEXTVAL), 4, '0'),'MEM0001','TLI0001','花蓮七日遊',7,TO_DATE('2019-6-15','YYYY-MM-DD'),TO_DATE('2019-6-21','YYYY-MM-DD'),0,TO_DATE('2019-7-15','YYYY-MM-DD'),0,0);
Insert into Article (ArticleNo,MemNo,TripNo,ArticleTitle,DaysOfStaying,DayOfStart,DayOfEnd,ArticleStatus,DayOfLastEdit,TimeOfViews,KindOfTrip) values
('ANI'||LPAD(to_char(Article_seq.NEXTVAL), 4, '0'),'MEM0001','TLI0001','潮爽der花蓮七日遊',7,TO_DATE('2019-6-15','YYYY-MM-DD'),TO_DATE('2019-6-21','YYYY-MM-DD'),1,TO_DATE('2019-10-15','YYYY-MM-DD'),1010,0);
Insert into Article (ArticleNo,MemNo,TripNo,ArticleTitle,DaysOfStaying,DayOfStart,DayOfEnd,ArticleStatus,DayOfLastEdit,TimeOfViews,KindOfTrip) values
('ANI'||LPAD(to_char(Article_seq.NEXTVAL), 4, '0'),'MEM0011','TLI0012','台北出差之買到手軟',2,TO_DATE('2019-6-15','YYYY-MM-DD'),TO_DATE('2019-6-16','YYYY-MM-DD'),1,TO_DATE('2019-8-10','YYYY-MM-DD'),150,5);
Insert into Article (ArticleNo,MemNo,TripNo,ArticleTitle,DaysOfStaying,DayOfStart,DayOfEnd,ArticleStatus,DayOfLastEdit,TimeOfViews,KindOfTrip) values
('ANI'||LPAD(to_char(Article_seq.NEXTVAL), 4, '0'),'MEM0011','TLI0013','台南之看了就知道',7,TO_DATE('2019-6-16','YYYY-MM-DD'),TO_DATE('2019-6-17','YYYY-MM-DD'),1,TO_DATE('2019-9-14','YYYY-MM-DD'),777,6);
Insert into Article (ArticleNo,MemNo,TripNo,ArticleTitle,DaysOfStaying,DayOfStart,DayOfEnd,ArticleStatus,DayOfLastEdit,TimeOfViews,KindOfTrip) values
('ANI'||LPAD(to_char(Article_seq.NEXTVAL), 4, '0'),'MEM0010','TLI0010','就算讀書也是要寫一篇',7,TO_DATE('2019-5-28','YYYY-MM-DD'),TO_DATE('2019-5-30','YYYY-MM-DD'),1,TO_DATE('2019-9-14','YYYY-MM-DD'),255,4);
Insert into Article (ArticleNo,MemNo,TripNo,ArticleTitle,DaysOfStaying,DayOfStart,DayOfEnd,ArticleStatus,DayOfLastEdit,TimeOfViews,KindOfTrip) values
('ANI'||LPAD(to_char(Article_seq.NEXTVAL), 4, '0'),'MEM0008','TLI0007','古都8日16個胃',7,TO_DATE('2019-8-7','YYYY-MM-DD'),TO_DATE('2019-8-15','YYYY-MM-DD'),1,TO_DATE('2019-10-10','YYYY-MM-DD'),5566,3);
Insert into Article (ArticleNo,MemNo,TripNo,ArticleTitle,DaysOfStaying,DayOfStart,DayOfEnd,ArticleStatus,DayOfLastEdit,TimeOfViews,KindOfTrip) values
('ANI'||LPAD(to_char(Article_seq.NEXTVAL), 4, '0'),'MEM0001','TLI0003','請輸入標題',7,TO_DATE('2019-7-12','YYYY-MM-DD'),TO_DATE('2019-7-19','YYYY-MM-DD'),0,TO_DATE('2019-9-8','YYYY-MM-DD'),0,1);
Insert into Article (ArticleNo,MemNo,TripNo,ArticleTitle,DaysOfStaying,DayOfStart,DayOfEnd,ArticleStatus,DayOfLastEdit,TimeOfViews,KindOfTrip) values
('ANI'||LPAD(to_char(Article_seq.NEXTVAL), 4, '0'),'MEM0011','TLI0014','我的分身去了苗栗',7,TO_DATE('2019-6-16','YYYY-MM-DD'),TO_DATE('2019-6-17','YYYY-MM-DD'),2,TO_DATE('2019-7-27','YYYY-MM-DD'),55,6);
Insert into Article (ArticleNo,MemNo,TripNo,ArticleTitle,DaysOfStaying,DayOfStart,DayOfEnd,ArticleStatus,DayOfLastEdit,TimeOfViews,KindOfTrip) values
('ANI'||LPAD(to_char(Article_seq.NEXTVAL), 4, '0'),'MEM0010','TLI0008','澎湖好地方!!',7,TO_DATE('2019-9-13','YYYY-MM-DD'),TO_DATE('2019-9-15','YYYY-MM-DD'),1,TO_DATE('2019-10-8','YYYY-MM-DD'),2266,3);
Insert into Article (ArticleNo,MemNo,TripNo,ArticleTitle,DaysOfStaying,DayOfStart,DayOfEnd,ArticleStatus,DayOfLastEdit,TimeOfViews,KindOfTrip) values
('ANI'||LPAD(to_char(Article_seq.NEXTVAL), 4, '0'),'MEM0010','TLI0009','The 後山',7,TO_DATE('2019-11-11','YYYY-MM-DD'),TO_DATE('2019-11-12','YYYY-MM-DD'),0,TO_DATE('2019-12-2','YYYY-MM-DD'),0,4);
commit;

--------------------------------------------------------
--  建立遊記清單
--------------------------------------------------------
CREATE TABLE ArticleDetails(
	ArticleNo		    VARCHAR2(7)	NOT NULL REFERENCES Article(ArticleNo),
	SpotNo			    VARCHAR2(9)	NOT NULL REFERENCES SpotList(SpotNo),
	ArticleNotes 	    VARCHAR2(3000),	
	ArticlePic	    	BLOB,
	ArticleTripOrderBy	NUMBER(4)	NOT NULL,
	PicNote			    VARCHAR2(300),
	TripDayOrder		NUMBER(4)	NOT NULL,
    
    CONSTRAINT ArticleDetails_PK PRIMARY KEY (ArticleNo,SpotNo));

Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0001','SPT000001','最近在開發的時候遇到一個需求，需要在內容折疊的地方加上收/合的 icon，當下馬上就是想到 JavaScript 來實做這個功能，只要監聽按鈕的 click event 再去換掉 icon，後來就在想 CSS 是不是可以做到這件事，就可以不需要透過 JavaScript 來控制了，後來查了一下，的確可以透過 CSS 做到這件事，而且非常容易。',null,1,'123',1);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0001','SPT000002','Bootstrap 提供一個內容折疊（Collapse）的功能，讓資訊可以被收合，使用方式只要透過加入 class 名稱和 data-* 屬性，詳細可以參考 Bootstrap Collapse 的 Example 範例。',null,2,'321',2);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0001','SPT000003','文福是？小主口夫十。眼不結我上月直物公認管時說得的牛兒認接。子大案我且變同點是臺使麼高學情現了前程為。',null,3,'321',3);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0001','SPT000004','技就速臺衣因研心麼一。懷拿答全在然業可可來面的多角食子能；的我也：打了在輕量大保明念你調熱年難麼上期的環。',null,4,'321',4);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0001','SPT000005','沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？',null,5,'321',5);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0001','SPT000006','重南文理地……賽時影？們海小為水元令病們人才樣亞日大或及：業照改一色年又細太歌包不們是車列把導，單一得樹座式父統經通優市！影成結想投友上點進手營名根子轉色？家心能散夫世計化電不人市法法自活區主通安密於代書行備保，為這加技。古裡。',null,6,'321',6);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0001','SPT000007','表岸這的能課……位些氣回放。',null,7,'321',7);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0002','SPT000008','氣下一他何我流一來排上引的說有構？故上那王嚴？能回和民資球的原青德家助該起知式陽時，見亞不……病不記門！他年團出。獲什我度識應前要首說要那候則升要格民，轉教是非局但用心特……系生什造不民同；在健天力層個記檢片，值山影好來論山多量事遊站寫，人些了……重年那樂花亞之福心呢，日打起道；不綠機；入辦話較去聲，過業造母克晚？童醫於天；業定房美那去十題不友選小有？',null,1,'321',1);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0002','SPT000009','沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？',null,2,'321',2);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0002','SPT000010','3沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？',null,3,'321',3);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0002','SPT000011','沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？78',null,4,'321',4);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0002','SPT000012','3沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？8',null,5,'321',5);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0002','SPT000013','334沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？78',null,6,'321',6);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0002','SPT000014','33沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？5678',null,7,'321',7);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0003','SPT000015','3345沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？78',null,1,'321',1);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0003','SPT000001','334沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？678',null,2,'321',2);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0004','SPT000002','沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？5678',null,1,'321',1);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0004','SPT000003','334沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？',null,2,'321',2);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0005','SPT000004','33沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？678',null,1,'321',1);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0005','SPT000005','3345沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？8',null,2,'321',2);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0005','SPT000006','3沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？678',null,3,'321',3);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0006','SPT000007','3345沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？8',null,1,'321',1);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0006','SPT000008','3沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？5678',null,2,'321',2);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0006','SPT000009','33沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？78',null,3,'321',3);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0006','SPT000010','334沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？78',null,4,'321',4);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0006','SPT000011','33沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？5678',null,5,'321',5);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0006','SPT000012','334沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？678',null,6,'321',6);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0006','SPT000013','334沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？678',null,7,'321',7);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0006','SPT000014','334沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？78',null,8,'321',8);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0006','SPT000015','334沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？78',null,9,'321',9);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0007','SPT000015','334沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？78',null,1,'321',1);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0007','SPT000014','33沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？78',null,2,'321',2);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0007','SPT000013','334沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？78',null,3,'321',3);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0007','SPT000012','334沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？78',null,4,'321',4);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0007','SPT000011','33沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？678',null,5,'321',5);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0007','SPT000010','3沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？5678',null,6,'321',6);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0007','SPT000009','334沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？78',null,7,'321',7);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0007','SPT000008','33沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？5678',null,8,'321',8);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0008','SPT000007','3345沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？78',null,1,'321',1);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0008','SPT000006','334沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？678',null,2,'321',2);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0009','SPT000005','33456沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？8',null,1,'321',1);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0009','SPT000004','334567沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？',null,2,'321',2);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0009','SPT000003','沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？345678',null,3,'321',3);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0010','SPT000002','3沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？45678',null,1,'321',1);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0010','SPT000001','33沒北的輕！能上小名聽分量金散心如研舞現得；點越女力北之沒他？5678',null,2,'321',2);
commit;

--------------------------------------------------------
-- 檢舉遊記
--------------------------------------------------------
CREATE TABLE REPORTArticle(
	ArticleNo	VARCHAR2(7)	    NOT NULL REFERENCES Article(ArticleNo),
	MemNo		VARCHAR2(7)	    NOT NULL REFERENCES MemberList(MemNo),
	Reason		VARCHAR2(300)	NOT NULL,
	Status		NUMBER(1,0)  	NOT NULL,

    CONSTRAINT REPORTArticle_PK PRIMARY KEY(ArticleNo,MemNo));

Insert into REPORTArticle(ArticleNo,MemNo,Reason,Status) values ('ANI0005','MEM0010','無聊到歪頭',1);
Insert into REPORTArticle(ArticleNo,MemNo,Reason,Status) values ('ANI0006','MEM0008','看了想吐',1);
Insert into REPORTArticle(ArticleNo,MemNo,Reason,Status) values ('ANI0008','MEM0011','先不說她人同時出現在兩個地方，怎麼有色情網站內容?',2);
Insert into REPORTArticle(ArticleNo,MemNo,Reason,Status) values ('ANI0010','MEM0010','我去宜蘭都沒溫泉?',0);
commit;

--------------------------------------------------------
-- 商品
--------------------------------------------------------
CREATE TABLE Items (
  itemNo      VARCHAR2(7)    NOT NULL PRIMARY KEY, 
  itemName    VARCHAR2(100)  NOT NULL, 
  price       NUMBER(8)      NOT NULL, 
  amount      NUMBER(4)      Not null,
  status      NUMBER(1)      DEFAULT'0',
  itemDetail  VARCHAR2(300)  NOT NULL,
  picture BLOB,
  itemClass   Number(1));

CREATE SEQUENCE itemNo_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into items (itemNo,itemName,price,amount,itemDetail,itemClass) values ('I'||LPAD(to_char(itemNo_seq.NEXTVAL),4,'0'),'日本SIM卡',100,10,'日本國專用SIM卡，上網不卡頓！',1);
Insert into items (itemNo,itemName,price,amount,itemDetail,itemClass) values ('I'||LPAD(to_char(itemNo_seq.NEXTVAL),4,'0'),'韓國SIM卡',200,20,'韓國專用SIM卡，上網不卡頓！',1);
Insert into items (itemNo,itemName,price,amount,itemDetail,itemClass) values ('I'||LPAD(to_char(itemNo_seq.NEXTVAL),4,'0'),'亞洲SIM卡',300,30,'亞洲專用SIM卡，上網不卡頓！',1);
Insert into items (itemNo,itemName,price,amount,itemDetail,itemClass) values ('I'||LPAD(to_char(itemNo_seq.NEXTVAL),4,'0'),'地球SIM卡',400,40,'地球專用SIM卡，上網不卡頓！',1);
Insert into items (itemNo,itemName,price,amount,itemDetail,itemClass) values ('I'||LPAD(to_char(itemNo_seq.NEXTVAL),4,'0'),'太陽系SIM卡',500,50,'太陽系專用SIM卡，上網不卡頓！',1);
Insert into items (itemNo,itemName,price,amount,itemDetail,itemClass) values ('I'||LPAD(to_char(itemNo_seq.NEXTVAL),4,'0'),'銀行SIM卡',600,60,'銀行SIM卡，上網不卡頓！',1);
Insert into items (itemNo,itemName,price,amount,itemDetail,itemClass) values ('I'||LPAD(to_char(itemNo_seq.NEXTVAL),4,'0'),'宇宙SIM卡',700,70,'宇宙SIM卡，上網不卡頓！',1);
commit;

--------------------------------------------------------
--訂單
--------------------------------------------------------
 CREATE Table storeOrd(
  ordNo       VARCHAR2(16)   NOT NULL PRIMARY KEY, 
  memNo VARCHAR2 (7)         NOT NULL REFERENCES MemberList (MemNo), 
  price       NUMBER(8)      NOT NULL, 
  address     VARCHAR2(300)  NOT NULL, 
  status      NUMBER(1)      DEFAULT '0', 
  orderedTime DATE           NOT NULL, 
  paymentTime DATE           NOT NULL, 
  paymentTerm NUMBER(1));

CREATE SEQUENCE storeOrd_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into storeOrd (ordNo,MemNo,price,address,orderedTime,paymentTime,paymentTerm) values ('Ord'||to_char(sysdate,'yyyymmdd')||'-'||LPAD(to_char(storeOrd_seq.NEXTVAL), 4, '0'),'MEM0001',1000,'總統府',TO_DATE('2019-06-01 10:10:10','YYYY-MM-DD hh24:mi:ss'),sysdate,1);
Insert into storeOrd (ordNo,MemNo,price,address,orderedTime,paymentTime,paymentTerm) values ('Ord'||to_char(sysdate,'yyyymmdd')||'-'||LPAD(to_char(storeOrd_seq.NEXTVAL), 4, '0'),'MEM0002',2000,'高雄愛情摩天輪',TO_DATE('2019-06-02 10:10:10','YYYY-MM-DD hh24:mi:ss'),sysdate,1);
Insert into storeOrd (ordNo,MemNo,price,address,orderedTime,paymentTime,paymentTerm) values ('Ord'||to_char(sysdate,'yyyymmdd')||'-'||LPAD(to_char(storeOrd_seq.NEXTVAL), 4, '0'),'MEM0003',3000,'土城看守所',TO_DATE('2019-06-03 10:10:10','YYYY-MM-DD hh24:mi:ss'),sysdate,1);
Insert into storeOrd (ordNo,MemNo,price,address,orderedTime,paymentTime,paymentTerm) values ('Ord'||to_char(sysdate,'yyyymmdd')||'-'||LPAD(to_char(storeOrd_seq.NEXTVAL), 4, '0'),'MEM0004',4000,'貪婪之島',TO_DATE('2019-06-04 10:10:10','YYYY-MM-DD hh24:mi:ss'),sysdate,1);
Insert into storeOrd (ordNo,MemNo,price,address,orderedTime,paymentTime,paymentTerm) values ('Ord'||to_char(sysdate,'yyyymmdd')||'-'||LPAD(to_char(storeOrd_seq.NEXTVAL), 4, '0'),'MEM0005',5000,'深海的大鳳梨裡',TO_DATE('2019-06-05 10:10:10','YYYY-MM-DD hh24:mi:ss'),sysdate,1);
commit;

--------------------------------------------------------
--  訂單明細
--------------------------------------------------------
CREATE TABLE StoreOrdDetails (
  ordNo    VARCHAR2(16) NOT NULL REFERENCES StoreOrd (ordNo), 
  itemNo   VARCHAR2(7)  NOT NULL REFERENCES Items (itemNo), 
  quantity NUMBER(4)    NOT NULL, 
  price    NUMBER(8)    NOT NULL, 
  CONSTRAINT storeOrdDetails PRIMARY KEY(ordNo ,itemNo));

Insert into storeOrdDetails (ordNo,itemNo,quantity,price) values ('Ord'||to_char(sysdate,'yyyymmdd')||'-'||LPAD(to_char(storeOrd_seq.CURRVAL),4,'0'),'I0001',1,10000);
Insert into storeOrdDetails (ordNo,itemNo,quantity,price) values ('Ord'||to_char(sysdate,'yyyymmdd')||'-'||LPAD(to_char(storeOrd_seq.CURRVAL),4,'0'),'I0002',2,20000);
Insert into storeOrdDetails (ordNo,itemNo,quantity,price) values ('Ord'||to_char(sysdate,'yyyymmdd')||'-'||LPAD(to_char(storeOrd_seq.CURRVAL),4,'0'),'I0003',1,20000);
Insert into storeOrdDetails (ordNo,itemNo,quantity,price) values ('Ord'||to_char(sysdate,'yyyymmdd')||'-'||LPAD(to_char(storeOrd_seq.CURRVAL),4,'0'),'I0004',1,20000);
Insert into storeOrdDetails (ordNo,itemNo,quantity,price) values ('Ord'||to_char(sysdate,'yyyymmdd')||'-'||LPAD(to_char(storeOrd_seq.CURRVAL),4,'0'),'I0005',1,20000);
Insert into storeOrdDetails (ordNo,itemNo,quantity,price) values ('Ord'||to_char(sysdate,'yyyymmdd')||'-'||LPAD(to_char(storeOrd_seq.CURRVAL),4,'0'),'I0006',1,20000);   
commit;

--------------------------------------------------------
-- 建立代購商品清單
--------------------------------------------------------
CREATE TABLE WishItem(        
  WishItemNo        VARCHAR2(7)   NOT NULL, 
  MemNo             VARCHAR2(7)  NOT NULL REFERENCES MemberList (MEMNO), 
  Amount            NUMBER(5)  NOT NULL, 
  ItemName          VARCHAR2(90)  NOT NULL, 
  ItemPrice         NUMBER(8),
  ItemStoreName     VARCHAR2(90) , 
  ItemStoreAddr     VARCHAR2(300), 
  ItemStoreLati     VARCHAR2(10) ,  
  ItemStoreLong     VARCHAR2(10) , 
  BuyOrSell         NUMBER(1) NOT NULL , 
  WishItemDetail    VARCHAR2(900) , 
  WishItemPicture   BLOB, 
  WishNote          VARCHAR2(900) , 
  Status            NUMBER(1) NOT NULL, 
  ItemType          NUMBER(1) NOT NULL,
  CONSTRAINT  WishItem_PK PRIMARY KEY (WishItemNo));

CREATE SEQUENCE WishItem_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0001',1,'百保能黃金A感冒顆粒 44包 大正製藥',0,'OS Drug 上野店藥妝店','6 Chome-11-5 Ueno, Taito City, Tokyo 110-0005日本','35.711012','139.774631',0,null,null,'若與下訂的不符，則一律不接受。',1,3);
Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0001',5,'太田胃散胃藥',0,'OS Drug 上野店藥妝店','6 Chome-11-5 Ueno, Taito City, Tokyo 110-0005日本','35.711012','139.774631',0,null,null,'若與下訂的不符，則一律不接受。',1,3);
Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0001',3,'新luluA 黃金感冒藥DX 90錠',0,'OS Drug 上野店藥妝店','6 Chome-11-5 Ueno, Taito City, Tokyo 110-0005日本','35.711012','139.774631',0,null,null,'若與下訂的不符，則一律不接受。',1,3);
Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0003',3,'國際牌EN-NA99',4700,'BIC CAMERA','日本〒160-0023 Tokyo, Shinjuku City, Nishishinjuku, 1 Chome?5?１ 2F～7F 新宿西口???','35.692837','139.698665',1,'型號EH-NA9A，若無指定顏色則隨機構買，依現場顏色購買',null,'不得以型號退貨，若商品有問題，我們將為您服務',1,1);
Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0003',3,'DYSON吸塵器',21000,'BIC CAMERA','日本〒160-0023 Tokyo, Shinjuku City, Nishishinjuku, 1 Chome?5?１ 2F～7F 新宿西口???','35.692837','139.698665',1,'V10? Fluffy 無線',null,'不得以型號退貨，若商品有問題，我們將為您服務',1,1);
Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0003',3,'DYSON吹風機',16200,'BIC CAMERA','日本〒160-0023 Tokyo, Shinjuku City, Nishishinjuku, 1 Chome?5?１ 2F～7F 新宿西口???','35.692837','139.698665',1,'Dyson Supersonic? 吹風機紅色 ',null,'不得以型號退貨，若商品有問題，我們將為您服務',1,1);
Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0003',3,'BALMUDA5蒸氣烤麵包機',8000,'BIC CAMERA','日本〒160-0023 Tokyo, Shinjuku City, Nishishinjuku, 1 Chome?5?１ 2F～7F 新宿西口???','35.692837','139.698665',1,'白K01J-WS',null,'不得以型號退貨，若商品有問題，我們將為您服務',1,1);
Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0003',3,'Sony降噪耳機',10000,'BIC CAMERA','日本〒160-0023 Tokyo, Shinjuku City, Nishishinjuku, 1 Chome?5?１ 2F～7F 新宿西口???','35.692837','139.698665',1,'SONY WH-1000XM3黑',null,'不得以型號退貨，若商品有問題，我們將為您服務',1,1);
Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0003',2,'DYSON冷暖空氣清淨機',25000,'BIC CAMERA','日本〒160-0023 Tokyo, Shinjuku City, Nishishinjuku, 1 Chome?5?１ 2F～7F 新宿西口???','35.692837','139.698665',1,'dyson Pure Hot+Cool HP04(時尚白)',null,'不得以型號退貨，若商品有問題，我們將為您服務',1,1);
Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0002',10,'薯條三兄弟',0,'','','','',0,null,null,'',1,5);
Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0002',5,'花王蒸氣眼罩',0,'','','','',0,null,null,'',1,5);
commit;

--------------------------------------------------------
-- 建立代購訂單
--------------------------------------------------------
CREATE TABLE WishOrd(        
  WishOrdNo         VARCHAR2(7)   NOT NULL, 
  BuyMemNo          VARCHAR2(7)  NOT NULL REFERENCES MemberList (MEMNO), 
  WishMemNo         VARCHAR2(7)  NOT NULL REFERENCES MemberList (MEMNO), 
  DayOfEst          DATE  , 
  Status            NUMBER(1) ,
  Price             NUMBER(8) NOT NULL, 
  WishSendDate      DATE NOT NULL, 
  BuyNote           VARCHAR2(900) ,  
  LastDate          DATE NOT NULL, 
  Addr              VARCHAR2(900) NOT NULL, 
  CONSTRAINT  WishOrd_PK PRIMARY KEY (WishOrdNo));
  
CREATE SEQUENCE WishOrd_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0001','MEM0010',TO_DATE('2019-07-25','YYYY-MM-DD'),0,1670,TO_DATE('2019-08-13','YYYY-MM-DD'),'',TO_DATE('2019-08-20','YYYY-MM-DD'),'桃園市平鎮區民族路二段175號');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0001','MEM0009',TO_DATE('2019-07-26','YYYY-MM-DD'),1,920,TO_DATE('2019-08-14','YYYY-MM-DD'),'',TO_DATE('2019-08-21','YYYY-MM-DD'),'桃園市平鎮區民族路二段175號');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0001','MEM0008',TO_DATE('2019-07-27','YYYY-MM-DD'),2,740,TO_DATE('2019-08-15','YYYY-MM-DD'),'',TO_DATE('2019-08-22','YYYY-MM-DD'),'桃園市平鎮區民族路二段175號');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0007','MEM0003',TO_DATE('2019-07-28','YYYY-MM-DD'),3,20900,TO_DATE('2019-08-16','YYYY-MM-DD'),'',TO_DATE('2019-08-23','YYYY-MM-DD'),'嘉義市忠孝路489號');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0006','MEM0003',TO_DATE('2019-07-29','YYYY-MM-DD'),4,18000,TO_DATE('2019-08-17','YYYY-MM-DD'),'',TO_DATE('2019-08-24','YYYY-MM-DD'),'臺中市大里區中興路二段478號');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0005','MEM0003',TO_DATE('2019-07-30','YYYY-MM-DD'),5,21000,TO_DATE('2019-08-18','YYYY-MM-DD'),'',TO_DATE('2019-08-25','YYYY-MM-DD'),'高雄市前鎮區中華五路1111號');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0004','MEM0003',TO_DATE('2019-07-31','YYYY-MM-DD'),6,25000,TO_DATE('2019-08-19','YYYY-MM-DD'),'',TO_DATE('2019-08-26','YYYY-MM-DD'),'臺南市中西區中華西路二段38號');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0011','MEM0003',TO_DATE('2019-08-01','YYYY-MM-DD'),0,20900,TO_DATE('2019-08-20','YYYY-MM-DD'),'',TO_DATE('2019-08-27','YYYY-MM-DD'),'苗栗市中正路880號');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0010','MEM0003',TO_DATE('2019-08-02','YYYY-MM-DD'),1,18000,TO_DATE('2019-08-21','YYYY-MM-DD'),'',TO_DATE('2019-08-28','YYYY-MM-DD'),'雲林縣斗六市民生南路169號');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0009','MEM0003',TO_DATE('2019-08-03','YYYY-MM-DD'),2,21000,TO_DATE('2019-08-22','YYYY-MM-DD'),'',TO_DATE('2019-08-29','YYYY-MM-DD'),'屏東市自由路496號');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0008','MEM0003',TO_DATE('2019-08-04','YYYY-MM-DD'),3,25000,TO_DATE('2019-08-23','YYYY-MM-DD'),'',TO_DATE('2019-08-30','YYYY-MM-DD'),'臺東市新生路158號');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0012','MEM0003',TO_DATE('2019-08-05','YYYY-MM-DD'),4,20900,TO_DATE('2019-08-24','YYYY-MM-DD'),'',TO_DATE('2019-08-31','YYYY-MM-DD'),'臺南市東區崇明路376號');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0012','MEM0003',TO_DATE('2019-08-06','YYYY-MM-DD'),5,18000,TO_DATE('2019-08-25','YYYY-MM-DD'),'',TO_DATE('2019-09-01','YYYY-MM-DD'),'臺南市東區崇明路376號');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0012','MEM0003',TO_DATE('2019-08-07','YYYY-MM-DD'),6,21000,TO_DATE('2019-08-26','YYYY-MM-DD'),'',TO_DATE('2019-09-02','YYYY-MM-DD'),'臺南市東區崇明路376號');
commit;

--------------------------------------------------------
-- 建立代購明細
--------------------------------------------------------
CREATE TABLE WishDetails(
    WishOrdNo     VARCHAR2(7)   NOT NULL REFERENCES WishOrd (WishOrdNo), 
    WishItemNo    VARCHAR2(7)   NOT NULL REFERENCES WishItem (WishItemNo), 
    Numbers   NUMBER(3)   NOT NULL, 
    Price  NUMBER(8) NOT NULL,
    
    CONSTRAINT WishDetails_PK PRIMARY KEY(WishOrdNo, WishItemNo));

Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0001','WIN0001',1,750);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0001','WIN0002',2,360);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0001','WIN0003',1,560);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0002','WIN0002',2,360);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0002','WIN0003',1,560);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0003','WIN0002',1,180);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0003','WIN0003',1,560);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0004','WIN0004',1,4700);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0004','WIN0006',1,16200);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0005','WIN0007',1,8000);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0005','WIN0008',1,10000);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0006','WIN0005',1,21000);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0007','WIN0009',1,25000);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0008','WIN0004',1,4700);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0008','WIN0006',1,16200);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0009','WIN0007',1,8000);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0009','WIN0008',1,10000);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0010','WIN0005',1,21000);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0011','WIN0009',1,25000);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0012','WIN0004',1,4700);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0012','WIN0006',1,16200);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0013','WIN0007',1,8000);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0013','WIN0008',1,10000);
Insert into WishDetails(WishOrdNo,WishItemNo  ,Numbers ,Price )VALUES('WON0014','WIN0005',1,21000);
commit;

--------------------------------------------------------
-- 建立代購檢舉
--------------------------------------------------------
CREATE TABLE ReportWishOrder (
    WishOrdNo     VARCHAR2(7)   NOT NULL REFERENCES WishOrd (WishOrdNo),
    MemNo     VARCHAR2(7)   NOT NULL REFERENCES MemberList (MEMNO),
    REASON    VARCHAR2(300)   NOT NULL,
    TRIPSTATUS  NUMBER(1,0),
    CONSTRAINT ReportWishOrder_PK PRIMARY KEY(WishOrdNo, MEMNO));

Insert into ReportWishOrder(WishOrdNo,MemNo ,REASON,TRIPSTATUS)VALUES('WON0005','MEM0006','測試有無管理員存在',0);
Insert into ReportWishOrder(WishOrdNo,MemNo ,REASON,TRIPSTATUS)VALUES('WON0006','MEM0005','就是想檢舉',1);
Insert into ReportWishOrder(WishOrdNo,MemNo ,REASON,TRIPSTATUS)VALUES('WON0010','MEM0009','逾期未交貨',2);
Insert into ReportWishOrder(WishOrdNo,MemNo ,REASON,TRIPSTATUS)VALUES('WON0004','MEM0007','測試有無管理員存在',0);
Insert into ReportWishOrder(WishOrdNo,MemNo ,REASON,TRIPSTATUS)VALUES('WON0003','MEM0001','就是想檢舉',1);
Insert into ReportWishOrder(WishOrdNo,MemNo ,REASON,TRIPSTATUS)VALUES('WON0008','MEM0003','逾期未交貨',2);
commit;

--------------------------------------------------------
-- 建立代購檢舉
--------------------------------------------------------
CREATE TABLE Activity (
  ActivityNo    VARCHAR2(7)  NOT NULL PRIMARY KEY, 
  ActivityName  VARCHAR2(100)  NOT NULL, 
  ActRule VARCHAR2(1000) NOT NULL,
  DateStart TIMESTAMP NOT NULL,
  DateEnd TIMESTAMP NOT NULL,
  BetRate NUMBER(6, 3) NOT NULL,
  ChatContent CLOB,
  StreamContent CLOB,
  ActivityContent CLOB NOT NULL);
	  
CREATE SEQUENCE ActivityNo_SEQ
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into Activity (ActivityNo, ActivityName, ActRule, DateStart, DateEnd, BetRate, ChatContent, StreamContent, ActivityContent) values ('ACT'||LPAD(to_char(ActivityNo_SEQ.NEXTVAL), 4, '0'), 'NFL 2019 Super Bowl LIII', '這是RULE', TO_TIMESTAMP('2019-02-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2019-02-04 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), 1.234, NULL, NULL, '這是CONTENT');  
Insert into Activity (ActivityNo, ActivityName, ActRule, DateStart, DateEnd, BetRate, ChatContent, StreamContent, ActivityContent) values ('ACT'||LPAD(to_char(ActivityNo_SEQ.NEXTVAL), 4, '0'), 'NBA2019總決賽 第一場', '這是RULE', TO_TIMESTAMP('2019-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2019-06-01 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), 2.456, NULL, NULL, '這是CONTENT');
Insert into Activity (ActivityNo, ActivityName, ActRule, DateStart, DateEnd, BetRate, ChatContent, StreamContent, ActivityContent) values ('ACT'||LPAD(to_char(ActivityNo_SEQ.NEXTVAL), 4, '0'), 'NBA2019總決賽 第二場', '這是RULE', TO_TIMESTAMP('2019-06-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2019-06-04 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), 1.157, NULL, NULL, '這是CONTENT');
Insert into Activity (ActivityNo, ActivityName, ActRule, DateStart, DateEnd, BetRate, ChatContent, StreamContent, ActivityContent) values ('ACT'||LPAD(to_char(ActivityNo_SEQ.NEXTVAL), 4, '0'), 'NBA2019總決賽 第三場', '這是RULE', TO_TIMESTAMP('2019-06-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2019-06-05 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), 2.687, NULL, NULL, '這是CONTENT');
Insert into Activity (ActivityNo, ActivityName, ActRule, DateStart, DateEnd, BetRate, ChatContent, StreamContent, ActivityContent) values ('ACT'||LPAD(to_char(ActivityNo_SEQ.NEXTVAL), 4, '0'), 'NBA2019總決賽 第四場', '這是RULE', TO_TIMESTAMP('2019-06-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2019-06-07 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), 3.647, NULL, NULL, '這是CONTENT');
Insert into Activity (ActivityNo, ActivityName, ActRule, DateStart, DateEnd, BetRate, ChatContent, StreamContent, ActivityContent) values ('ACT'||LPAD(to_char(ActivityNo_SEQ.NEXTVAL), 4, '0'), 'NBA2019總決賽 第五場', '這是RULE', TO_TIMESTAMP('2019-06-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2019-06-09 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), 1.566, NULL, NULL, '這是CONTENT');
Insert into Activity (ActivityNo, ActivityName, ActRule, DateStart, DateEnd, BetRate, ChatContent, StreamContent, ActivityContent) values ('ACT'||LPAD(to_char(ActivityNo_SEQ.NEXTVAL), 4, '0'), 'NBA2019總決賽 第六場', '這是RULE', TO_TIMESTAMP('2019-06-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2019-06-12 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), 15.758, NULL, NULL, '這是CONTENT');

commit;

--------------------------------------------------------
-- 建立參與歷程
--------------------------------------------------------
CREATE TABLE PartList (
  ActivityNo  VARCHAR2(7)  NOT NULL REFERENCES Activity (ActivityNo), 
  MemNo       VARCHAR2(7)  NOT NULL REFERENCES MemberList (MemNo),
  Putpoints   NUMBER(7) NOT NULL,
  GetPoints   NUMBER(7) NOT NULL,
  OddRate     NUMBER(6) NOT NULL,
  CONSTRAINT PartList_PK PRIMARY KEY (ActivityNo, MemNo));

Insert into PartList (ActivityNo, MemNo, Putpoints, GetPoints, OddRate) values ('ACT0001', 'MEM0001', 1000, 1234, 1.234);
Insert into PartList (ActivityNo, MemNo, Putpoints, GetPoints, OddRate) values ('ACT0002', 'MEM0002', 2000, 4912, 2.456);
Insert into PartList (ActivityNo, MemNo, Putpoints, GetPoints, OddRate) values ('ACT0003', 'MEM0003', 3000, 3471, 1.157);
Insert into PartList (ActivityNo, MemNo, Putpoints, GetPoints, OddRate) values ('ACT0004', 'MEM0004', 5000, 13435, 2.687);
Insert into PartList (ActivityNo, MemNo, Putpoints, GetPoints, OddRate) values ('ACT0005', 'MEM0005', 10000, 36470, 3.647);
Insert into PartList (ActivityNo, MemNo, Putpoints, GetPoints, OddRate) values ('ACT0006', 'MEM0006', 100, 187, 1.87);
Insert into PartList (ActivityNo, MemNo, Putpoints, GetPoints, OddRate) values ('ACT0007', 'MEM0007', 666, 4439.556, 6.666);
commit;

--------------------------------------------------------
-- 建立積分商品
--------------------------------------------------------
CREATE TABLE PointGoods (
  PointGoodsNo    VARCHAR2(7)  NOT NULL, 
  PointGoodsName  VARCHAR2(100)  NOT NULL, 
  PointGoodsQuantity NUMBER(6) NOT NULL,
  NeedPoints NUMBER(7) NOT NULL,
  PointGoodsDesc VARCHAR2(1000) NOT NULL,
  PointGoodsPic BLOB,
  PointGoodsStatus NUMBER(1),
  CONSTRAINT PointGoodsNO_PK PRIMARY KEY (PointGoodsNo));
	  
CREATE SEQUENCE PointGoodsNo_SEQ
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into PointGoods (PointGoodsNo, PointGoodsName, PointGoodsQuantity, NeedPoints, PointGoodsDesc, PointGoodsPic, PointGoodsStatus) values ('PG'||LPAD(to_char(PointGoodsNo_SEQ.NEXTVAL), 5, '0'), '天氣之子電影票', 100, 7777, '這是天氣之子電影票', NULL, 1);  
Insert into PointGoods (PointGoodsNo, PointGoodsName, PointGoodsQuantity, NeedPoints, PointGoodsDesc, PointGoodsPic, PointGoodsStatus) values ('PG'||LPAD(to_char(PointGoodsNo_SEQ.NEXTVAL), 5, '0'), '遊戲王遊記本', 200, 2000, '這是遊戲王遊記本', NULL, 1);
Insert into PointGoods (PointGoodsNo, PointGoodsName, PointGoodsQuantity, NeedPoints, PointGoodsDesc, PointGoodsPic, PointGoodsStatus) values ('PG'||LPAD(to_char(PointGoodsNo_SEQ.NEXTVAL), 5, '0'), '一嵐拉麵優惠卷', 10000, 1000, '這是一嵐拉麵優惠卷', NULL, 1);
Insert into PointGoods (PointGoodsNo, PointGoodsName, PointGoodsQuantity, NeedPoints, PointGoodsDesc, PointGoodsPic, PointGoodsStatus) values ('PG'||LPAD(to_char(PointGoodsNo_SEQ.NEXTVAL), 5, '0'), '東京池袋大都會大飯店住宿優惠卷', 30, 6666, '這是東京池袋大都會大飯店住宿優惠卷', NULL, 1);
Insert into PointGoods (PointGoodsNo, PointGoodsName, PointGoodsQuantity, NeedPoints, PointGoodsDesc, PointGoodsPic, PointGoodsStatus) values ('PG'||LPAD(to_char(PointGoodsNo_SEQ.NEXTVAL), 5, '0'), '遊戲王冰箱磁鐵', 500, 500, '這是遊戲王冰箱磁鐵', NULL, 1);
Insert into PointGoods (PointGoodsNo, PointGoodsName, PointGoodsQuantity, NeedPoints, PointGoodsDesc, PointGoodsPic, PointGoodsStatus) values ('PG'||LPAD(to_char(PointGoodsNo_SEQ.NEXTVAL), 5, '0'), '舒潔衛生紙', 100000, 1500, '這是舒潔衛生紙', NULL, 1);
Insert into PointGoods (PointGoodsNo, PointGoodsName, PointGoodsQuantity, NeedPoints, PointGoodsDesc, PointGoodsPic, PointGoodsStatus) values ('PG'||LPAD(to_char(PointGoodsNo_SEQ.NEXTVAL), 5, '0'), '東京成田機場台北來回機票', 1, 99999, '這是東京成田機場台北來回機票', NULL, 1);
Insert into PointGoods (PointGoodsNo, PointGoodsName, PointGoodsQuantity, NeedPoints, PointGoodsDesc, PointGoodsPic, PointGoodsStatus) values ('PG'||LPAD(to_char(PointGoodsNo_SEQ.NEXTVAL), 5, '0'), '吳永志老師簽名講義', 999, 999999, '這是吳永志老師簽名講義', NULL, 0);
commit;

--------------------------------------------------------
-- 建立積分訂單
--------------------------------------------------------
CREATE TABLE PointGoodsOrd (
  PointGoodsOrdNo    VARCHAR2(7)  NOT NULL PRIMARY KEY, 
  MemNo  VARCHAR2(7)  NOT NULL REFERENCES MemberList (MemNo), 
  Address VARCHAR2(300) NOT NULL,
  OrdStatus NUMBER(1) NOT NULL,
  OrderPoint NUMBER(7) NOT NULL);
	  
CREATE SEQUENCE PointGoodsOrdNo_SEQ
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into PointGoodsOrd (PointGoodsOrdNo, MemNo, Address, OrdStatus, OrderPoint) values ('PGO'||LPAD(to_char(PointGoodsOrdNo_SEQ.NEXTVAL), 4, '0'), 'MEM0001', '桃園市平鎮區民族路二段175號', 0, 7777);  
Insert into PointGoodsOrd (PointGoodsOrdNo, MemNo, Address, OrdStatus, OrderPoint) values ('PGO'||LPAD(to_char(PointGoodsOrdNo_SEQ.NEXTVAL), 4, '0'), 'MEM0002', '新竹縣竹東鎮長春路3段130號', 2, 4000);
Insert into PointGoodsOrd (PointGoodsOrdNo, MemNo, Address, OrdStatus, OrderPoint) values ('PGO'||LPAD(to_char(PointGoodsOrdNo_SEQ.NEXTVAL), 4, '0'), 'MEM0003', '臺北市大安區新生南路三段96-1號', 1, 5000);
Insert into PointGoodsOrd (PointGoodsOrdNo, MemNo, Address, OrdStatus, OrderPoint) values ('PGO'||LPAD(to_char(PointGoodsOrdNo_SEQ.NEXTVAL), 4, '0'), 'MEM0004', '臺南市中西區中華西路二段38號', 1, 5000);
Insert into PointGoodsOrd (PointGoodsOrdNo, MemNo, Address, OrdStatus, OrderPoint) values ('PGO'||LPAD(to_char(PointGoodsOrdNo_SEQ.NEXTVAL), 4, '0'), 'MEM0005', '高雄市前鎮區中華五路1111號', 0, 99999);
Insert into PointGoodsOrd (PointGoodsOrdNo, MemNo, Address, OrdStatus, OrderPoint) values ('PGO'||LPAD(to_char(PointGoodsOrdNo_SEQ.NEXTVAL), 4, '0'), 'MEM0006', '臺中市大里區中興路二段478號', 2, 3000);
Insert into PointGoodsOrd (PointGoodsOrdNo, MemNo, Address, OrdStatus, OrderPoint) values ('PGO'||LPAD(to_char(PointGoodsOrdNo_SEQ.NEXTVAL), 4, '0'), 'MEM0007', '嘉義市忠孝路489號', 3, 6666);
Insert into PointGoodsOrd (PointGoodsOrdNo, MemNo, Address, OrdStatus, OrderPoint) values ('PGO'||LPAD(to_char(PointGoodsOrdNo_SEQ.NEXTVAL), 4, '0'), 'MEM0008', '臺東市新生路158號', 3, 17443);
commit;

--------------------------------------------------------
-- 建立積分訂單明細
--------------------------------------------------------
CREATE TABLE PGOrdDetails (
  PointGoodsOrdNo VARCHAR2(7)  NOT NULL REFERENCES PointGoodsOrd (PointGoodsOrdNo), 
  PointGoodsNo VARCHAR2(7)  NOT NULL REFERENCES PointGoods (PointGoodsNo), 
  PointGoodsQuantity NUMBER(6) NOT NULL,
  GoodsPoint NUMBER(7),
  CONSTRAINT PGOrdDetails_PK PRIMARY KEY (PointGoodsOrdNo, PointGoodsNo));   

Insert into PGOrdDetails (PointGoodsOrdNo, PointGoodsNo, PointGoodsQuantity, GoodsPoint) values ('PGO0001', 'PG00001', 1, 7777);
Insert into PGOrdDetails (PointGoodsOrdNo, PointGoodsNo, PointGoodsQuantity, GoodsPoint) values ('PGO0002', 'PG00002', 2, 4000);
Insert into PGOrdDetails (PointGoodsOrdNo, PointGoodsNo, PointGoodsQuantity, GoodsPoint) values ('PGO0003', 'PG00005', 3, 1500);
Insert into PGOrdDetails (PointGoodsOrdNo, PointGoodsNo, PointGoodsQuantity, GoodsPoint) values ('PGO0003', 'PG00002', 1, 2000);
Insert into PGOrdDetails (PointGoodsOrdNo, PointGoodsNo, PointGoodsQuantity, GoodsPoint) values ('PGO0003', 'PG00006', 1,1500);
Insert into PGOrdDetails (PointGoodsOrdNo, PointGoodsNo, PointGoodsQuantity, GoodsPoint) values ('PGO0004', 'PG00005', 10, 5000);
Insert into PGOrdDetails (PointGoodsOrdNo, PointGoodsNo, PointGoodsQuantity, GoodsPoint) values ('PGO0005', 'PG00007', 1, 99999);
Insert into PGOrdDetails (PointGoodsOrdNo, PointGoodsNo, PointGoodsQuantity, GoodsPoint) values ('PGO0006', 'PG00003', 1, 1000);
Insert into PGOrdDetails (PointGoodsOrdNo, PointGoodsNo, PointGoodsQuantity, GoodsPoint) values ('PGO0006', 'PG00002', 1, 2000);
Insert into PGOrdDetails (PointGoodsOrdNo, PointGoodsNo, PointGoodsQuantity, GoodsPoint) values ('PGO0007', 'PG00004', 1, 6666);
Insert into PGOrdDetails (PointGoodsOrdNo, PointGoodsNo, PointGoodsQuantity, GoodsPoint) values ('PGO0008', 'PG00001', 1, 7777);
Insert into PGOrdDetails (PointGoodsOrdNo, PointGoodsNo, PointGoodsQuantity, GoodsPoint) values ('PGO0008', 'PG00002', 1, 2000);
Insert into PGOrdDetails (PointGoodsOrdNo, PointGoodsNo, PointGoodsQuantity, GoodsPoint) values ('PGO0008', 'PG00003', 1, 1000);
Insert into PGOrdDetails (PointGoodsOrdNo, PointGoodsNo, PointGoodsQuantity, GoodsPoint) values ('PGO0008', 'PG00004', 1, 6666);
commit;

--------------------------------------------------------
-- 建立管理員名單
--------------------------------------------------------
CREATE TABLE ADMINISTRATOR(	
  AdminNo        VARCHAR2(7)   NOT NULL, 
  AdminName      VARCHAR2(12)  NOT NULL, 
  E_mail         VARCHAR2(30)  NOT NULL UNIQUE, 
  AdminPasswd    VARCHAR2(20)  NOT NULL, 
  AdminStatus    NUMBER(1)     NOT NULL, 
  
  CONSTRAINT  ADMINISTRATOR_PK PRIMARY KEY (AdminNo));
  
CREATE SEQUENCE administrator_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into ADMINISTRATOR (AdminNo,AdminName,E_mail,AdminPasswd,AdminStatus) values ('ADS'||LPAD(to_char(administrator_seq.NEXTVAL), 4, '0'),'James','James@gmail.com','a034257387','0');
Insert into ADMINISTRATOR (AdminNo,AdminName,E_mail,AdminPasswd,AdminStatus) values ('ADS'||LPAD(to_char(administrator_seq.NEXTVAL), 4, '0'),'Wade','wade@gmail.com','bb45678','0');
Insert into ADMINISTRATOR (AdminNo,AdminName,E_mail,AdminPasswd,AdminStatus) values ('ADS'||LPAD(to_char(administrator_seq.NEXTVAL), 4, '0'),'Gasol','gasol@gmail.com','asd123456','1');
Insert into ADMINISTRATOR (AdminNo,AdminName,E_mail,AdminPasswd,AdminStatus) values ('ADS'||LPAD(to_char(administrator_seq.NEXTVAL), 4, '0'),'Paul','paul@gmail.com','qwe789123','1');
commit;

--------------------------------------------------------
-- 建立管理員名單
--------------------------------------------------------
CREATE TABLE FUNCLIST(	
  FuncNo      VARCHAR2(7)    NOT NULL  PRIMARY KEY, 
  FuncName    VARCHAR2(150)  NOT NULL);
  
CREATE SEQUENCE funclist_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into FUNCLIST (FuncNo,FuncName) values ('FUN'||LPAD(to_char(funclist_seq.NEXTVAL), 4, '0'),'管理會員權限；設置管理員權限；管理員登入/登出');
Insert into FUNCLIST (FuncNo,FuncName) values ('FUN'||LPAD(to_char(funclist_seq.NEXTVAL), 4, '0'),'管理積分商品；管理積分商品出貨作業、上下架；管理競猜');
Insert into FUNCLIST (FuncNo,FuncName) values ('FUN'||LPAD(to_char(funclist_seq.NEXTVAL), 4, '0'),'設置景點；景點審查；管理遊記檢舉；管理行程檢舉');
Insert into FUNCLIST (FuncNo,FuncName) values ('FUN'||LPAD(to_char(funclist_seq.NEXTVAL), 4, '0'),'管理代購訂單檢舉；管理代購商品檢舉；查看代購訂單；管理商城商品；商城商品上下架');
commit;

--------------------------------------------------------
-- 建立權限名單
--------------------------------------------------------
CREATE TABLE AUTHORITY(	
  AdminNo      VARCHAR2(7)   NOT NULL REFERENCES ADMINISTRATOR (AdminNo), 
  FuncNo       VARCHAR2(7)   NOT NULL REFERENCES FUNCLIST (FuncNo), 
 
  CONSTRAINT  AUTHORITY_PK PRIMARY KEY (AdminNo,FuncNo));
  
CREATE SEQUENCE authority_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into AUTHORITY (AdminNo,FuncNo) values ('ADS0001','FUN0001');
Insert into AUTHORITY (AdminNo,FuncNo) values ('ADS0002','FUN0002');
Insert into AUTHORITY (AdminNo,FuncNo) values ('ADS0003','FUN0003');
Insert into AUTHORITY (AdminNo,FuncNo) values ('ADS0004','FUN0004');
commit;

