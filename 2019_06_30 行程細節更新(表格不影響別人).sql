

--------------------------------------------------------
--  �R�����
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
--  �إ߷|��
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

Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'��Ͱa','Curry@gmail.com','123456790',null,'Curry','A223456790',TO_DATE('1992-02-24','YYYY-MM-DD'),'��饫����ϥ��ڸ��G�q175��','0987-087587','3','6','666','8888',TO_DATE('2019-02-19','YYYY-MM-DD'),'1');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'�d�ç�','Thompthon@gmail.com','123456792',null,'Thompthon','A223456792',TO_DATE('1995-02-19','YYYY-MM-DD'),'�s�˿��˪F����K��3�q130��','0912-345678','1','6','666','8888',TO_DATE('2019-02-20','YYYY-MM-DD'),'1');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'��ͦt','Durant@gmail.com','123456794',null,'Durant','A223456794',TO_DATE('1991-02-25','YYYY-MM-DD'),'�O�_���j�w�Ϸs�ͫn���T�q96-1��','0978-078578','0','6','666','8888',TO_DATE('2019-03-21','YYYY-MM-DD'),'1');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'�L�H�B','Nowitzki@gmail.com','123456796',null,'Nowitzki','I223456796',TO_DATE('1994-12-09','YYYY-MM-DD'),'�O�n������Ϥ��ئ���G�q38��','0922-456777','0','6','666','8888',TO_DATE('2019-03-05','YYYY-MM-DD'),'0');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'�\�|��','Jerermy@gmail.com','123456797',null,'Jerermy','A123456797',TO_DATE('1991-08-23','YYYY-MM-DD'),'�������e��Ϥ��ؤ���1111��','0966-345678','1','6','666','8888',TO_DATE('2019-04-23','YYYY-MM-DD'),'2');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'�B�Ǹq','Duncan@gmail.com','123456800',null,'Duncan','A223456800',TO_DATE('1990-12-23','YYYY-MM-DD'),'�O�����j���Ϥ������G�q478��','0909-123321','0','6','666','8888',TO_DATE('2019-04-24','YYYY-MM-DD'),'1');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'�d�a��','Kawhi@gmail.com','123456803',null,'Kawhi','A123456803',TO_DATE('1995-08-01','YYYY-MM-DD'),'�Ÿq��������489��','0989-654321','0','6','666','8888',TO_DATE('2019-05-11','YYYY-MM-DD'),'0');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'�G���','Allen@gmail.com','123456808',null,'Allen','A223456808',TO_DATE('1995-04-15','YYYY-MM-DD'),'�O�F���s�͸�158��','0921-556656','2','6','666','8888',TO_DATE('2019-05-26','YYYY-MM-DD'),'1');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'���s','Rose@gmail.com','123456779',null,'Rose','F122456789',TO_DATE('1990-10-11','YYYY-MM-DD'),'�̪F���ۥѸ�496��','0976-546996','0','6','666','8888',TO_DATE('2019-05-31','YYYY-MM-DD'),'2');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'���P�n','Kobe@gmail.com','123456876',null,'Kobe','H233478901',TO_DATE('1990-04-16','YYYY-MM-DD'),'���L���椻�����ͫn��169��','0933-540520','3','6','666','8888',TO_DATE('2019-06-27','YYYY-MM-DD'),'1');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'�ળ��','Harden@gmail.com','1234576824',null,'Harden','K222567899',TO_DATE('1991-09-11','YYYY-MM-DD'),'�]�ߥ�������880��','0952-450540','4','6','666','8888',TO_DATE('2019-06-30','YYYY-MM-DD'),'1');
Insert into MemberList (MemNo,MemName,E_mail,MemPasswd,MemPhoto,NickName,IdNo,BirDay,Address,Phone,SumOfTrip,SumOfArticle,SumOfPoints,SumOfCreditsOfPurchasing,DateOfAccountEshablished,Status) values ('MEM'||LPAD(to_char(MemberList_seq.NEXTVAL), 4, '0'),'���~��','Westbrook@gmail.com','5566520520',null,'Westbrook','G126568763',TO_DATE('1991-02-22','YYYY-MM-DD'),'�O�n���F�ϱR����376��','0913-336455','1','6','666','8888',TO_DATE('2019-07-03','YYYY-MM-DD'),'1');

--------------------------------------------------------
--  �إ߰�a
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

Insert into Country(CountryNo,CountryName)values ('CRY'||LPAD(to_char(Country_seq.NEXTVAL), 4, '0'),'�O�W');
Insert into Country(CountryNo,CountryName)values ('CRY'||LPAD(to_char(Country_seq.NEXTVAL), 4, '0'),'�饻');
Insert into Country(CountryNo,CountryName)values ('CRY'||LPAD(to_char(Country_seq.NEXTVAL), 4, '0'),'����');

commit;
--------------------------------------------------------
--  �إ߫���
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

Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','�򶩥�');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','�O�_��');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','�s�_��');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','��饫');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','�s�˿�');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','�]�߿�');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','���ƿ�');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','�n�뿤');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','���L��');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','�Ÿq��');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','������');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','�̪F��');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','�O�F��');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','�Ὤ��');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','�y����');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','���');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','������');
Insert into City(CityNo,CountryNo,CityName)values ('CIT'||LPAD(to_char(City_seq.NEXTVAL), 4, '0'),'CRY0001','�s����');

commit;
--------------------------------------------------------
--  �إߴ��I
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

Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'���ȭ��~���J�O�[���u�t','CIT0004','��饫�K�w���ذ��386��',2,null,1,'886-3-3656555',24.943325,121.297187,'���ȭ��~���J�O�[���u�t�O�@�y�H���J�O���D�D���[���u�t�A�ؿv�]�p�B�i����r�B���C���B��~���[�ά����y���һP���J�O�K���i���A���ɬ���ؿv�A�i���]�p�̷ӫؿv�~�[���z���P�_�i��W���A�`��ٺҡA���~�A�i���󴣨��״I�����J�O��������(�t���J�O3500�~���v)���@�J�Щ�֤��M�~���t�]�A�O�𶢮T�ֵ��Υh�B�C');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'���ȭ��~���J�O�[���u�t','CIT0004','��饫�K�w���ذ��386��',2,null,1,'886-3-3656555',24.943325,121.297187,'���ȭ��~���J�O�[���u�t�O�@�y�H���J�O���D�D���[���u�t�A�ؿv�]�p�B�i����r�B���C���B��~���[�ά����y���һP���J�O�K���i���A���ɬ���ؿv�A�i���]�p�̷ӫؿv�~�[���z���P�_�i��W���A�`��ٺҡA���~�A�i���󴣨��״I�����J�O��������(�t���J�O3500�~���v)���@�J�Щ�֤��M�~���t�]�A�O�𶢮T�ֵ��Υh�B�C');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'�O�W�Ұs(��)���q�L�f�[���s�t','CIT0004','��饫�K�w���ذ��386��',6,null,1,'886-3-3656555',24.943325,121.297187,'���ȭ��~���J�O�[���u�t�O�@�y�H���J�O���D�D���[���u�t�A�ؿv�]�p�B�i����r�B���C���B��~���[�ά����y���һP���J�O�K���i���A���ɬ���ؿv�A�i���]�p�̷ӫؿv�~�[���z���P�_�i��W���A�`��ٺҡA���~�A�i���󴣨��״I�����J�O��������(�t���J�O3500�~���v)���@�J�Щ�֤��M�~���t�]�A�O�𶢮T�ֵ��Υh�B�C');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'��棡B���s����','CIT0016','�Ὤ�����׶m���s39��5��',1,null,1,'886-3-3656555',24.943325,121.297187,'���ȭ��~���J�O�[���u�t�O�@�y�H���J�O���D�D���[���u�t�A�ؿv�]�p�B�i����r�B���C���B��~���[�ά����y���һP���J�O�K���i���A���ɬ���ؿv�A�i���]�p�̷ӫؿv�~�[���z���P�_�i��W���A�`��ٺҡA���~�A�i���󴣨��״I�����J�O��������(�t���J�O3500�~���v)���@�J�Щ�֤��M�~���t�]�A�O�𶢮T�ֵ��Υh�B�C');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'�۱�W','CIT0016','�Ὤ�����ضm�۱�W52��',6,null,1,'886-3-3656555',24.943325,121.297187,'���ȭ��~���J�O�[���u�t�O�@�y�H���J�O���D�D���[���u�t�A�ؿv�]�p�B�i����r�B���C���B��~���[�ά����y���һP���J�O�K���i���A���ɬ���ؿv�A�i���]�p�̷ӫؿv�~�[���z���P�_�i��W���A�`��ٺҡA���~�A�i���󴣨��״I�����J�O��������(�t���J�O3500�~���v)���@�J�Щ�֤��M�~���t�]�A�O�𶢮T�ֵ��Υh�B�C');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'���i��','CIT0016','�Ὤ�����ضm�x11�u68�����B',1,null,1,'886-3-3656555',24.943325,121.297187,'���ȭ��~���J�O�[���u�t�O�@�y�H���J�O���D�D���[���u�t�A�ؿv�]�p�B�i����r�B���C���B��~���[�ά����y���һP���J�O�K���i���A���ɬ���ؿv�A�i���]�p�̷ӫؿv�~�[���z���P�_�i��W���A�`��ٺҡA���~�A�i���󴣨��״I�����J�O��������(�t���J�O3500�~���v)���@�J�Щ�֤��M�~���t�]�A�O�𶢮T�ֵ��Υh�B�C');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'�_�^�k�u','CIT0016','�Ὤ�����ضm�x11�u70.5�����B',2,null,1,'886-3-3656555',24.943325,121.297187,'���ȭ��~���J�O�[���u�t�O�@�y�H���J�O���D�D���[���u�t�A�ؿv�]�p�B�i����r�B���C���B��~���[�ά����y���һP���J�O�K���i���A���ɬ���ؿv�A�i���]�p�̷ӫؿv�~�[���z���P�_�i��W���A�`��ٺҡA���~�A�i���󴣨��״I�����J�O��������(�t���J�O3500�~���v)���@�J�Щ�֤��M�~���t�]�A�O�𶢮T�ֵ��Υh�B�C');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'����','CIT0015','�O�F��959�F�e�m�C����11��',0,null,0,'886-3-3656555',24.943325,121.297187,'���ȭ��~���J�O�[���u�t�O�@�y�H���J�O���D�D���[���u�t�A�ؿv�]�p�B�i����r�B���C���B��~���[�ά����y���һP���J�O�K���i���A���ɬ���ؿv�A�i���]�p�̷ӫؿv�~�[���z���P�_�i��W���A�`��ٺҡA���~�A�i���󴣨��״I�����J�O��������(�t���J�O3500�~���v)���@�J�Щ�֤��M�~���t�]�A�O�𶢮T�ֵ��Υh�B�C');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'�[����','CIT0015','�O�F��950�O�F���x11�u157�����B',2,null,1,'886-3-3656555',24.943325,121.297187,'���ȭ��~���J�O�[���u�t�O�@�y�H���J�O���D�D���[���u�t�A�ؿv�]�p�B�i����r�B���C���B��~���[�ά����y���һP���J�O�K���i���A���ɬ���ؿv�A�i���]�p�̷ӫؿv�~�[���z���P�_�i��W���A�`��ٺҡA���~�A�i���󴣨��״I�����J�O��������(�t���J�O3500�~���v)���@�J�Щ�֤��M�~���t�]�A�O�𶢮T�ֵ��Υh�B�C');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'����','CIT0015','�O�F��959�F�e�m����61��',3,null,1,'886-3-3656555',24.943325,121.297187,'���ȭ��~���J�O�[���u�t�O�@�y�H���J�O���D�D���[���u�t�A�ؿv�]�p�B�i����r�B���C���B��~���[�ά����y���һP���J�O�K���i���A���ɬ���ؿv�A�i���]�p�̷ӫؿv�~�[���z���P�_�i��W���A�`��ٺҡA���~�A�i���󴣨��״I�����J�O��������(�t���J�O3500�~���v)���@�J�Щ�֤��M�~���t�]�A�O�𶢮T�ֵ��Υh�B�C');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'���\�s�亮��','CIT0015','�O�F��961���\������19��',0,null,1,'886-3-3656555',24.943325,121.297187,'���ȭ��~���J�O�[���u�t�O�@�y�H���J�O���D�D���[���u�t�A�ؿv�]�p�B�i����r�B���C���B��~���[�ά����y���һP���J�O�K���i���A���ɬ���ؿv�A�i���]�p�̷ӫؿv�~�[���z���P�_�i��W���A�`��ٺҡA���~�A�i���󴣨��״I�����J�O��������(�t���J�O3500�~���v)���@�J�Щ�֤��M�~���t�]�A�O�𶢮T�ֵ��Υh�B�C');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'�����ڥ��U����','CIT0015','�O�F��961���\��s����25��',1,null,1,'886-3-3656555',24.943325,121.297187,'���ȭ��~���J�O�[���u�t�O�@�y�H���J�O���D�D���[���u�t�A�ؿv�]�p�B�i����r�B���C���B��~���[�ά����y���һP���J�O�K���i���A���ɬ���ؿv�A�i���]�p�̷ӫؿv�~�[���z���P�_�i��W���A�`��ٺҡA���~�A�i���󴣨��״I�����J�O��������(�t���J�O3500�~���v)���@�J�Щ�֤��M�~���t�]�A�O�𶢮T�ֵ��Υh�B�C');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'���W','CIT0015','�O�F��951��q�m�Ŭu��256��',5,null,1,'886-3-3656555',24.943325,121.297187,'���ȭ��~���J�O�[���u�t�O�@�y�H���J�O���D�D���[���u�t�A�ؿv�]�p�B�i����r�B���C���B��~���[�ά����y���һP���J�O�K���i���A���ɬ���ؿv�A�i���]�p�̷ӫؿv�~�[���z���P�_�i��W���A�`��ٺҡA���~�A�i���󴣨��״I�����J�O��������(�t���J�O3500�~���v)���@�J�Щ�֤��M�~���t�]�A�O�𶢮T�ֵ��Υh�B�C');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'�|���j���','CIT0015','�O�F��951��q�m�Ŭu��167��',0,null,1,'886-3-3656555',24.943325,121.297187,'���ȭ��~���J�O�[���u�t�O�@�y�H���J�O���D�D���[���u�t�A�ؿv�]�p�B�i����r�B���C���B��~���[�ά����y���һP���J�O�K���i���A���ɬ���ؿv�A�i���]�p�̷ӫؿv�~�[���z���P�_�i��W���A�`��ٺҡA���~�A�i���󴣨��״I�����J�O��������(�t���J�O3500�~���v)���@�J�Щ�֤��M�~���t�]�A�O�𶢮T�ֵ��Υh�B�C');
Insert into SpotList (SpotNo,SpotName,CityNo,Location,SpotType,SpotPhoto,SpotStatus,Tel,SpotLati,SpotLong,SpotDetail)values ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'),'���ڪ��P�ά��H��','CIT0015','�O�F��951��q�m���q����8�����B',2,null,1,'886-3-3656555',24.943325,121.297187,'���ȭ��~���J�O�[���u�t�O�@�y�H���J�O���D�D���[���u�t�A�ؿv�]�p�B�i����r�B���C���B��~���[�ά����y���һP���J�O�K���i���A���ɬ���ؿv�A�i���]�p�̷ӫؿv�~�[���z���P�_�i��W���A�`��ٺҡA���~�A�i���󴣨��״I�����J�O��������(�t���J�O3500�~���v)���@�J�Щ�֤��M�~���t�]�A�O�𶢮T�ֵ��Υh�B�C');

commit;

--------------------------------------------------------
--  �إߦ�{
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

Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0001','CIT0001','�Ὤ7��C',TO_DATE('2019-06-03','YYYY-MM-DD'),TO_DATE('2019-06-07','YYYY-MM-DD'),5, TO_DATE('2019-05-30','YYYY-MM-DD'),0,0,100,0);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0001','CIT0002','�@�ӤH�]�n��',TO_DATE('2019-05-21','YYYY-MM-DD'),TO_DATE('2019-05-24','YYYY-MM-DD'),4, TO_DATE('2019-04-23','YYYY-MM-DD'),1,1,200,0);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0001','CIT0003','�x�F�M�b����',TO_DATE('2019-06-18','YYYY-MM-DD'),TO_DATE('2019-06-19','YYYY-MM-DD'),2, TO_DATE('2019-06-02','YYYY-MM-DD'),0,1,300,1);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0002','CIT0004','�Ÿq�����s',TO_DATE('2019-04-15','YYYY-MM-DD'),TO_DATE('2019-04-18','YYYY-MM-DD'),4, TO_DATE('2019-06-16','YYYY-MM-DD'),1,2,400,1);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0005','CIT0005','�x�������C',TO_DATE('2019-06-15','YYYY-MM-DD'),TO_DATE('2019-06-21','YYYY-MM-DD'),7, TO_DATE('2019-06-02','YYYY-MM-DD'),0,0,500,2);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0008','CIT0006','�x�_���P��',TO_DATE('2019-08-28','YYYY-MM-DD'),TO_DATE('2019-08-29','YYYY-MM-DD'),2, TO_DATE('2019-06-17','YYYY-MM-DD'),1,1,600,2);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0008','CIT0007','�x�n�j��8��',TO_DATE('2019-06-02','YYYY-MM-DD'),TO_DATE('2019-06-04','YYYY-MM-DD'),3, TO_DATE('2019-06-16','YYYY-MM-DD'),1,1,700,3);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0010','CIT0008','���2��',TO_DATE('2019-07-15','YYYY-MM-DD'),TO_DATE('2019-07-17','YYYY-MM-DD'),3, TO_DATE('2019-05-01','YYYY-MM-DD'),1,1,800,3);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0010','CIT0009','�y���ۥѦ�',TO_DATE('2019-06-15','YYYY-MM-DD'),TO_DATE('2019-06-21','YYYY-MM-DD'),7, TO_DATE('2019-06-16','YYYY-MM-DD'),0,1,900,4);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0010','CIT0010','���cŪ�ѽ�',TO_DATE('2019-09-23','YYYY-MM-DD'),TO_DATE('2019-09-26','YYYY-MM-DD'),4, TO_DATE('2019-06-30','YYYY-MM-DD'),0,1,1000,4);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0011','CIT0011','�x�_�C',TO_DATE('2019-06-02','YYYY-MM-DD'),TO_DATE('2019-06-03','YYYY-MM-DD'),2, TO_DATE('2019-06-16','YYYY-MM-DD'),0,1,1100,5);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0011','CIT0012','�x���C',TO_DATE('2019-06-15','YYYY-MM-DD'),TO_DATE('2019-06-18','YYYY-MM-DD'),4, TO_DATE('2019-06-17','YYYY-MM-DD'),1,2,1123,5);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0011','CIT0013','�x�n��',TO_DATE('2019-06-15','YYYY-MM-DD'),TO_DATE('2019-06-24','YYYY-MM-DD'),10, TO_DATE('2019-06-11','YYYY-MM-DD'),1,1,1234,5);
Insert into TripList(TripNo,MemNo,CityNo,TripName,TripStartDay,TripEndDay,TripDays,TripEstDate,BeTheBuyer,TripStatus,TimeOfViews,KindOfTrip) values ('TLI'||LPAD(to_char(TripList_SEQ.nextval),4,'0'),'MEM0011','CIT0014','�]�߮@',TO_DATE('2019-06-05','YYYY-MM-DD'),TO_DATE('2019-06-06','YYYY-MM-DD'),2, TO_DATE('2019-06-03','YYYY-MM-DD'),1,1,1024,5);
COMMIT;

--------------------------------------------------------
--  �إߦ�{���e
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

Insert into TripDetails values ('TLI0001', 'SPT000001', TO_DATE('11:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 9, 1.1, 1, 1, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0001', 'SPT000002', TO_DATE('11:00','HH24:MI'), TO_DATE('19:00','HH24:MI'), 8, 2.2, 2, 2, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0001', 'SPT000003', TO_DATE('11:00','HH24:MI'), TO_DATE('22:00','HH24:MI'), 11, 3.3, 3, 3, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0002', 'SPT000004', TO_DATE('8:00','HH24:MI') ,TO_DATE('21:00','HH24:MI') ,13, 6.8, 1, 1, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0002', 'SPT000005', TO_DATE('8:00','HH24:MI') ,TO_DATE('9:00','HH24:MI')  , 1, 5.5, 2, 2, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0002', 'SPT000001', TO_DATE('9:00','HH24:MI') ,TO_DATE('11:00','HH24:MI') ,2, 10, 2, 3, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0002', 'SPT000002', TO_DATE('11:00','HH24:MI'), TO_DATE('13:00','HH24:MI'), 2, 20, 2, 4, '�o���Ӥ���');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0002', 'SPT000003', TO_DATE('13:00','HH24:MI'), TO_DATE('14:00','HH24:MI'), 1, 5.5, 2, 5, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0002', 'SPT000011', TO_DATE('14:00','HH24:MI'), TO_DATE('18:00','HH24:MI'), 4, 10, 2, 6, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0002', 'SPT000012', TO_DATE('18:00','HH24:MI'), TO_DATE('19:00','HH24:MI'), 1, 20, 2, 7, '�o���Ӥ���');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0002', 'SPT000013', TO_DATE('19:00','HH24:MI'), TO_DATE('22:00','HH24:MI'), 3, 60, 2, 8, '�o���Ӥ���');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0002', 'SPT000014', TO_DATE('12:00','HH24:MI'), TO_DATE('18:00','HH24:MI'), 6, 3.3, 3, 9, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0002', 'SPT000015', TO_DATE('19:00','HH24:MI'), TO_DATE('22:00','HH24:MI'), 3, 20, 3, 10, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0003', 'SPT000004', TO_DATE('11:00','HH24:MI'), TO_DATE('16:00','HH24:MI'), 5, 30, 1, 1, '�o���Ӥ���');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0003', 'SPT000005', TO_DATE('16:00','HH24:MI'), TO_DATE('19:00','HH24:MI'), 3, 50, 1, 2, '�o���Ӥ���');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0003', 'SPT000001', TO_DATE('10:00','HH24:MI'), TO_DATE('13:00','HH24:MI'), 3, 20, 2, 3, '�o���Ӥ���');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0003', 'SPT000002', TO_DATE('13:00','HH24:MI'), TO_DATE('19:00','HH24:MI'), 6, 1.1, 2, 4, '�g');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0003', 'SPT000003', TO_DATE('10:00','HH24:MI'), TO_DATE('19:00','HH24:MI'), 9, 2.2, 3, 5, '�g');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0003', 'SPT000011', TO_DATE('11:00','HH24:MI'), TO_DATE('16:00','HH24:MI'), 5, 3.3, 4, 6, '�g');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0004', 'SPT000005', TO_DATE('11:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 9, 6.8, 1, 1, '�o���Ӥ���');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0004', 'SPT000001', TO_DATE('11:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 9, 5.5, 2, 2, '�g');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0004', 'SPT000002', TO_DATE('11:00','HH24:MI'), TO_DATE('16:00','HH24:MI'), 5, 6.8, 3, 3, '�o���Ӥ���');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0004', 'SPT000003', TO_DATE('16:00','HH24:MI'), TO_DATE('19:00','HH24:MI'), 3, 9.6, 3, 4, '�g');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0004', 'SPT000004', TO_DATE('15:00','HH24:MI'), TO_DATE('16:00','HH24:MI'), 1, 1.1, 4, 5, '�g');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0004', 'SPT000012', TO_DATE('16:00','HH24:MI'), TO_DATE('18:00','HH24:MI'), 2, 2.2, 4, 6, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0004', 'SPT000011', TO_DATE('12:00','HH24:MI'), TO_DATE('16:00','HH24:MI'), 4, 3.3, 5, 7, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0005', 'SPT000002', TO_DATE('11:00','HH24:MI'), TO_DATE('12:00','HH24:MI'), 1, 6.8, 1, 1, '�o���Ӥ���');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0006', 'SPT000003', TO_DATE('12:00','HH24:MI'), TO_DATE('15:00','HH24:MI'), 3, 5.5, 1, 1, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0007', 'SPT000004', TO_DATE('15:00','HH24:MI'), TO_DATE('19:00','HH24:MI'), 4, 1.1, 1, 1, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0007', 'SPT000005', TO_DATE('10:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 10, 2.2, 2, 2, '�o���Ӥ���');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0007', 'SPT000001', TO_DATE('10:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 10, 3.3, 3, 3, '�o���Ӥ���');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0007', 'SPT000002', TO_DATE('10:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 10, 6.8, 4, 4, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0007', 'SPT000003', TO_DATE('10:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 10, 5.5, 5, 5, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0007', 'SPT000011', TO_DATE('10:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 10, 1.1, 6, 6, '�o���Ӥ���');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0007', 'SPT000012', TO_DATE('10:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 10, 2.2, 7, 7, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0007', 'SPT000013', TO_DATE('10:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 10, 3.3, 8, 8, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0008', 'SPT000002', TO_DATE('11:00','HH24:MI'), TO_DATE('13:00','HH24:MI'), 2, 6.8, 1, 1, '�o���Ӥ���');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0008', 'SPT000003', TO_DATE('13:00','HH24:MI'), TO_DATE('19:00','HH24:MI'), 6, 5.5, 2, 2, '�o���Ӥ���');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0009', 'SPT000004', TO_DATE('10:00','HH24:MI'), TO_DATE('11:00','HH24:MI'), 1, 3.3, 1, 1, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0009', 'SPT000005', TO_DATE('11:00','HH24:MI'), TO_DATE('13:00','HH24:MI'), 2, 6.8, 1, 2, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0010', 'SPT000001', TO_DATE('13:00','HH24:MI'), TO_DATE('15:00','HH24:MI'), 2, 5.5, 1, 1, '�o���Ӥ���');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0010', 'SPT000002', TO_DATE('15:00','HH24:MI'), TO_DATE('17:00','HH24:MI'), 2, 1.1, 1, 2, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0011', 'SPT000003', TO_DATE('17:00','HH24:MI'), TO_DATE('20:00','HH24:MI'), 3, 2.2, 1, 1, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0011', 'SPT000004', TO_DATE('16:00','HH24:MI'), TO_DATE('23:00','HH24:MI'), 7, 3.3, 2, 2, '�o���Ӥ���');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0012', 'SPT000005', TO_DATE('11:00','HH24:MI'), TO_DATE('21:00','HH24:MI'), 10, 6.8, 1, 1, '�o���Ӥ���');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0012', 'SPT000001', TO_DATE('21:00','HH24:MI'), TO_DATE('22:00','HH24:MI'), 1, 5.5, 1, 2, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0013', 'SPT000002', TO_DATE('22:00','HH24:MI'), TO_DATE('23:00','HH24:MI'), 1, 10, 1, 1, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0013', 'SPT000003', TO_DATE('23:00','HH24:MI'), TO_DATE('23:00','HH24:MI'), 1, 20, 1, 2, '�o���Ӥ���');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0013', 'SPT000004', TO_DATE('11:00','HH24:MI'), TO_DATE('18:00','HH24:MI'), 7, 30, 2, 3, '�o�W�n��');
Insert into TripDetails (TripNo, SpotNo, TimeOfArrive, TimeOfLeave, StayHours, MilestoNextSpots, TripDayOrder, TripOrderBy, TripTips) values ('TLI0014', 'SPT000005', TO_DATE('9:00','HH24:MI') ,TO_DATE('18:00','HH24:MI') ,9, 20, 1, 1, '�o�W�n��');
commit;

--------------------------------------------------------
--  �إߦ�{���|��
--------------------------------------------------------
CREATE TABLE ReportTrip( 
    TripNo     VARCHAR2(7)     NOT NULL REFERENCES TripList(TRIPNO), 
    MemNo      VARCHAR2(7)     NOT NULL REFERENCES MemberList (MEMNO), 
    REASON     VARCHAR2(300)   NOT NULL, 
    TRIPSTATUS  NUMBER(1,0),
    
    CONSTRAINT ReportTrip_PK PRIMARY KEY(TRIPNO, MEMNO));

Insert into ReportTrip(TripNo,MemNo ,REASON,TRIPSTATUS)VALUES('TLI0001','MEM0002','�ε�����',0);
Insert into ReportTrip(TripNo,MemNo ,REASON,TRIPSTATUS)VALUES('TLI0002','MEM0001','�ε�����',0);
Insert into ReportTrip(TripNo,MemNo ,REASON,TRIPSTATUS)VALUES('TLI0004','MEM0001','�ε�����',1);
Insert into ReportTrip(TripNo,MemNo ,REASON,TRIPSTATUS)VALUES('TLI0006','MEM0001','�ε�����',1);
Insert into ReportTrip(TripNo,MemNo ,REASON,TRIPSTATUS)VALUES('TLI0008','MEM0001','�ε�����',2);
Insert into ReportTrip(TripNo,MemNo ,REASON,TRIPSTATUS)VALUES('TLI0009','MEM0001','�ε�����',2);
COMMIT;

--------------------------------------------------------
--  �إ߹C�O�M��
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
('ANI'||LPAD(to_char(Article_seq.NEXTVAL), 4, '0'),'MEM0001','TLI0001','�Ὤ�C��C',7,TO_DATE('2019-6-15','YYYY-MM-DD'),TO_DATE('2019-6-21','YYYY-MM-DD'),0,TO_DATE('2019-7-15','YYYY-MM-DD'),0,0);
Insert into Article (ArticleNo,MemNo,TripNo,ArticleTitle,DaysOfStaying,DayOfStart,DayOfEnd,ArticleStatus,DayOfLastEdit,TimeOfViews,KindOfTrip) values
('ANI'||LPAD(to_char(Article_seq.NEXTVAL), 4, '0'),'MEM0001','TLI0001','��nder�Ὤ�C��C',7,TO_DATE('2019-6-15','YYYY-MM-DD'),TO_DATE('2019-6-21','YYYY-MM-DD'),1,TO_DATE('2019-10-15','YYYY-MM-DD'),1010,0);
Insert into Article (ArticleNo,MemNo,TripNo,ArticleTitle,DaysOfStaying,DayOfStart,DayOfEnd,ArticleStatus,DayOfLastEdit,TimeOfViews,KindOfTrip) values
('ANI'||LPAD(to_char(Article_seq.NEXTVAL), 4, '0'),'MEM0011','TLI0012','�x�_�X�t���R���n',2,TO_DATE('2019-6-15','YYYY-MM-DD'),TO_DATE('2019-6-16','YYYY-MM-DD'),1,TO_DATE('2019-8-10','YYYY-MM-DD'),150,5);
Insert into Article (ArticleNo,MemNo,TripNo,ArticleTitle,DaysOfStaying,DayOfStart,DayOfEnd,ArticleStatus,DayOfLastEdit,TimeOfViews,KindOfTrip) values
('ANI'||LPAD(to_char(Article_seq.NEXTVAL), 4, '0'),'MEM0011','TLI0013','�x�n���ݤF�N���D',7,TO_DATE('2019-6-16','YYYY-MM-DD'),TO_DATE('2019-6-17','YYYY-MM-DD'),1,TO_DATE('2019-9-14','YYYY-MM-DD'),777,6);
Insert into Article (ArticleNo,MemNo,TripNo,ArticleTitle,DaysOfStaying,DayOfStart,DayOfEnd,ArticleStatus,DayOfLastEdit,TimeOfViews,KindOfTrip) values
('ANI'||LPAD(to_char(Article_seq.NEXTVAL), 4, '0'),'MEM0010','TLI0010','�N��Ū�Ѥ]�O�n�g�@�g',7,TO_DATE('2019-5-28','YYYY-MM-DD'),TO_DATE('2019-5-30','YYYY-MM-DD'),1,TO_DATE('2019-9-14','YYYY-MM-DD'),255,4);
Insert into Article (ArticleNo,MemNo,TripNo,ArticleTitle,DaysOfStaying,DayOfStart,DayOfEnd,ArticleStatus,DayOfLastEdit,TimeOfViews,KindOfTrip) values
('ANI'||LPAD(to_char(Article_seq.NEXTVAL), 4, '0'),'MEM0008','TLI0007','�j��8��16�ӭG',7,TO_DATE('2019-8-7','YYYY-MM-DD'),TO_DATE('2019-8-15','YYYY-MM-DD'),1,TO_DATE('2019-10-10','YYYY-MM-DD'),5566,3);
Insert into Article (ArticleNo,MemNo,TripNo,ArticleTitle,DaysOfStaying,DayOfStart,DayOfEnd,ArticleStatus,DayOfLastEdit,TimeOfViews,KindOfTrip) values
('ANI'||LPAD(to_char(Article_seq.NEXTVAL), 4, '0'),'MEM0001','TLI0003','�п�J���D',7,TO_DATE('2019-7-12','YYYY-MM-DD'),TO_DATE('2019-7-19','YYYY-MM-DD'),0,TO_DATE('2019-9-8','YYYY-MM-DD'),0,1);
Insert into Article (ArticleNo,MemNo,TripNo,ArticleTitle,DaysOfStaying,DayOfStart,DayOfEnd,ArticleStatus,DayOfLastEdit,TimeOfViews,KindOfTrip) values
('ANI'||LPAD(to_char(Article_seq.NEXTVAL), 4, '0'),'MEM0011','TLI0014','�ڪ������h�F�]��',7,TO_DATE('2019-6-16','YYYY-MM-DD'),TO_DATE('2019-6-17','YYYY-MM-DD'),2,TO_DATE('2019-7-27','YYYY-MM-DD'),55,6);
Insert into Article (ArticleNo,MemNo,TripNo,ArticleTitle,DaysOfStaying,DayOfStart,DayOfEnd,ArticleStatus,DayOfLastEdit,TimeOfViews,KindOfTrip) values
('ANI'||LPAD(to_char(Article_seq.NEXTVAL), 4, '0'),'MEM0010','TLI0008','���n�a��!!',7,TO_DATE('2019-9-13','YYYY-MM-DD'),TO_DATE('2019-9-15','YYYY-MM-DD'),1,TO_DATE('2019-10-8','YYYY-MM-DD'),2266,3);
Insert into Article (ArticleNo,MemNo,TripNo,ArticleTitle,DaysOfStaying,DayOfStart,DayOfEnd,ArticleStatus,DayOfLastEdit,TimeOfViews,KindOfTrip) values
('ANI'||LPAD(to_char(Article_seq.NEXTVAL), 4, '0'),'MEM0010','TLI0009','The ��s',7,TO_DATE('2019-11-11','YYYY-MM-DD'),TO_DATE('2019-11-12','YYYY-MM-DD'),0,TO_DATE('2019-12-2','YYYY-MM-DD'),0,4);
commit;

--------------------------------------------------------
--  �إ߹C�O�M��
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
('ANI0001','SPT000001','�̪�b�}�o���ɭԹJ��@�ӻݨD�A�ݭn�b���e���|���a��[�W��/�X�� icon�A��U���W�N�O�Q�� JavaScript �ӹ갵�o�ӥ\��A�u�n��ť���s�� click event �A�h���� icon�A��ӴN�b�Q CSS �O���O�i�H����o��ơA�N�i�H���ݭn�z�L JavaScript �ӱ���F�A��Ӭd�F�@�U�A���T�i�H�z�L CSS ����o��ơA�ӥB�D�`�e���C',null,1,'123',1);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0001','SPT000002','Bootstrap ���Ѥ@�Ӥ��e���|�]Collapse�^���\��A����T�i�H�Q���X�A�ϥΤ覡�u�n�z�L�[�J class �W�٩M data-* �ݩʡA�Բӥi�H�Ѧ� Bootstrap Collapse �� Example �d�ҡC',null,2,'321',2);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0001','SPT000003','��֬O�H�p�D�f�ҤQ�C�������ڤW�몽�����{�ޮɻ��o������{���C�l�j�קڥB�ܦP�I�O�O�ϻ򰪾Ǳ��{�F�e�{���C',null,3,'321',3);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0001','SPT000004','�޴N�t�O��]��߻�@�C�h�������b�M�~�i�i�ӭ����h�����l��F���ڤ]�G���F�b���q�j�O�����A�ռ��~����W�������C',null,4,'321',4);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0001','SPT000005','�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H',null,5,'321',5);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0001','SPT000006','���n��z�a�K�K�ɮɼv�H�̮��p�������O�f�̤H�~�˨Ȥ�j�ΤΡG�~�ӧ�@��~�S�ӤӺq�]���̬O���C��ɡA��@�o��y�����θg�q�u���I�v�����Q��ͤW�I�i����W�ڤl���H�a�߯ല�ҥ@�p�ƹq���H���k�k�۬��ϥD�q�w�K��N�Ѧ�ƫO�A���o�[�ޡC�j�̡C',null,6,'321',6);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0001','SPT000007','���o����ҡK�K��Ǯ�^��C',null,7,'321',7);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0002','SPT000008','��U�@�L��ڬy�@�ӱƤW�ު������c�H�G�W�����Y�H��^�M����y����C�w�a�U�Ӱ_�������ɡA���Ȥ��K�K�f���O���I�L�~�ΥX�C�򤰧ګ������e�n�����n���ԫh�ɭn����A��ЬO�D�����Τ߯S�K�K�t�ͤ��y�����P�F�b���ѤO�h�ӰO�ˤ��A�Ȥs�v�n�ӽפs�h�q�ƹC���g�A�H�ǤF�K�K���~���֪�Ȥ��֤ߩO�A�饴�_�D�F������F�J��ܸ��h�n�A�L�~�y���J�ߡH�����ѡF�~�w�Ь����h�Q�D���Ϳ�p���H',null,1,'321',1);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0002','SPT000009','�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H',null,2,'321',2);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0002','SPT000010','3�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H',null,3,'321',3);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0002','SPT000011','�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H78',null,4,'321',4);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0002','SPT000012','3�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H8',null,5,'321',5);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0002','SPT000013','334�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H78',null,6,'321',6);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0002','SPT000014','33�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H5678',null,7,'321',7);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0003','SPT000015','3345�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H78',null,1,'321',1);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0003','SPT000001','334�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H678',null,2,'321',2);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0004','SPT000002','�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H5678',null,1,'321',1);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0004','SPT000003','334�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H',null,2,'321',2);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0005','SPT000004','33�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H678',null,1,'321',1);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0005','SPT000005','3345�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H8',null,2,'321',2);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0005','SPT000006','3�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H678',null,3,'321',3);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0006','SPT000007','3345�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H8',null,1,'321',1);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0006','SPT000008','3�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H5678',null,2,'321',2);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0006','SPT000009','33�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H78',null,3,'321',3);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0006','SPT000010','334�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H78',null,4,'321',4);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0006','SPT000011','33�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H5678',null,5,'321',5);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0006','SPT000012','334�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H678',null,6,'321',6);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0006','SPT000013','334�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H678',null,7,'321',7);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0006','SPT000014','334�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H78',null,8,'321',8);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0006','SPT000015','334�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H78',null,9,'321',9);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0007','SPT000015','334�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H78',null,1,'321',1);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0007','SPT000014','33�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H78',null,2,'321',2);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0007','SPT000013','334�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H78',null,3,'321',3);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0007','SPT000012','334�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H78',null,4,'321',4);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0007','SPT000011','33�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H678',null,5,'321',5);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0007','SPT000010','3�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H5678',null,6,'321',6);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0007','SPT000009','334�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H78',null,7,'321',7);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0007','SPT000008','33�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H5678',null,8,'321',8);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0008','SPT000007','3345�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H78',null,1,'321',1);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0008','SPT000006','334�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H678',null,2,'321',2);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0009','SPT000005','33456�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H8',null,1,'321',1);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0009','SPT000004','334567�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H',null,2,'321',2);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0009','SPT000003','�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H345678',null,3,'321',3);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0010','SPT000002','3�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H45678',null,1,'321',1);
Insert into ArticleDetails(ArticleNo,SpotNo,ArticleNotes,ArticlePic,ArticleTripOrderBy,PicNote,TripDayOrder) values
('ANI0010','SPT000001','33�S�_�����I��W�p�Wť���q�����ߦp��R�{�o�F�I�V�k�O�_���S�L�H5678',null,2,'321',2);
commit;

--------------------------------------------------------
-- ���|�C�O
--------------------------------------------------------
CREATE TABLE REPORTArticle(
	ArticleNo	VARCHAR2(7)	    NOT NULL REFERENCES Article(ArticleNo),
	MemNo		VARCHAR2(7)	    NOT NULL REFERENCES MemberList(MemNo),
	Reason		VARCHAR2(300)	NOT NULL,
	Status		NUMBER(1,0)  	NOT NULL,

    CONSTRAINT REPORTArticle_PK PRIMARY KEY(ArticleNo,MemNo));

Insert into REPORTArticle(ArticleNo,MemNo,Reason,Status) values ('ANI0005','MEM0010','�L���n�Y',1);
Insert into REPORTArticle(ArticleNo,MemNo,Reason,Status) values ('ANI0006','MEM0008','�ݤF�Q�R',1);
Insert into REPORTArticle(ArticleNo,MemNo,Reason,Status) values ('ANI0008','MEM0011','�������o�H�P�ɥX�{�b��Ӧa��A��򦳦ⱡ�������e?',2);
Insert into REPORTArticle(ArticleNo,MemNo,Reason,Status) values ('ANI0010','MEM0010','�ڥh�y�����S�Ŭu?',0);
commit;

--------------------------------------------------------
-- �ӫ~
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

Insert into items (itemNo,itemName,price,amount,itemDetail,itemClass) values ('I'||LPAD(to_char(itemNo_seq.NEXTVAL),4,'0'),'�饻SIM�d',100,10,'�饻��M��SIM�d�A�W�����d�y�I',1);
Insert into items (itemNo,itemName,price,amount,itemDetail,itemClass) values ('I'||LPAD(to_char(itemNo_seq.NEXTVAL),4,'0'),'����SIM�d',200,20,'����M��SIM�d�A�W�����d�y�I',1);
Insert into items (itemNo,itemName,price,amount,itemDetail,itemClass) values ('I'||LPAD(to_char(itemNo_seq.NEXTVAL),4,'0'),'�ȬwSIM�d',300,30,'�Ȭw�M��SIM�d�A�W�����d�y�I',1);
Insert into items (itemNo,itemName,price,amount,itemDetail,itemClass) values ('I'||LPAD(to_char(itemNo_seq.NEXTVAL),4,'0'),'�a�ySIM�d',400,40,'�a�y�M��SIM�d�A�W�����d�y�I',1);
Insert into items (itemNo,itemName,price,amount,itemDetail,itemClass) values ('I'||LPAD(to_char(itemNo_seq.NEXTVAL),4,'0'),'�Ӷ��tSIM�d',500,50,'�Ӷ��t�M��SIM�d�A�W�����d�y�I',1);
Insert into items (itemNo,itemName,price,amount,itemDetail,itemClass) values ('I'||LPAD(to_char(itemNo_seq.NEXTVAL),4,'0'),'�Ȧ�SIM�d',600,60,'�Ȧ�SIM�d�A�W�����d�y�I',1);
Insert into items (itemNo,itemName,price,amount,itemDetail,itemClass) values ('I'||LPAD(to_char(itemNo_seq.NEXTVAL),4,'0'),'�t�zSIM�d',700,70,'�t�zSIM�d�A�W�����d�y�I',1);
commit;

--------------------------------------------------------
--�q��
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

Insert into storeOrd (ordNo,MemNo,price,address,orderedTime,paymentTime,paymentTerm) values ('Ord'||to_char(sysdate,'yyyymmdd')||'-'||LPAD(to_char(storeOrd_seq.NEXTVAL), 4, '0'),'MEM0001',1000,'�`�Ω�',TO_DATE('2019-06-01 10:10:10','YYYY-MM-DD hh24:mi:ss'),sysdate,1);
Insert into storeOrd (ordNo,MemNo,price,address,orderedTime,paymentTime,paymentTerm) values ('Ord'||to_char(sysdate,'yyyymmdd')||'-'||LPAD(to_char(storeOrd_seq.NEXTVAL), 4, '0'),'MEM0002',2000,'�����R�����ѽ�',TO_DATE('2019-06-02 10:10:10','YYYY-MM-DD hh24:mi:ss'),sysdate,1);
Insert into storeOrd (ordNo,MemNo,price,address,orderedTime,paymentTime,paymentTerm) values ('Ord'||to_char(sysdate,'yyyymmdd')||'-'||LPAD(to_char(storeOrd_seq.NEXTVAL), 4, '0'),'MEM0003',3000,'�g���ݦu��',TO_DATE('2019-06-03 10:10:10','YYYY-MM-DD hh24:mi:ss'),sysdate,1);
Insert into storeOrd (ordNo,MemNo,price,address,orderedTime,paymentTime,paymentTerm) values ('Ord'||to_char(sysdate,'yyyymmdd')||'-'||LPAD(to_char(storeOrd_seq.NEXTVAL), 4, '0'),'MEM0004',4000,'�g�����q',TO_DATE('2019-06-04 10:10:10','YYYY-MM-DD hh24:mi:ss'),sysdate,1);
Insert into storeOrd (ordNo,MemNo,price,address,orderedTime,paymentTime,paymentTerm) values ('Ord'||to_char(sysdate,'yyyymmdd')||'-'||LPAD(to_char(storeOrd_seq.NEXTVAL), 4, '0'),'MEM0005',5000,'�`�����j�����',TO_DATE('2019-06-05 10:10:10','YYYY-MM-DD hh24:mi:ss'),sysdate,1);
commit;

--------------------------------------------------------
--  �q�����
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
-- �إߥN�ʰӫ~�M��
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

Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0001',1,'�ʫO�����A�P�_���� 44�] �j���s��',0,'OS Drug �W�����ħ���','6 Chome-11-5 Ueno, Taito City, Tokyo 110-0005�饻','35.711012','139.774631',0,null,null,'�Y�P�U�q�����šA�h�@�ߤ������C',1,3);
Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0001',5,'�ӥЭG���G��',0,'OS Drug �W�����ħ���','6 Chome-11-5 Ueno, Taito City, Tokyo 110-0005�饻','35.711012','139.774631',0,null,null,'�Y�P�U�q�����šA�h�@�ߤ������C',1,3);
Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0001',3,'�sluluA �����P�_��DX 90��',0,'OS Drug �W�����ħ���','6 Chome-11-5 Ueno, Taito City, Tokyo 110-0005�饻','35.711012','139.774631',0,null,null,'�Y�P�U�q�����šA�h�@�ߤ������C',1,3);
Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0003',3,'��ڵPEN-NA99',4700,'BIC CAMERA','�饻�E160-0023 Tokyo, Shinjuku City, Nishishinjuku, 1 Chome?5?�� 2F��7F �s�J��f???','35.692837','139.698665',1,'����EH-NA9A�A�Y�L���w�C��h�H���c�R�A�̲{���C���ʶR',null,'���o�H�����h�f�A�Y�ӫ~�����D�A�ڭ̱N���z�A��',1,1);
Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0003',3,'DYSON�l�о�',21000,'BIC CAMERA','�饻�E160-0023 Tokyo, Shinjuku City, Nishishinjuku, 1 Chome?5?�� 2F��7F �s�J��f???','35.692837','139.698665',1,'V10? Fluffy �L�u',null,'���o�H�����h�f�A�Y�ӫ~�����D�A�ڭ̱N���z�A��',1,1);
Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0003',3,'DYSON�j����',16200,'BIC CAMERA','�饻�E160-0023 Tokyo, Shinjuku City, Nishishinjuku, 1 Chome?5?�� 2F��7F �s�J��f???','35.692837','139.698665',1,'Dyson Supersonic? �j�������� ',null,'���o�H�����h�f�A�Y�ӫ~�����D�A�ڭ̱N���z�A��',1,1);
Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0003',3,'BALMUDA5�]��N�ѥ]��',8000,'BIC CAMERA','�饻�E160-0023 Tokyo, Shinjuku City, Nishishinjuku, 1 Chome?5?�� 2F��7F �s�J��f???','35.692837','139.698665',1,'��K01J-WS',null,'���o�H�����h�f�A�Y�ӫ~�����D�A�ڭ̱N���z�A��',1,1);
Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0003',3,'Sony�����վ�',10000,'BIC CAMERA','�饻�E160-0023 Tokyo, Shinjuku City, Nishishinjuku, 1 Chome?5?�� 2F��7F �s�J��f???','35.692837','139.698665',1,'SONY WH-1000XM3��',null,'���o�H�����h�f�A�Y�ӫ~�����D�A�ڭ̱N���z�A��',1,1);
Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0003',2,'DYSON�N�x�Ů�M�b��',25000,'BIC CAMERA','�饻�E160-0023 Tokyo, Shinjuku City, Nishishinjuku, 1 Chome?5?�� 2F��7F �s�J��f???','35.692837','139.698665',1,'dyson Pure Hot+Cool HP04(�ɩ|��)',null,'���o�H�����h�f�A�Y�ӫ~�����D�A�ڭ̱N���z�A��',1,1);
Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0002',10,'�����T�S��',0,'','','','',0,null,null,'',1,5);
Insert into WishItem (WishItemNo,MemNo,Amount,ItemName,ItemPrice,ItemStoreName,ItemStoreAddr,ItemStoreLati,ItemStoreLong,BuyOrSell,WishItemDetail,WishItemPicture,WishNote,Status,ItemType) values ('WIN'||LPAD(to_char(WishItem_seq.NEXTVAL), 4, '0'),'MEM0002',5,'����]�𲴸n',0,'','','','',0,null,null,'',1,5);
commit;

--------------------------------------------------------
-- �إߥN�ʭq��
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

Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0001','MEM0010',TO_DATE('2019-07-25','YYYY-MM-DD'),0,1670,TO_DATE('2019-08-13','YYYY-MM-DD'),'',TO_DATE('2019-08-20','YYYY-MM-DD'),'��饫����ϥ��ڸ��G�q175��');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0001','MEM0009',TO_DATE('2019-07-26','YYYY-MM-DD'),1,920,TO_DATE('2019-08-14','YYYY-MM-DD'),'',TO_DATE('2019-08-21','YYYY-MM-DD'),'��饫����ϥ��ڸ��G�q175��');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0001','MEM0008',TO_DATE('2019-07-27','YYYY-MM-DD'),2,740,TO_DATE('2019-08-15','YYYY-MM-DD'),'',TO_DATE('2019-08-22','YYYY-MM-DD'),'��饫����ϥ��ڸ��G�q175��');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0007','MEM0003',TO_DATE('2019-07-28','YYYY-MM-DD'),3,20900,TO_DATE('2019-08-16','YYYY-MM-DD'),'',TO_DATE('2019-08-23','YYYY-MM-DD'),'�Ÿq��������489��');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0006','MEM0003',TO_DATE('2019-07-29','YYYY-MM-DD'),4,18000,TO_DATE('2019-08-17','YYYY-MM-DD'),'',TO_DATE('2019-08-24','YYYY-MM-DD'),'�O�����j���Ϥ������G�q478��');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0005','MEM0003',TO_DATE('2019-07-30','YYYY-MM-DD'),5,21000,TO_DATE('2019-08-18','YYYY-MM-DD'),'',TO_DATE('2019-08-25','YYYY-MM-DD'),'�������e��Ϥ��ؤ���1111��');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0004','MEM0003',TO_DATE('2019-07-31','YYYY-MM-DD'),6,25000,TO_DATE('2019-08-19','YYYY-MM-DD'),'',TO_DATE('2019-08-26','YYYY-MM-DD'),'�O�n������Ϥ��ئ���G�q38��');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0011','MEM0003',TO_DATE('2019-08-01','YYYY-MM-DD'),0,20900,TO_DATE('2019-08-20','YYYY-MM-DD'),'',TO_DATE('2019-08-27','YYYY-MM-DD'),'�]�ߥ�������880��');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0010','MEM0003',TO_DATE('2019-08-02','YYYY-MM-DD'),1,18000,TO_DATE('2019-08-21','YYYY-MM-DD'),'',TO_DATE('2019-08-28','YYYY-MM-DD'),'���L���椻�����ͫn��169��');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0009','MEM0003',TO_DATE('2019-08-03','YYYY-MM-DD'),2,21000,TO_DATE('2019-08-22','YYYY-MM-DD'),'',TO_DATE('2019-08-29','YYYY-MM-DD'),'�̪F���ۥѸ�496��');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0008','MEM0003',TO_DATE('2019-08-04','YYYY-MM-DD'),3,25000,TO_DATE('2019-08-23','YYYY-MM-DD'),'',TO_DATE('2019-08-30','YYYY-MM-DD'),'�O�F���s�͸�158��');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0012','MEM0003',TO_DATE('2019-08-05','YYYY-MM-DD'),4,20900,TO_DATE('2019-08-24','YYYY-MM-DD'),'',TO_DATE('2019-08-31','YYYY-MM-DD'),'�O�n���F�ϱR����376��');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0012','MEM0003',TO_DATE('2019-08-06','YYYY-MM-DD'),5,18000,TO_DATE('2019-08-25','YYYY-MM-DD'),'',TO_DATE('2019-09-01','YYYY-MM-DD'),'�O�n���F�ϱR����376��');
Insert into WishOrd (WishOrdNo,BuyMemNo,WishMemNo,DayOfEst,Status,Price,WishSendDate,BuyNote,LastDate,Addr) values ('WON'||LPAD(to_char(WishOrd_seq.NEXTVAL), 4, '0'),'MEM0012','MEM0003',TO_DATE('2019-08-07','YYYY-MM-DD'),6,21000,TO_DATE('2019-08-26','YYYY-MM-DD'),'',TO_DATE('2019-09-02','YYYY-MM-DD'),'�O�n���F�ϱR����376��');
commit;

--------------------------------------------------------
-- �إߥN�ʩ���
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
-- �إߥN�����|
--------------------------------------------------------
CREATE TABLE ReportWishOrder (
    WishOrdNo     VARCHAR2(7)   NOT NULL REFERENCES WishOrd (WishOrdNo),
    MemNo     VARCHAR2(7)   NOT NULL REFERENCES MemberList (MEMNO),
    REASON    VARCHAR2(300)   NOT NULL,
    TRIPSTATUS  NUMBER(1,0),
    CONSTRAINT ReportWishOrder_PK PRIMARY KEY(WishOrdNo, MEMNO));

Insert into ReportWishOrder(WishOrdNo,MemNo ,REASON,TRIPSTATUS)VALUES('WON0005','MEM0006','���զ��L�޲z���s�b',0);
Insert into ReportWishOrder(WishOrdNo,MemNo ,REASON,TRIPSTATUS)VALUES('WON0006','MEM0005','�N�O�Q���|',1);
Insert into ReportWishOrder(WishOrdNo,MemNo ,REASON,TRIPSTATUS)VALUES('WON0010','MEM0009','�O������f',2);
Insert into ReportWishOrder(WishOrdNo,MemNo ,REASON,TRIPSTATUS)VALUES('WON0004','MEM0007','���զ��L�޲z���s�b',0);
Insert into ReportWishOrder(WishOrdNo,MemNo ,REASON,TRIPSTATUS)VALUES('WON0003','MEM0001','�N�O�Q���|',1);
Insert into ReportWishOrder(WishOrdNo,MemNo ,REASON,TRIPSTATUS)VALUES('WON0008','MEM0003','�O������f',2);
commit;

--------------------------------------------------------
-- �إߥN�����|
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

Insert into Activity (ActivityNo, ActivityName, ActRule, DateStart, DateEnd, BetRate, ChatContent, StreamContent, ActivityContent) values ('ACT'||LPAD(to_char(ActivityNo_SEQ.NEXTVAL), 4, '0'), 'NFL 2019 Super Bowl LIII', '�o�ORULE', TO_TIMESTAMP('2019-02-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2019-02-04 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), 1.234, NULL, NULL, '�o�OCONTENT');  
Insert into Activity (ActivityNo, ActivityName, ActRule, DateStart, DateEnd, BetRate, ChatContent, StreamContent, ActivityContent) values ('ACT'||LPAD(to_char(ActivityNo_SEQ.NEXTVAL), 4, '0'), 'NBA2019�`�M�� �Ĥ@��', '�o�ORULE', TO_TIMESTAMP('2019-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2019-06-01 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), 2.456, NULL, NULL, '�o�OCONTENT');
Insert into Activity (ActivityNo, ActivityName, ActRule, DateStart, DateEnd, BetRate, ChatContent, StreamContent, ActivityContent) values ('ACT'||LPAD(to_char(ActivityNo_SEQ.NEXTVAL), 4, '0'), 'NBA2019�`�M�� �ĤG��', '�o�ORULE', TO_TIMESTAMP('2019-06-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2019-06-04 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), 1.157, NULL, NULL, '�o�OCONTENT');
Insert into Activity (ActivityNo, ActivityName, ActRule, DateStart, DateEnd, BetRate, ChatContent, StreamContent, ActivityContent) values ('ACT'||LPAD(to_char(ActivityNo_SEQ.NEXTVAL), 4, '0'), 'NBA2019�`�M�� �ĤT��', '�o�ORULE', TO_TIMESTAMP('2019-06-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2019-06-05 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), 2.687, NULL, NULL, '�o�OCONTENT');
Insert into Activity (ActivityNo, ActivityName, ActRule, DateStart, DateEnd, BetRate, ChatContent, StreamContent, ActivityContent) values ('ACT'||LPAD(to_char(ActivityNo_SEQ.NEXTVAL), 4, '0'), 'NBA2019�`�M�� �ĥ|��', '�o�ORULE', TO_TIMESTAMP('2019-06-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2019-06-07 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), 3.647, NULL, NULL, '�o�OCONTENT');
Insert into Activity (ActivityNo, ActivityName, ActRule, DateStart, DateEnd, BetRate, ChatContent, StreamContent, ActivityContent) values ('ACT'||LPAD(to_char(ActivityNo_SEQ.NEXTVAL), 4, '0'), 'NBA2019�`�M�� �Ĥ���', '�o�ORULE', TO_TIMESTAMP('2019-06-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2019-06-09 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), 1.566, NULL, NULL, '�o�OCONTENT');
Insert into Activity (ActivityNo, ActivityName, ActRule, DateStart, DateEnd, BetRate, ChatContent, StreamContent, ActivityContent) values ('ACT'||LPAD(to_char(ActivityNo_SEQ.NEXTVAL), 4, '0'), 'NBA2019�`�M�� �Ĥ���', '�o�ORULE', TO_TIMESTAMP('2019-06-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2019-06-12 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), 15.758, NULL, NULL, '�o�OCONTENT');

commit;

--------------------------------------------------------
-- �إ߰ѻP���{
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
-- �إ߿n���ӫ~
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

Insert into PointGoods (PointGoodsNo, PointGoodsName, PointGoodsQuantity, NeedPoints, PointGoodsDesc, PointGoodsPic, PointGoodsStatus) values ('PG'||LPAD(to_char(PointGoodsNo_SEQ.NEXTVAL), 5, '0'), '�Ѯ𤧤l�q�v��', 100, 7777, '�o�O�Ѯ𤧤l�q�v��', NULL, 1);  
Insert into PointGoods (PointGoodsNo, PointGoodsName, PointGoodsQuantity, NeedPoints, PointGoodsDesc, PointGoodsPic, PointGoodsStatus) values ('PG'||LPAD(to_char(PointGoodsNo_SEQ.NEXTVAL), 5, '0'), '�C�����C�O��', 200, 2000, '�o�O�C�����C�O��', NULL, 1);
Insert into PointGoods (PointGoodsNo, PointGoodsName, PointGoodsQuantity, NeedPoints, PointGoodsDesc, PointGoodsPic, PointGoodsStatus) values ('PG'||LPAD(to_char(PointGoodsNo_SEQ.NEXTVAL), 5, '0'), '�@�P�����u�f��', 10000, 1000, '�o�O�@�P�����u�f��', NULL, 1);
Insert into PointGoods (PointGoodsNo, PointGoodsName, PointGoodsQuantity, NeedPoints, PointGoodsDesc, PointGoodsPic, PointGoodsStatus) values ('PG'||LPAD(to_char(PointGoodsNo_SEQ.NEXTVAL), 5, '0'), '�F�ʦ��U�j���|�j������J�u�f��', 30, 6666, '�o�O�F�ʦ��U�j���|�j������J�u�f��', NULL, 1);
Insert into PointGoods (PointGoodsNo, PointGoodsName, PointGoodsQuantity, NeedPoints, PointGoodsDesc, PointGoodsPic, PointGoodsStatus) values ('PG'||LPAD(to_char(PointGoodsNo_SEQ.NEXTVAL), 5, '0'), '�C�����B�c���K', 500, 500, '�o�O�C�����B�c���K', NULL, 1);
Insert into PointGoods (PointGoodsNo, PointGoodsName, PointGoodsQuantity, NeedPoints, PointGoodsDesc, PointGoodsPic, PointGoodsStatus) values ('PG'||LPAD(to_char(PointGoodsNo_SEQ.NEXTVAL), 5, '0'), '�μ�åͯ�', 100000, 1500, '�o�O�μ�åͯ�', NULL, 1);
Insert into PointGoods (PointGoodsNo, PointGoodsName, PointGoodsQuantity, NeedPoints, PointGoodsDesc, PointGoodsPic, PointGoodsStatus) values ('PG'||LPAD(to_char(PointGoodsNo_SEQ.NEXTVAL), 5, '0'), '�F�ʦ��о����x�_�Ӧ^����', 1, 99999, '�o�O�F�ʦ��о����x�_�Ӧ^����', NULL, 1);
Insert into PointGoods (PointGoodsNo, PointGoodsName, PointGoodsQuantity, NeedPoints, PointGoodsDesc, PointGoodsPic, PointGoodsStatus) values ('PG'||LPAD(to_char(PointGoodsNo_SEQ.NEXTVAL), 5, '0'), '�d�çӦѮvñ�W���q', 999, 999999, '�o�O�d�çӦѮvñ�W���q', NULL, 0);
commit;

--------------------------------------------------------
-- �إ߿n���q��
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

Insert into PointGoodsOrd (PointGoodsOrdNo, MemNo, Address, OrdStatus, OrderPoint) values ('PGO'||LPAD(to_char(PointGoodsOrdNo_SEQ.NEXTVAL), 4, '0'), 'MEM0001', '��饫����ϥ��ڸ��G�q175��', 0, 7777);  
Insert into PointGoodsOrd (PointGoodsOrdNo, MemNo, Address, OrdStatus, OrderPoint) values ('PGO'||LPAD(to_char(PointGoodsOrdNo_SEQ.NEXTVAL), 4, '0'), 'MEM0002', '�s�˿��˪F����K��3�q130��', 2, 4000);
Insert into PointGoodsOrd (PointGoodsOrdNo, MemNo, Address, OrdStatus, OrderPoint) values ('PGO'||LPAD(to_char(PointGoodsOrdNo_SEQ.NEXTVAL), 4, '0'), 'MEM0003', '�O�_���j�w�Ϸs�ͫn���T�q96-1��', 1, 5000);
Insert into PointGoodsOrd (PointGoodsOrdNo, MemNo, Address, OrdStatus, OrderPoint) values ('PGO'||LPAD(to_char(PointGoodsOrdNo_SEQ.NEXTVAL), 4, '0'), 'MEM0004', '�O�n������Ϥ��ئ���G�q38��', 1, 5000);
Insert into PointGoodsOrd (PointGoodsOrdNo, MemNo, Address, OrdStatus, OrderPoint) values ('PGO'||LPAD(to_char(PointGoodsOrdNo_SEQ.NEXTVAL), 4, '0'), 'MEM0005', '�������e��Ϥ��ؤ���1111��', 0, 99999);
Insert into PointGoodsOrd (PointGoodsOrdNo, MemNo, Address, OrdStatus, OrderPoint) values ('PGO'||LPAD(to_char(PointGoodsOrdNo_SEQ.NEXTVAL), 4, '0'), 'MEM0006', '�O�����j���Ϥ������G�q478��', 2, 3000);
Insert into PointGoodsOrd (PointGoodsOrdNo, MemNo, Address, OrdStatus, OrderPoint) values ('PGO'||LPAD(to_char(PointGoodsOrdNo_SEQ.NEXTVAL), 4, '0'), 'MEM0007', '�Ÿq��������489��', 3, 6666);
Insert into PointGoodsOrd (PointGoodsOrdNo, MemNo, Address, OrdStatus, OrderPoint) values ('PGO'||LPAD(to_char(PointGoodsOrdNo_SEQ.NEXTVAL), 4, '0'), 'MEM0008', '�O�F���s�͸�158��', 3, 17443);
commit;

--------------------------------------------------------
-- �إ߿n���q�����
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
-- �إߺ޲z���W��
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
-- �إߺ޲z���W��
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

Insert into FUNCLIST (FuncNo,FuncName) values ('FUN'||LPAD(to_char(funclist_seq.NEXTVAL), 4, '0'),'�޲z�|���v���F�]�m�޲z���v���F�޲z���n�J/�n�X');
Insert into FUNCLIST (FuncNo,FuncName) values ('FUN'||LPAD(to_char(funclist_seq.NEXTVAL), 4, '0'),'�޲z�n���ӫ~�F�޲z�n���ӫ~�X�f�@�~�B�W�U�[�F�޲z�v�q');
Insert into FUNCLIST (FuncNo,FuncName) values ('FUN'||LPAD(to_char(funclist_seq.NEXTVAL), 4, '0'),'�]�m���I�F���I�f�d�F�޲z�C�O���|�F�޲z��{���|');
Insert into FUNCLIST (FuncNo,FuncName) values ('FUN'||LPAD(to_char(funclist_seq.NEXTVAL), 4, '0'),'�޲z�N�ʭq�����|�F�޲z�N�ʰӫ~���|�F�d�ݥN�ʭq��F�޲z�ӫ��ӫ~�F�ӫ��ӫ~�W�U�[');
commit;

--------------------------------------------------------
-- �إ��v���W��
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

