--------------------------------------------------------
--  파일이 생성됨 - 금요일-11월-11-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AIRPORT_INFO
--------------------------------------------------------

  CREATE TABLE "HCI"."AIRPORT_INFO" 
   (	"AIRPORT_NUM" NUMBER(4,0), 
	"NAME_EN" VARCHAR2(128 BYTE), 
	"NAME_KR" VARCHAR2(128 BYTE), 
	"COUNTRY_EN" VARCHAR2(128 BYTE), 
	"COUNTRY_KR" VARCHAR2(26 BYTE), 
	"LOCATION" VARCHAR2(26 BYTE), 
	"STATE_EN" VARCHAR2(26 BYTE), 
	"STATE_KR" VARCHAR2(26 BYTE), 
	"CITY_EN" VARCHAR2(128 BYTE), 
	"CITY_KR" VARCHAR2(26 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "HCI"."MEMBER" 
   (	"MEM_NUM" NUMBER(5,0), 
	"MEM_ID" VARCHAR2(30 BYTE), 
	"MEM_PASSWD" VARCHAR2(20 BYTE), 
	"MEM_NAME" VARCHAR2(30 BYTE), 
	"MEM_BIRTH" DATE, 
	"MEM_PHONE" VARCHAR2(11 BYTE), 
	"MEM_PICTURE" VARCHAR2(30 BYTE), 
	"MEM_EMAIL_CK" CHAR(1 BYTE) DEFAULT 'N', 
	"MEM_PHONE_CK" CHAR(1 BYTE) DEFAULT 'N', 
	"MEM_CASE" VARCHAR2(10 BYTE) DEFAULT 'DURING', 
	"MEM_PASSPIC" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NOTIFY
--------------------------------------------------------

  CREATE TABLE "HCI"."NOTIFY" 
   (	"NOTI_NUM" NUMBER(5,0), 
	"NOTI_FROM_NUM" NUMBER(5,0), 
	"NOTI_TO_NUM" NUMBER(5,0), 
	"NOTI_EVENT" VARCHAR2(100 BYTE), 
	"NOTI_DATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "HCI"."REVIEW" 
   (	"REVIEW_NUM" NUMBER(5,0), 
	"REVIEW_CONTENT" VARCHAR2(1000 BYTE), 
	"REVIEW_STAR" NUMBER(9,1), 
	"REVIEW_REQ_NUM" NUMBER(5,0), 
	"REVIEW_GUI_NUM" NUMBER(5,0), 
	"REVIEW_SCB_NUM" NUMBER(5,0), 
	"REVIEW_WDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SCHEDULE_BOARD
--------------------------------------------------------

  CREATE TABLE "HCI"."SCHEDULE_BOARD" 
   (	"SCB_NUM" NUMBER(5,0), 
	"SCB_TITLE" VARCHAR2(50 BYTE), 
	"SCB_MEM_NUM" NUMBER(5,0), 
	"SCB_FROM" NUMBER(5,0), 
	"SCB_VIA" VARCHAR2(10 BYTE) DEFAULT 0, 
	"SCB_TO" NUMBER(5,0), 
	"SCB_SDATE" DATE, 
	"SCB_CONTENT" VARCHAR2(1000 BYTE), 
	"SCB_WDATE" DATE DEFAULT SYSDATE, 
	"SCB_CASE" VARCHAR2(10 BYTE) DEFAULT 'WAIT', 
	"SCB_MEDIATE" CHAR(1 BYTE) DEFAULT 'N'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TOKENS
--------------------------------------------------------

  CREATE TABLE "HCI"."TOKENS" 
   (	"TOKEN_NUM" NUMBER, 
	"TOKEN" VARCHAR2(200 BYTE), 
	"TOKEN_MEM_NUM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TRAVEL_HISTORY
--------------------------------------------------------

  CREATE TABLE "HCI"."TRAVEL_HISTORY" 
   (	"TH_NUM" NUMBER(5,0), 
	"TH_REQ_NUM" NUMBER(5,0), 
	"TH_GUI_NUM" NUMBER(5,0), 
	"TH_SCB_NUM" NUMBER(5,0), 
	"TH_CASE" CHAR(1 BYTE) DEFAULT 'N'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HCI.AIRPORT_INFO
SET DEFINE OFF;
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (261,'Rhein-Ruhr Airport ( Dusseldorf International )','라인 루르 공항  ( 뒤셀도르프 국제공항 )','Germany','독일','유럽',null,null,'Dusseldorf','뒤셀도르프');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (262,'Schoenefeld  International Airport ( Berlin Brandenburg International )','쉐너펠트 국제공항  ( 베를린 브란덴부르그 국제공항 )','Germany','독일','유럽',null,null,'Berlin','베를린');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (263,'Soellingen Airport (Baden Airpark)','쇨링젠 공항 (바덴 에어파크)','Germany','독일','유럽',null,null,'Karlsruhe/Baden Baden','카를스루에/바덴 바덴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (264,'Tegel International Airport','테겔 국제공항','Germany','독일','유럽',null,null,'Berlin','베를린');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (265,'North Front Airport','노스 프론트 공항','Gibraltar','스페인','유럽',null,null,'Gibraltar','지브롤터');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (266,'Aktion Airport','악티온 공항','Greece','그리스','유럽',null,null,'Preveza/Lefkas','프레베자 / 레프카스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (267,'Araxos Airport','아락소스 공항','Greece','그리스','유럽',null,null,'Patras','파트라스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (268,'Aristotelis Airport','아리스토텔스 공항','Greece','그리스','유럽',null,null,'Kastoria','카스토리아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (269,'Omiros Airport (Chios Island National Airport)','오미로스 공항 (키오스 아일랜드 내셔널 공항)','Greece','그리스','유럽',null,null,'Chios','키오스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (270,'Demokritos Airport','데모크리토스 공항','Greece','그리스','유럽',null,null,'Alexandroupolis','알렉산두르폴리스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (271,'Diagoras Airport','디아고라스 공항','Greece','그리스','유럽',null,null,'Rhodes','로도스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (272,'Eleftherios Venizelos International Airport','엘레프테리오스 베니젤로스 국제공항','Greece','그리스','유럽',null,null,'Athens / Sparta','아테네 / 스파르타');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (273,'Ikaria Island National Airport','이카리아 아일랜드 내셔널 공항','Greece','그리스','유럽',null,null,'Ikaria','이카리아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (274,'King Pyrros Airport (Ioannina National Airport)','킹 피로스 공항 (요아니나 내셔널 공항)','Greece','그리스','유럽',null,null,'Ioannina','요아니나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (275,'Kalamata International Airport','칼라마타 국제공항','Greece','그리스','유럽',null,null,'Kalamata','칼라마타');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (276,'Karpathos Island National Airport','카파토스 아일랜드 내셔널 공항','Greece','그리스','유럽',null,null,'Karpathos','카파토스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (277,'Kefalonia Island International Airport (Argostolion)','케팔로니아 아일랜드 국제공항 (아르고스톨리온)','Greece','그리스','유럽',null,null,'Kefallinia (Cephallonia)','케팔로니아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (278,'Kithira Island National Airport','키시라 아일랜드 내셔널 공항','Greece','그리스','유럽',null,null,'Kythira ( Kithira )','키시라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (279,'Ippokratis International Airport (Kos Island International Airport)','히포크라테스 국제공항 (코스 아일랜드 국제공항)','Greece','그리스','유럽',null,null,'Kos','코스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (280,'Lemnos International Airport','레노스 국제공항','Greece','그리스','유럽',null,null,'Lemnos ( Limnos )','레노스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (281,'Leros Airport','레로스 공항','Greece','그리스','유럽',null,null,'Leros','레로스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (282,'Corfu International Airport (loannis Kapodistrias (Capodistias) International Airport)','코르푸 국제공항 (이오아니스 카포디스트리아스 공항)','Greece','그리스','유럽',null,null,'Corfu / Kerkyra','코르푸 / 커만샤');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (283,'Thessaloniki International Airport (Makedonia Airport)','테살로니키 국제공항 (마케도니아 공항)','Greece','그리스','유럽',null,null,'Thessaloniki','테살로니키');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (284,'Kavala International Airport (Alexander the Great Airport ) (Megas Alexandros Airport)','카발라 국제공항 (메가스 알렉산드로스 공항)','Greece','그리스','유럽',null,null,'Kavala','카발라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (285,'Milos Island National Airport','밀로스 아일랜드 내셔널 공항','Greece','그리스','유럽',null,null,'Milos','밀로스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (286,'Mykonos Island National Airport(Mikonos )','미코노스 아일랜드 내셔널 공항','Greece','그리스','유럽',null,null,'Mykonos ( Mikonos )','미코노스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (287,'Mytilene International Airport (Odysseas Elytis)','미틸렌 국제공항 (오딧세이 엘리티스)','Greece','그리스','유럽','Lesbos','레스보스','Mytilene (Mitilini)','미틸렌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (288,'N. Kazantzakis Airport','니코스 카잔카키스 공항','Greece','그리스','유럽',null,null,'Heraklion','이라클리온');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (289,'Naxos Island National Airport','낙소스 아일랜드 내셔널 공항','Greece','그리스','유럽',null,null,'Naxos','낙소스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (290,'Nea Anchialos Airport','네아 안키알로스 공항','Greece','그리스','유럽',null,null,'Volos','볼보스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (291,'Paros National Airport','파로스 내셔널 공항','Greece','그리스','유럽',null,null,'Paros','파로스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (292,'Philippos Airport','필리포스 공항','Greece','그리스','유럽',null,null,'Kozani','코자니');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (293,'Samos International Airport (Aristarchos)','사모스 국제공항 (아리스타코스)','Greece','그리스','유럽',null,null,'Samos','사모스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (294,'Santorini (Thira) National Airport','산토리니 ( 티라 ) 내셔널 공항','Greece','그리스','유럽',null,null,'Santorini (Thirra) Islands','산토리니 / 티라 아일랜드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (295,'Sitia Public Airport','시티아 퍼블릭 공항','Greece','그리스','유럽','Crete','그레데','Sitia','시티아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (296,'Alex Papadiamantis Airport (Skiathos Island National Airport)','알렉스 파파디아만티스 (스키아도스 아일랜드 내셔널 공항)','Greece','그리스','유럽',null,null,'Skiathos','스키아도스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (297,'Ioannis Daskalogiannis  (Chania International Airport) (formerly Souda Airport)','이오아니스 다스칼로지아니스  (하냐 국제공항) (사우다 공항 )','Greece','그리스','유럽',null,null,'Chania','하냐');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (298,'Dionisios Solomos Airport (Zakynthos International Airport)','디오니소스 솔로모스 공항 (자킨도스 국제공항)','Greece','그리스','유럽',null,null,'Zakynthos ( Zakinthos )','자킨도스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (299,'Kangerlussuaq Airport (Sondre Stromfjord Airport)','캉거루수악 (쇤드르 스?표르드) 공항','Greenland','그린란드','유럽',null,null,'Kangerlussuaq ( Sondre Stromfjord )','캉거루수악');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (300,'Narssaq Airport','나삭 공항','Greenland','그린란드','유럽',null,null,'Narsaq','나삭');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (301,'Ramon Villeda Morales International Airport','라몬 빌레다 모랄레스 공항','Honduras','온두라스','유럽',null,null,'San Pedro Sula','산페드로술라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (302,'Toncontin Airport','통꼰틴 공항','Honduras','온두라스','유럽',null,null,'Tegucigalpa','테구시갈파');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (303,'Ferihegy Airport','페리헤기 공항','Hungary','헝가리','유럽',null,null,'Budapest','부다페스트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (304,'Keflavik International Airport (Reykjav&iacute;k-Keflav&iacute;k Airport)','케이플라비크 국제공항 (레이캬빅 케이플라비크 공항)','Iceland','아이슬란드','유럽',null,null,'Reykjavik','레이캬비크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (305,'Galway Airport  (Aerphort na Gaillimhe)','골웨어 공항','Ireland','아일랜드','유럽',null,null,'Galway /Canmmore','골웨이 / Carnmore');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (306,'Sligo Airprot ( Aerfort Shligigh )','슬라이고 공항 (구>콜루니 공항)','Ireland','아일랜드','유럽',null,null,'Sligo','슬라이고');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (307,'Cork International Airport','코크 국제공항','Ireland','아일랜드','유럽',null,null,'Cork','코크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (308,'Dublin International Airport','더블린 국제공항','Ireland','아일랜드','유럽',null,null,'Dublin','더블린');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (309,'Fort Lauderdale-Hollywood International Airport','포트 로더데일 할리우드 국제공항','United States','미국','북미캐나다','Florida','플로리다','Fort Lauderdale / Hollywood','포트로더데일 / 할리우드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (310,'Shannon International Airport','섀넌 국제공항','Ireland','아일랜드','유럽','County Clare','카운티 클래어','Shannon / Conty Clare','섀넌 / 카운트 클래어');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (311,'Bari Karol Wojtyła International Airport (Palese Macchie Airport )','바리 카롤 워틸랴 국제공항 (팔레제 마치 공항)','Italy','이탈리아','유럽',null,null,'Bari','바리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (312,'Ciampino Airport','챰피노 공항','Italy','이탈리아','유럽',null,null,'Rome','로마');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (313,'Coata Smeralda Airport','코아타 스메랄다 공항','Italy','이탈리아','유럽',null,null,'Olbia','올비아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (314,'Cristoforo Colombo Airport (Genoa Airport)','크리스토포로 콜롬보 공항 (제노아 공항)','Italy','이탈리아','유럽',null,null,'Genoa','제노아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (315,'Elmas Airport','엘마스 공항','Italy','이탈리아','유럽',null,null,'Cagliari','칼리아리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (316,'Falconara Airport','팔코나라 공항','Italy','이탈리아','유럽',null,null,'Ancona','안코나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1,'Incheon International Airport','인천 국제공항','Republic of Korea','대한민국','아시아태평양',null,null,'Seoul / Incheon','서울 / 인천');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (2,'Gimpo International Airport','김포 국제공항','Republic of Korea','대한민국','아시아,태평양',null,null,'Seoul','서울');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (3,'Gimhae International Airport','김해 국제공항','Republic of Korea','대한민국','아시아,태평양',null,null,'Busan','부산');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (4,'Jeju International Airport','제주 국제공항','Republic of Korea','대한민국','아시아,태평양',null,null,'Jeju','제주');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (5,'Daegu International Airport','대구 국제공항','Republic of Korea','대한민국','아시아,태평양',null,null,'Daegu','대구');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (6,'Cheongju International Airport','청주 국제공항','Republic of Korea','대한민국','아시아,태평양',null,null,'Cheongju','청주');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (7,'Gwangju International Airport','광주 국제공항','Republic of Korea','대한민국','아시아,태평양',null,null,'Gwangju','광주');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (8,'Yangyang International Airport','양양 국제공항','Republic of Korea','대한민국','아시아,태평양',null,null,'Yangyang / Wonju','양양 / 원주');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (9,'Ulsan Airport','울산 공항','Republic of Korea','대한민국','아시아,태평양',null,null,'Ulsan','울산');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (10,'Sacheon Airport','사천 공항','Republic of Korea','대한민국','아시아,태평양',null,null,null,null);
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (11,'Pohang Airport','포항 공항','Republic of Korea','대한민국','아시아,태평양',null,null,'Pohang','포항');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (12,'Gunsan Airport','군산 공항','Republic of Korea','대한민국','아시아태평양',null,null,'Gunsan','군산');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (13,'Yeosu Airport','여수 공항','Republic of Korea','대한민국','아시아,태평양',null,null,'Yeosu','여수');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (14,'Mokpo Airport','목포 공항','Republic of Korea','대한민국','아시아태평양',null,null,'Mokpo','목포');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (15,'Wonju Airport','원주 공항','Republic of Korea','대한민국','아시아,태평양',null,null,null,null);
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (16,'Adelaide International Airport','애들레이드 국제공항','Australia','오스트레일리아','대양주','South Australia','사우스오스트레일리아','Adelaide','애들레이드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (17,'Brisbane International Airport','브리즈번 국제공항','Australia','오스트레일리아','대양주','Queensland','퀸즐랜드','Brisbane','브리즈번');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (18,'Cairns International Airport','케언스 국제공항','Australia','오스트레일리아','대양주','Queensland','퀸즐랜드','Cairns','케언스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (19,'Cocos (Keeling) Island International Airport','코코스 킬링 아일랜드 국제공항','Australia','오스트레일리아','대양주',null,null,'Cocos (Keeling) Island( Keeling Islands )','코코스킬링제도');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (20,'Coolangatta Airport','쿨랑가타 공항','Australia','오스트레일리아','대양주','Queensland','퀸즐랜드','Gold Coast','골드코스트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (21,'Essendon Airport','에션던 공항','Australia','오스트레일리아','대양주','Victoria','빅토리아','Melbourne','멜버른');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (22,'Hobart International Airport','호바트 국제공항','Australia','오스트레일리아','대양주','Tasmania','태즈메이니아','Hobart','호바트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (23,'Kingsford Smith Airport (Sydney International)','킹스포트 스미스 공항 (시드니 국제공항)','Australia','오스트레일리아','대양주','New South Wales','뉴사우스웨일스','Sydney','시드니');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (24,'Mount Isa Airport','마운트이사 공항','Australia','오스트레일리아','대양주','Queensland','퀸즐랜드','Mount Isa','마운트이사');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (25,'Perth International Airport','퍼스 국제공항','Australia','오스트레일리아','대양주','Western Australia','웨스턴오스트레일리아','Redcliffe','레드클리프');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (26,'Townsville International Airport','타운스빌 국제공항','Australia','오스트레일리아','대양주','Queensland','퀸즐랜드','Townsville','타운즈빌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (27,'Tullamarine Airport ( Melbourne International )','툴라마린 공항  ( 멜버른 국제공항 )','Australia','오스트레일리아','대양주','Victoria','빅토리아','Melbourne','멜버른');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (28,'Ganja International Airport (Gyandzha)','지안쟈 국제공항','Azerbaijan','아제르바이잔','아시아태평양',null,null,'Gyandzha','지안쟈');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (29,'Heydar Aliyev International Airport','헤이다 알리예프 국제공항','Azerbaijan','아제르바이잔','아시아태평양',null,null,'Baku','바쿠');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (30,'Paro Airport','파로 공항','Bhutan','부탄','아시아태평양',null,null,'Paro','파로');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (31,'Beef Island Airport','비프 아일랜드 공항','British Virgin Islands','영국령 버진아일랜드','아시아태평양',null,null,'Beef Island /Tortola','비프아일랜드 / 토톨라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (32,'Brunei International Airport','브루나이 국제공항','Brunei','브루나이','아시아,태평양',null,null,'Bandar Seri Begawan','반다르세리베가완');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (33,'Angkor International Airport','앙코르 국제공항','Cambodia','캄보디아','아시아태평양',null,null,'Siem Reap','시엠리아프');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (34,'Pochentong Airport','포켄통 공항','Cambodia','캄보디아','아시아태평양',null,null,'Phnom Penh','프놈펜');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (35,'Rarotonga International Airport','라로통가 국제공항','Cook Islands','쿡 군도','아시아태평양','Rarotonga','라로통가','Rarotonga','라로통가');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (36,'Sunan International Airport ( Pyongyang International )','순안 국제공항  ( 평양국제공항 )','Democratci Republic of Korea','조선민주주의인민공화국','아시아태평양',null,null,'Pyongyang','평양');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (37,'Nadi International Airport','나디 국제공항','Fiji','피지','아시아태평양',null,null,'Nadi','나디');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (38,'Faa''a International Airport','파아 공항','French Polynesia','프랑스령 폴리네시아','아시아태평양',null,null,'Papeete','파페에테');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (39,'Tbilisi International Airport (formerly Novo Alexeyevka Airport ( Lochini ) )','트빌리시 국제공항 (구>노보 알렉세이프카 공항  ( 로치니 )','Georgia','조지아','아시아태평양',null,null,'Tbilisi','트빌리시');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (40,'Antonio Borja Won Pat International Airport (A.B. Won Pat International)','안토니오 보르냐 원 팟 국제공항','Guam','괌','아시아태평양',null,null,'Agana (Hagata), 괌','아가나 (하가타) , 괌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (41,'Hong Kong International Airport ( Chek Lap Kok )','홍콩 국제공항  (첵랍콕 )  (첵랩콕 )','Hong Kong','홍콩','아시아,태평양',null,null,'Hong Kong','홍콩');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (42,'Bamrauli Airport','밤라울리 공항','India','인도','아시아태평양',null,null,'Allahabad','알라하바드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (43,'Rajiv Gandhi International Airport (Hyderabad International Airport) (Begumpet Airport )','라지브간디 국제공항 (하이데라바드 국제공항 ) (베굼페 공항)','India','인도','아시아태평양',null,null,'Hyderabad','하이데라바드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (44,'Borjhar Airport','보리쟈 공항','India','인도','아시아,태평양',null,null,'Guwahati','구와하티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (45,'Calicut International Airport ( Karipur )','칼리컷 국제공항  ( 카리푸르 )','India','인도','아시아,태평양',null,null,'Kozhikode ( Calicut )','칼리컷');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (46,'Chennai International Airport','첸나이 국제공항','India','인도','아시아태평양',null,null,'Chennai / Madras','첸나이 / 마드라스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (47,'Chhatrapati Shivaji International Airport','채해트라피티 시버지 국제공항','India','인도','아시아태평양',null,null,'Mumbai','뭄바이');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (48,'Cochin International Airport (Kochi Int''l)','코친 국제공항','India','인도','아시아태평양',null,null,'Kochi / Nedumbassery','고치 / 네둠바세리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (49,'Dabolim Airport','다보림 공항','India','인도','아시아태평양',null,null,'Goa','고아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (50,'HAL Bangalore International Airport (Hindustan Airport)','할 방갈로르 국제공항 (힌두스탄 공항)','India','인도','아시아,태평양',null,null,'Bangalore','방갈로르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (51,'Indira Gandhi International Airport','인디라 간디 국제공항','India','인도','아시아,태평양',null,null,'Delhi','델리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (52,'Netaji Subhas Chandra Airport','네타지 쉽하스 챤드라 공항','India','인도','아시아태평양',null,null,'Kolkata','콜카타');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (53,'Raja Sansi Airport','라자 산시 공항','India','인도','아시아태평양',null,null,'Amritsar','암리차르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (54,'Sanganeer Airport','상그니어 공항','India','인도','아시아태평양',null,null,'Jaipur','자이푸르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (55,'Sardar Vallabhbhai Patel International Airport','사다르 발랍하이 파텔 국제공항 ( 아메다바드 )','India','인도','아시아태평양',null,null,'Ahmedabad','아메다바드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (56,'Dr. Ambedkar International Airport (fomer Sonegaon )','암베드카 국제공항 (구>소네가온)','India','인도','아시아태평양',null,null,'Nagpur','나그푸르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (57,'Srinagar Air Force Base','스리나가르 공군기지','India','인도','아시아태평양',null,null,'Srinagar','스리나가르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (58,'Thiruvananthapuram International Airport','트리반드럼 국제공항','India','인도','아시아태평양',null,null,'Thiruvananthapuram','트리반드럼');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (59,'Achmad Yani Airport','아츠마드 야니 공항','Indonesia','인도네시아','아시아태평양',null,null,'Semarang','세마랑');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (60,'Blang Bintang Airport','발랑 빈탕 공항','Indonesia','인도네시아','아시아태평양',null,null,'Banda Aceh','반다 아체');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (61,'Halim Perdanakusuma Airport','하림 페다나 쿠수마 공항','Indonesia','인도네시아','아시아태평양',null,null,'Jakarta','자카르타');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (62,'Husein Sastranegara Airport','후세인 사스트라네가라 공항','Indonesia','인도네시아','아시아태평양',null,null,'Bandung','반둥');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (63,'Juanda International Airport','주안다 국제공항','Indonesia','인도네시아','아시아태평양',null,null,'Surabaya','수라바야');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (64,'Minangkabau International Airport','미낭카바우 국제공항','Indonesia','인도네시아','아시아태평양',null,null,'Padang','파당');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (65,'Ngurah Rai Airport','느구라 라이 공항','Indonesia','인도네시아','아시아태평양',null,null,'Denpasar Bali','덴파사 발리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (66,'Penggung Airport','펭궁 공항','Indonesia','인도네시아','아시아태평양',null,null,'Cirebon','찌레봉');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (67,'Polonia International Airport','폴로니아 공항','Indonesia','인도네시아','아시아태평양',null,null,'Medan','메단');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (68,'Selaparang Airport','셀라파랑 공항','Indonesia','인도네시아','아시아태평양',null,null,'Mataram','마타람');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (69,'Sepinggan International Airport','세펭간 국제공항','Indonesia','인도네시아','아시아태평양',null,null,'Balikpapan','발릭파판');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (70,'Simpang Tiga Airport ( Sultan Syarif Kasim II )','심팡 티가 공항  ( 술탄 샤리프 카심 II )','Indonesia','인도네시아','아시아태평양',null,null,'Pekanbaru','페칸바루');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (71,'Soekarno-Hatta International Airport','소엑카르노 하타 국제공항','Indonesia','인도네시아','아시아태평양',null,null,'Jakarta','자카르타');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (72,'Sultan Mahmud Badaruddin II Airport','술탄 무하무드 바다루딘 II 공항','Indonesia','인도네시아','아시아태평양',null,null,'Palembang','팔렘방');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (73,'Chubu Centrair International Airport ( Central Japan )','주부 센트에어 국제공항  ( 센트럴 저팬 )','Japan','일본','아시아태평양',null,null,'Nagoya','나고야');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (74,'Fukuoka Airport','후쿠오카 공항','Japan','일본','아시아태평양','Fukuoka','후쿠오카','Fukuoka','후쿠오카');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (75,'Tokyo International Airport (Haneda Airport)','동경국제공항 (하네다 공항)','Japan','일본','아시아,태평양',null,null,'Tokyo','도쿄');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (76,'Itami Airport','이타미 공항','Japan','일본','아시아태평양',null,null,'Osaka','오사카');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (77,'Kansai International Airport','간사이 국제공항','Japan','일본','아시아태평양',null,null,'Osaka','오사카');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (78,'Narita Airport','나리타 공항','Japan','일본','아시아태평양',null,null,'Tokyo','도쿄');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (79,'Almaty Airport','알마티 공항','Kazakhstan','카자흐스탄','아시아태평양',null,null,'Almaty','알마티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (80,'Astana International Airport','아스타나 국제공항','Kazakhstan','카자흐스탄','아시아태평양',null,null,'Astana','아스타나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (81,'Manas International Airport','만사스 국제공항','Kyrgyzstan','키르기스스탄','아시아태평양',null,null,'Bishkek','비슈케크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (82,'Wattay International Airport','와타이 공항','Laos','라오스','아시아태평양',null,null,'Vientiane (Viangchan)','비엔티안');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (83,'Macao International Airport','마카오 국제공항','Macao','마카오','아시아태평양',null,null,'Macao','마카오');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (84,'Bintulu Airport','빈툴루 공항','Malaysia','말레이시아','아시아태평양',null,null,'Bintulu','빈툴루');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (85,'Kota Kinabalu International Airport','코타키나발루 국제공항','Malaysia','말레이시아','아시아태평양','Sabah','사바','Kota Kinabalu','코타키나발루');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (86,'Kuala Lumpur International Airport','콸라룸푸르 국제공항','Malaysia','말레이시아','아시아태평양',null,null,'Kuala Lumpur','콜라룸푸르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (87,'Kuching International Airport','쿠칭 국제공항','Malaysia','말레이시아','아시아태평양',null,null,'Kuching','쿠칭');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (88,'Langkawi Airport','랑카위 공항','Malaysia','말레이시아','아시아태평양',null,null,'Langkawi','랑카위');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (89,'Penang International Airport','페낭 국제공항','Malaysia','말레이시아','아시아태평양',null,null,'Penang','페낭');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (90,'Sultan Ismail International Airport','술탄 이스마일 국제공항','Malaysia','말레이시아','아시아태평양',null,null,'Johor Bahru','조호바루');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (91,'Male International Airport','메일 국제공항','Maldives','몰디브','아시아태평양',null,null,'Male','메일');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (92,'Gan International Airport (Seenu Airport)','시이뉴 공항','Maldives','몰디브','아시아태평양',null,null,'Gan Island / Seenu Atoll','간섬');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (93,'Amata Kabua International Airport','아마타 카부아 국제공항','Marshall Islands','마샬 군도','아시아태평양',null,null,'Majuro','마주로');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (94,'Chinggis Khaan International Airport','칭지스 칸 국제공항','Mongolia','몽골리아','아시아태평양',null,null,'Ulaanbaatar','울란바토르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (95,'Mingaladon Airport','밍갈라돈 공항','Myanmar','미얀마','아시아태평양',null,null,'Yangon','양곤');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (96,'Tribhuvan Airport','트리부후반 공항','Nepal','네팔','아시아태평양',null,null,'Kathmandu','카트만두');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (97,'La Tontouta International Airport','라 톤투타 국제공항','New Caledonia','뉴칼레도니아','아시아태평양',null,null,'Noumea','누메아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (98,'Auckland International Airport','오클랜드 국제공항','New Zealand','뉴질랜드','아시아태평양',null,null,'Auckland','오클랜드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (99,'Christchurch International Airport','크라이스트처치 국제공항','New Zealand','뉴질랜드','아시아태평양',null,null,'Christchurch','크라이스트처치');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (100,'Dunedin International Airport','두네딘 국제공항','New Zealand','뉴질랜드','아시아태평양','Dunedin','더니든','Mosgiel','모스겔');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (101,'Hawkes Bay Airport','호크스 베이 공항','New Zealand','뉴질랜드','아시아태평양',null,null,'Napier-Hastings','네이피어/헤이스팅스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (102,'Wellington International Airport','웰링턴 국제공항','New Zealand','뉴질랜드','아시아태평양',null,null,'Wellington','웰링턴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (103,'Saipan International Airport','사이판 섬 국제공항','Nothern Mariana Islands','북마리아나 제도','아시아태평양',null,null,'Saipan','사이판 섬');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (104,'Yasser Arafat International Airport (formely Gaza International, Dahaniya)','야세르 아라파트 국제공항 (구>가자 국제공항, 다하니야)','Palestine','팔레스타인','중동,아프리카',null,null,'Gaza City','가자시티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (105,'Jackson Field Airport','잭슨 필드 공항','Papua New Guinea','파푸아뉴기니','아시아태평양',null,null,'Port Moresby','포트모르즈비');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (106,'Baiyun Airport','바이윤 공항','China','중국','아시아태평양',null,null,'Guangzhou','광저우');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (107,'Beijing Capital Airport','베이징 캐피탈 공항','China','중국','아시아태평양',null,null,'Beijing','베이징');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (108,'Chengdu Shuangliu International Airport','청두  슈앙리우 국제공항','China','중국','아시아태평양','Sichuan','쓰촨  ( 사천 )','Chengdu','청두');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (109,'Hongqiao Airport','홍챠오 공항','China','중국','아시아태평양',null,null,'Shanghai','상하이');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (110,'Pu Dong Airport','푸동 공항','China','중국','아시아태평양',null,null,'Shanghai','상하이');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (111,'Shenzhen Bao''an International Airport','쉔젠 바오안 국제공항','China','중국','아시아태평양','Guangdong','광둥  ( 광동 )','Shenzhen','선전');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (112,'Clark Field Airport','클라 필드 공항','Philippines','필리핀','아시아태평양',null,null,'Luzon Island','루손섬');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (114,'Mati Airport','마티 공항','Philippines','필리핀','아시아태평양',null,null,'Davao','다바오');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (115,'Ninoy Aquino International Airport','니노이 아퀴노 국제공항','Philippines','필리핀','아시아태평양',null,null,'Manila','마닐라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (116,'Fagali''i Airport','파갈리이 공항','Samoa','사모아','아시아태평양',null,null,'Apia','아피아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (117,'Faleolo International Airport','팔레오로 공항','Samoa','사모아','아시아태평양',null,null,'Apia','아피아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (118,'Pago Pago International Airport ( Faleolo International )','파고파고 국제공항  ( 파레올로 국제공항 )','American Samoa','아메리칸 사모아','아시아태평양',null,null,'Pago Pago','파고파고');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (119,'Changi Airport','창이 공항','Singapore','싱가포르','아시아,태평양',null,null,'Singapore','싱가포르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (120,'Seletar Airport','셀레타 공항','Singapore','싱가포르','아시아태평양',null,null,'Singapore','싱가포르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (121,'Henderson International Airport','헨더슨 국제공항','Solomon Islands','솔로몬 제도','아시아태평양',null,null,'Honiara','호니아라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (122,'Bandaranaike International Airport','밴다라나이크 국제공항','Sri Lanka','스리랑카','아시아태평양',null,null,'Colombo','콜롬보');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (123,'Kaohsiung International Airport','카오징 국제공항','Taiwan','대만','아시아태평양',null,null,'Kaohsiung','카오징');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (124,'Taiwan Taoyuan International Airport  ( formerly Chiang Kai-Shek International )','타이완 타오유완 국제공항  (구>장개석 국제공항)','Taiwan','대만','아시아,태평양',null,null,'Taipei','타이베이');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (125,'Dushanbe Airport','두샨베 공항','Tajikistan','타지키스탄','아시아태평양',null,null,'Dushanbe','두샨베');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (126,'Chiang Mai International Airport','치앙마이 국제공항','Thailand','태국','아시아,태평양',null,null,'Chiang Mai','치앙마이');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (127,'Chiang Rai International Airport','치앙라이 국제공항','Thailand','태국','아시아,태평양',null,null,'Chiang Rai','치앙라이');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (128,'Hat Yai International Airport','햇야이 국제공항','Thailand','태국','아시아,태평양',null,null,'Hat Yai / Songkhla','햇야이 /송칼라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (129,'Phuket International Airport','푸케트 섬 국제공항','Thailand','태국','아시아,태평양',null,null,'Phuket','푸케트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (130,'Suvarnabhumi International Airport (New  Bangkok International)','수완나푸미 국제공항 (신방콕국제공항)','Thailand','태국','아시아,태평양',null,null,'Bangkok','방콕');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (131,'Fua''amotu International Airport','후아모투 국제공항','Tonga','통가','아시아태평양',null,null,'Nuku''Alofa','누쿠알로파');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (132,'Ashgabat Airport (Ashkhabad Airport)','아쉬카밧 공항','Turkmenistan','투르크메니스탄','아시아태평양',null,null,'Ashgabat ( Ashkhabad )','아쉬카밧');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (133,'Sand Island Airport','샌드 아일랜드 공항','US Minor Outlying Islands','마이너아우틀링군도','아시아태평양',null,null,'Midway Island','미드웨이 제도');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (134,'Yuzhny Airport','유즈니 공항','Uzbekistan','우즈베키스탄','아시아,태평양',null,null,'Tashkent','타슈켄트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (135,'Bauerfield Airport','보어필드 공항','Vanuatu','바누아투','아시아태평양',null,null,'Port Vila','포트빌라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (164,'Split Airport','스플리트 공항','Croatia','크로아티아','유럽',null,null,'Split','스플리트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (165,'Larnaca International Airport','라르나카 /라나카 국제공항','Cyprus','키프러스','유럽','Cyprus','사이프러스','Larnaca','라르나카 (라나카)');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (166,'Paphos International Airport','파포스 국제공항','Cyprus','키프러스','유럽',null,null,'Paphos','파포스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (167,'Karlovy Vary International Airport','카를로비바리 국제공항','Czech Republic','체코','유럽',null,null,'Karlovy Vary','카를로비바리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (168,'Ostrava Leos Janacek Airport (formerly Mosnov)','오스트라바 레오 자냐체크 공항 (구>모스노프)','Czech Republic','체코','유럽',null,null,'Ostrava','오스트라바');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (169,'Ruzyne Airport','루이즈네 공항','Czech Republic','체코','유럽',null,null,'Prague','프라그');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (170,'Turany Airport','튀라니 공항','Czech Republic','체코','유럽',null,null,'Brno','브르노');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (171,'Beldringe Airport','벨드링제 공항','Denmark','덴마크','유럽',null,null,'Odense','오덴세');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (172,'Billund Airport','빌룬드 공항','Denmark','덴마크','유럽',null,null,'Billund','빌룬드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (173,'Copenhagen Airport( Kastup )','코펜하겐 지역공항  ( 캐스럽 )','Denmark','덴마크','유럽',null,null,'Copenhagen','코펜하겐');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (174,'Esbjerg Airport','에스비에르 공항','Denmark','덴마크','유럽',null,null,'Esbjerg','에스비에르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (175,'Tirstrup Airport','터스럽 공항','Denmark','덴마크','유럽',null,null,'Aarhus','오르후스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (176,'Lennart Meri Tallinn Airport (Ulemiste Airport)','레나르 메리 탈린 공항  (윌레미스테 공항)','Estonia','에스토니아','유럽',null,null,'Tallinn','탈린');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (177,'Vagar Airport','바가 공항','Faroe Islands','페로 제도','유럽',null,null,'Faroe Islands','페로 제도');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (178,'Helsinki-Vantaa Airport','헬싱키 반타 공항','Finland','핀란드','유럽',null,null,'Helsinki','헬싱키');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (179,'Ivalo Airport','이바로 공항','Finland','핀란드','유럽',null,null,'Ivalo / Inari','이바로 /아나리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (180,'Joensuu Airport','조엔수 공항','Finland','핀란드','유럽',null,null,'Joensuu / Liperi','조엔수 /리페리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (181,'Jyvaskyla Airport','지바스키라 공항','Finland','핀란드','유럽',null,null,'Jyvaskylan maalaiskunta','지바스키라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (182,'Kajaani Airport','카야니 공항','Finland','핀란드','유럽',null,null,'Kajaani','카야니');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (183,'Kemi-Tornio Airport','케미 토니오 공항','Finland','핀란드','유럽',null,null,'Kemi / Tornio','헬싱키');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (184,'Kittila Airport','키틸라 공항','Finland','핀란드','유럽',null,null,'Kittila','키틸라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (185,'Kruunupyy Airport','쿠루누피 공항','Finland','핀란드','유럽',null,null,'Kokkola/Pietarsaari','코꼴라 / 피에타르사리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (186,'Kuopio Airport','쿠오피오 공항','Finland','핀란드','유럽',null,null,'Kuopio / Siilinjarvi','쿠오피오');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (187,'Lappeenranta Airport','라핀란타 공항','Finland','핀란드','유럽',null,null,'Lappeenranta','라핀란타');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (188,'Mariehamn Airport','메리함 공항','Finland','핀란드','유럽',null,null,'Mariehamn','메리함');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (189,'Oulu Airport','오울루 공항','Finland','핀란드','유럽',null,null,'Oulu','오울루');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (190,'Pori Airport','포리 공항','Finland','핀란드','유럽',null,null,'Pori','포리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (191,'Rovaniemi Airport','로바니미 공항','Finland','핀란드','유럽',null,null,'Rovaniemi','로바니미');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (192,'Savonlinna Airport','사본리나 공항','Finland','핀란드','유럽',null,null,'Savonlinna','사본리나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (193,'Tampere-Pirkkala Airport','탐페레 피칼라 공항','Finland','핀란드','유럽',null,null,'Tampere / Pirkkala','탐페레');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (194,'Turku Airport','투르쿠 공항','Finland','핀란드','유럽',null,null,'Turku','투르쿠');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (195,'Vaasa Airport','바사 공항','Finland','핀란드','유럽',null,null,'Vaasa','바사');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (196,'Annecy-Meythe Airport','안시 메이스 공항','France','프랑스','유럽',null,null,'Annecy','안시');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (197,'Antoine de Saint-Exupery Airport','안트완 데 생떽쥐베리 공항','France','프랑스','유럽',null,null,'Lyon','리옹');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (198,'Arnage Airport','아르나쥐 공항','France','프랑스','유럽',null,null,'Le Mans','르망');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (199,'Atlantique Airport','아틀란티끄 공항','France','프랑스','유럽',null,null,'Nantes','낭트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (200,'Avignon-Caum Airport','아비뇽 코움 공항','France','프랑스','유럽',null,null,'Avignon','아비뇽');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (201,'Beauvais Airport (Tille)','보배 공항 (틸르)','France','프랑스','유럽',null,null,'Paris','파리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (202,'Beziers-Vias Airport','베이지에르 비어스 공항','France','프랑스','유럽',null,null,'Beziers','베이지에르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (203,'Biarritz-Parme Airport (Biarritz-Bayonne-Anglt )','비아리츠 팜 공항 (바이리츠, 배욘 앙글트)','France','프랑스','유럽',null,null,'Biarritz','비아리츠');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (204,'Bordeaux - Merignac Airport','보르도 메리낙 공항','France','프랑스','유럽',null,null,'Bordeaux','보르도');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (205,'Saint Etienne - Boutheon Airport','상악타엔 부데온 공항','France','프랑스','유럽',null,null,'Saint Etienne','세인트 에티엔');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (206,'Ajaccio Napoleon bonarparte Airport (formerly )(Ajaccio Campo dell''Oro Airport )','아작시오 나폴레옹 보나파르트 공항 (구> 아작시오 캄포 델 오로 공항)','France','프랑스','유럽',null,null,'Ajaccio','아작시오');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (207,'Chambery Aix-les-Bains Airport','샹베리 액스레뱅 공항','France','프랑스','유럽','Aix-les-Bains','액스레벵','Chambery','샹베리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (208,'Charles De Gaulle Airport','샤를 드 골 공항','France','프랑스','유럽',null,null,'Paris','파리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (209,'Clermont-Ferrand Auvergne Airport (Aulnat )','클레몽 페랑 오베뉴 공항 ( 아울낫 )','France','프랑스','유럽',null,null,'Clermont-Ferrand','클레몽 페랑');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (210,'Colmar-Houssen Airport','콜마르 후센 공항','France','프랑스','유럽',null,null,'Colmar','콜마르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (211,'Cote d'' Azur Airport','코트 다쥐르 공항','France','프랑스','유럽',null,null,'Nice','니스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (212,'Entzheim Airport (Strasbourg International)','앙쯔하임 공항 (스트라스부르 국제공항)','France','프랑스','유럽',null,null,'Strasbourg','스트라스부르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (214,'Guipavas Airport','구이파바스 공항','France','프랑스','유럽',null,null,'Brest','브레스트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (215,'Lann Bihoue Airport','란 비호웨 공항','France','프랑스','유럽',null,null,'Lorient','로리앙');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (216,'Le Sequestre Airport','레 세퀘스트 공항','France','프랑스','유럽',null,null,'Albi','알비');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (217,'Lesquin Airport','레스킨 공항','France','프랑스','유럽',null,null,'Lille','릴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (218,'Limoges - Bellegarde Airport','리모주 벨가르드 공항','France','프랑스','유럽',null,null,'Limoges','리모주');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (219,'Mandelieu Airport','만델리 공항','France','프랑스','유럽',null,null,'Cannes','칸');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (220,'Maupertus Airport','모페르투스 공항','France','프랑스','유럽',null,null,'Cherbourg','셰르부르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (221,'Mediterranee Airport','메디테라니 공항','France','프랑스','유럽',null,null,'Montpellier','몽펠리에');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (222,'Metz Nancy Lorraine Airport','메스 낭시 로레인 공항','France','프랑스','유럽',null,null,'Metz','메스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (223,'Mirecourt Airport','미레쿠 공항','France','프랑스','유럽',null,null,'Epinal','에피날');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (224,'Nimes-Arles-Camargue-Cevennes Airport (Nimes Garons Airport) (Nimes Airport)','님 아를 카마규 공항','France','프랑스','유럽',null,null,'Nimes','님');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (225,'Octeville Airport','옥테빌르 공항','France','프랑스','유럽',null,null,'Le Havre','르아브르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (226,'Orly Airport','오를리 공항','France','프랑스','유럽',null,null,'Paris','파리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (227,'Pleurtuit Airport','플뢰르튀트 공항','France','프랑스','유럽',null,null,'Dinard','디나르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (228,'Poretta Airport','포레타 공항','France','프랑스','유럽',null,null,'Bastia','바스티아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (229,'Provence Airport','프로방스 공항','France','프랑스','유럽',null,null,'Marseille','마르세유');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (230,'Pyrenees Airport','퓌레네 공항','France','프랑스','유럽',null,null,'Pau','포');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (231,'Quimper Pluguffan Airport','큄퍼 플러구팽 공항','France','프랑스','유럽',null,null,'Quimper','큄퍼');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (232,'Reims Champagne Airport','랭스 샴페인 공항','France','프랑스','유럽',null,null,'Reims','랭스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (233,'Rivesaltes Airport','리베살테 공항','France','프랑스','유럽',null,null,'Perpignan','페르피냥');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (234,'Roumanires Airport','루마네레 공항','France','프랑스','유럽',null,null,'Bergerac','벨주락');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (235,'Saint-Geoirs Airport (Saint Geoirs Airport)','생 쥐아즈 공항','France','프랑스','유럽',null,null,'Grenoble','그르노블');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (236,'Sainte Catherine Airport','생테 캐트린 공항','France','프랑스','유럽',null,null,'Calvi','칼비');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (237,'Salvaza Airport','살바자 공항','France','프랑스','유럽',null,null,'Carcassonne','카르카손');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (238,'St Nazaire Montoir Airport','생나제르 몽트와 공항','France','프랑스','유럽',null,null,'St Nazaire','생나제르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (239,'Tarbes-Ossun-Lourdes  Airport (Tarbes-Lourdes-Pyrenees Airport)','타르부 우순 루르드 국제공항','France','프랑스','유럽',null,null,'Lourdes/Tarbes','루르드/타르브');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (240,'Toulon Hyeres Airport (Hyeres Le Palyvestre Airport)','툴롱 예르 공항 (예르 팔리베스트르 공항)','France','프랑스','유럽',null,null,'Toulon','툴롱');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (241,'Toulouse - Blagnac Airport','툴루즈 블라냑 공항','France','프랑스','유럽',null,null,'Toulouse','툴루즈');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (242,'Augsburg-Muehlhausen Airport','아우스버그 무엘하우젠 공항','Germany','독일','유럽',null,null,'Munich','뮌헨');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (243,'Blankensee Airport (Lubeck Airport','블랑켄지이 공항 / 뤼벡 공항','Germany','독일','유럽',null,null,'Hamburg / Lubeck','함부르크 / 뤼벡');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (244,'Bremen Airport','브레멘 공항','Germany','독일','유럽',null,null,'Bremen','브레멘');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (245,'Cologne Bonn Airport','쾰른 본 공항','Germany','독일','유럽',null,null,'Cologne','쾰른');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (246,'Dresden Klotzsche Airport','드레스덴 클로츠 공항','Germany','독일','유럽',null,null,'Dresden','드레스덴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (247,'Echterdingen Airport','에흐테르뎅겐 공항','Germany','독일','유럽',null,null,'Stuttgart','슈투트가르트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (248,'Egelsbach Airport','에겔스바흐	공항','Germany','독일','유럽',null,null,'Egelsbach','에겔스바흐');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (249,'Erfurt Airport','에르푸르트 공항','Germany','독일','유럽',null,null,'Erfurt','에르푸르트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (250,'Frankfurt International Airport ( Rhein Main )','프랑크푸르트 국제공항  ( 라인 마인 )','Germany','독일','유럽',null,null,'Frankfurt','프랑크푸르트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (251,'Friedrichshafen Airport (Bodensee Airport)','프리드리히스하펜 공항 (보덴제 공항)','Germany','독일','유럽',null,null,'Friedrichshafen  / Bodensee','프리드리히스하펜 / 보덴제');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (252,'Fuhlsbuettel Airport','풀쉬비텔 공항','Germany','독일','유럽',null,null,'Hamburg','함부르크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (253,'Hahn Airport','한 공항','Germany','독일','유럽',null,null,'Frankfurt','프랑크푸르트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (254,'Hanover / Langenhagen International Airport','하노버 랭젠히겐 국제공항','Germany','독일','유럽',null,null,'Hanover','하노버');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (255,'Laage Airport','라아게 공항','Germany','독일','유럽',null,null,'Rostock-Laage','로스토크라아게');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (256,'Leipzig/Halle Airport ( Schkeuditz )','라이프치히/할레 지역공항  ( 슈케우디츠 )','Germany','독일','유럽',null,null,'Leipzig / Halle','라이프치히 / 할레');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (257,'Monchengladbach Airport','묀헨그라드바 공항','Germany','독일','유럽',null,null,'Dusseldorf','뒤셀도르프');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (258,'Munich International Airport','뮌헨 국제공항','Germany','독일','유럽',null,null,'Munich','뮌헨');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (259,'Munster Osnabruck International Airport','먼스토 오스나브룩 국제공항','Germany','독일','유럽',null,null,'Greven','그라픈');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (260,'Nuremberg Airport','뉘른베르크 공항','Germany','독일','유럽',null,null,'Nuremberg','뉘른베르크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (659,'Hanscom Field ( Laurence G. Hanscom )','로렌스 G. 핸스콤 필드 공항','United States','미국','북미캐나다','Massachusetts','매사추세츠','Bedford / Hanscom','Bedford / Hanscom');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (660,'Harrisburg International Airport','해리스버그 국제공항','United States','미국','북미캐나다','Pennsylvania','펜실베이니아','Middletown','미들타운');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (661,'Harrison/Marion Regional Airport','해리슨 매리온 지역공항','United States','미국','북미캐나다','West Virginia','웨스트버지니아','Clarksburg','클라크스버그');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (662,'Hartsfield-Jackson Atlanta International Airport','하츠필드 잭슨 애틀랜타 국제공항','United States','미국','북미캐나다','Georgia','조지아','Atlanta','애틀랜타');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (663,'Hector International Airport','헥터 국제공항','United States','미국','북미캐나다','North Dakota','노스다코타','Fargo','파고');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (664,'Herndon Airport','헌던 공항','United States','미국','북미캐나다','Florida','플로리다','Orlando','올랜도');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (665,'Hilo International Airport','힐로 국제공항','United States','미국','북미캐나다','Hawaii','하와이','Hilo','힐로');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (666,'Hobby Airport','하비 공항','United States','미국','북미캐나다','Texas','텍사스','Houston','휴스턴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (667,'Honolulu International Airport','호놀룰루 국제공항','United States','미국','북미캐나다','Hawaii','하와이','Honolulu','호놀룰루');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (668,'Houghton County Airport','휴턴 카운티 미모리얼 공항','United States','미국','북미캐나다','Michigan','미시간','Hancock','핸콕');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (669,'Hulman Field Airport','훌먼 필드 공항','United States','미국','북미캐나다','Indiana','인디애나','Terre Haute','테러호트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (670,'Huntsville International Airport','헌츠빌 국제공항','United States','미국','북미캐나다','Alabama','앨라배마','Huntsville','헌츠빌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (671,'Huron Regional Airport','휴런 지역공항','United States','미국','북미캐나다','South Dakota','사우스다코타','Huron','휴런');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (672,'Igor I. Sikorsky Airport','이뇨 I. 시콜스키 미모리얼 공항','United States','미국','북미캐나다','Connecticut','코네티컷','Bridgeport','브리지포트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (673,'Indianapolis International Airport','인디애나폴리스 국제공항','United States','미국','북미캐나다','Indiana','인디애나','Indianapolis','인디애나폴리스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (674,'Jackson Hole Airport','잭슨 홀 공항','United States','미국','북미캐나다','Wyoming','와이오밍','Jackson Hole','잭슨 홀');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (675,'Jackson-Evers International Airport','잭슨 에버스 국제공항','United States','미국','북미캐나다','Mississippi','미시시피','Jackson','잭슨');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (676,'Jacksonville International Airport','잭슨빌 국제공항','United States','미국','북미캐나다','Florida','플로리다','Jacksonville','잭슨빌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (677,'James M. Cox International Airport','제임스 M. 콕스 국제공항','United States','미국','북미캐나다','Ohio','오하이오','Dayton','데이턴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (678,'John F Kennedy International Airport','존 F. 케네디 국제공항','United States','미국','북미캐나다','New York','뉴욕','New York','뉴욕');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (679,'John Wayne-Orange County Airport','존 웨인 오렌지 카운티 공항','United States','미국','북미캐나다','California','캘리포니아','Santa Ana','산티아나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (680,'Juneau International Airport','주노 국제공항','United States','미국','북미캐나다','Alaska','알래스카','Juneau','쥬노');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (681,'Kahului Airport','카후루이 공항','United States','미국','북미캐나다','Hawaii','하와이','Kahului','카후루이');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (682,'Kalamazoo-Battle Creek International Airport','캘러머주 배틀크릭 국제공항','United States','미국','북미캐나다','Michigan','미시간','Kalamazoo','캘러머주');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (683,'Kansas City Downtown Airport','캔자스시티 다운타운 공항','United States','미국','북미캐나다','Missouri','미주리','Kansas City','캔자스시티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (684,'Kansas City International Airport','캔자스시티 국제공항','United States','미국','북미캐나다','Missouri','미주리','Kansas City','캔자스시티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (685,'Ketchikan International Airport','케치칸 국제공항','United States','미국','북미캐나다','Alaska','알래스카','Ketchikan','케치칸');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (686,'Key West International Airport','키웨스트 국제공항','United States','미국','북미캐나다','Florida','플로리다','Key West','키웨스트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (687,'Killeen Municipal Airport (Skylark Field)','카일린 시공항 (스카이락 필드)','United States','미국','북미캐나다','Texas','텍사스','Killeen','카일린');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (688,'Kissimmee Municipal Airport','키시미 시공항','United States','미국','북미캐나다','Florida','플로리다','Kissimmee','키시미');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (689,'Kona International Airport ( Ke-Ahole )','코나 국제공항  ( 케 아훌 )','United States','미국','북미캐나다','Hawaii','하와이','Kona','코나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (690,'La Crosse Municipal Airport','라크로스 시공항','United States','미국','북미캐나다','Wisconsin','위스콘신','La Crosse','라크로스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (691,'La Guardia International Airport','라구아디아 국제공항','United States','미국','북미캐나다','New York','뉴욕','New York','뉴욕');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (692,'Laconia International Airport','래코니아 국제공항','United States','미국','북미캐나다','New Hampshire','뉴햄프셔','Laconia','라코니아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (693,'Lafayette Regional Airport','라피엣 공항','United States','미국','북미캐나다','Louisiana','루이지애나','Lafayette','라피엣');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (694,'Lahm Municipal Airport','람 시공항','United States','미국','북미캐나다','Ohio','오하이오','Mansfield','맨스필드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (695,'Lakefront Airport','레이크프론트 공항','United States','미국','북미캐나다','Louisiana','루이지애나','New Orleans','뉴올리언스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (696,'Lakeland Municipal Airport','레이크랜드 시공항','United States','미국','북미캐나다','Florida','플로리다','Lakeland','레이크랜드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (697,'Lambert Saint Louis International Airport','램버트 세인트루이스 국제공항','United States','미국','북미캐나다','Missouri','미주리','St. Louis','세인트루이스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (698,'Lansing Capital City Airport','랜싱 캐피탈시티 공항','United States','미국','북미캐나다','Michigan','미시간','Lansing','랜싱');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (699,'Laredo International Airport','러레이도 국제공항','United States','미국','북미캐나다','Texas','텍사스','Laredo','러레이도');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (700,'Las Cruces International Airport','라스 쿠르스 국제공항','United States','미국','북미캐나다','New Mexico','뉴멕시코','Las Cruces','라스 쿠르스 (라스크루사스)');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (701,'Lebanon Regional Airport','레바논 공항','United States','미국','북미캐나다','New Hampshire','뉴햄프셔','Lebanon','레바논');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (739,'Moore County Airport','무어 카운티 공항','United States','미국','북미캐나다','North Carolina','노스캐롤라이나','Pinehurst / Southern Pines','파인허스트 / 써던 파인즈');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (740,'Mount Vernon Airport','마운트버넌 공항','United States','미국','북미캐나다','Illinois','일리노이','Mount Vernon','마운트버넌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (741,'Myrtle Beach International Airport','머틀 비치 국제공항','United States','미국','북미캐나다','South Carolina','사우스캐롤라이나','Myrtle','머틀');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (742,'Nantucket Memorial Airport','낸터켓 미모리얼 공항','United States','미국','북미캐나다','Massachusetts','매사추세츠','Nantucket','낸터켓');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (743,'Nashville International Airport','내슈빌 국제공항','United States','미국','북미캐나다','Tennessee','테네시','Nashville','내슈빌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (744,'Nenana Municipal Airport','네나나 시공항','United States','미국','북미캐나다','Alaska','알래스카','Nenana','네나나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (745,'Newark Liberty International Airport','뉴왁 리버티 국제공항','United States','미국','북미캐나다','New York','뉴욕','Newark & Elizabeth','뉴왁 / 엘리자베스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (746,'Niagara Falls International Airport','나이아가라폴스 국제공항','United States','미국','북미캐나다','New York','뉴욕','Niagara Falls','나이아가라폴스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (747,'Norfolk International Airport','노퍽 국제공항','United States','미국','북미캐나다','Virginia','버지니아','Norfolk','노퍽');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (748,'Norman Y. Mineta San Jose International Airport','노먼 Y. 미네타 산 호세 국제공항','United States','미국','북미캐나다','California','캘리포니아','San Jose','샌호세');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (749,'North Las Vegas Airport','노스 라스베이거스 공항','United States','미국','북미캐나다','Nevada','네바다','Las Vegas','라스베이거스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (750,'North Platte Regional Airport (Lee Bird Field )','노스플랫 지역공항  ( 리버드 필드 )','United States','미국','북미캐나다','Nebraska','네브래스카','North Platte','노스플랫');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (751,'Northwest Arkansas Regional Airport','노스웨스트 아르캔자스 공항','United States','미국','북미캐나다','Arkansas','아칸소','Fayetteville / Springdale','파에트빌 /스핑데일');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (752,'Oakland International Airport','오클랜드 국제공항','United States','미국','북미캐나다','California','캘리포니아','Oakland','오클랜드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (753,'O''Hare International Airport','오헤어 국제공항','United States','미국','북미캐나다','Illinois','일리노이','Chicago','시카고');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (754,'Ontario International Airport','온타리오 국제공항','United States','미국','북미캐나다','California','캘리포니아','Ontario','온타리오');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (755,'Orlando International Airport','올랜도 국제공항','United States','미국','북미캐나다','Florida','플로리다','Orlando','올랜도');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (756,'Outlaw Field Airport','아웃로우 필드 공항','United States','미국','북미캐나다','Tennessee','테네시','Clarksville','클라크스빌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (757,'Page Field Airport','페이지 필드 공항','United States','미국','북미캐나다','Florida','플로리다','Fort Myers','포트마이어스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (758,'Palm Beach County Airport','팜 비치 카운티 공항','United States','미국','북미캐나다','Florida','플로리다','West Palm Beach','웨스트팜비치');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (759,'Palm Springs International Airport','팜스프링스 국제공항','United States','미국','북미캐나다','California','캘리포니아','Palm Springs','팜스프링스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (760,'Pangborn Memorial Airport','팬번 미모리얼 공항','United States','미국','북미캐나다','Washington','워싱턴','Wenatchee','웨나치');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (761,'Pensacola Gulf Coast Regional Airport','펜서콜라 걸프 코스트 지역공항','United States','미국','북미캐나다','Florida','플로리다','Pensacola','펜서콜라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (762,'Philadelphia International Airport','필라델피아 국제공항','United States','미국','북미캐나다','Pennsylvania','펜실베이니아','Philadelphia','필라델피아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (763,'Phoenix Sky Harbor International Airport','피닉스 스카이하버 국제공항','United States','미국','북미캐나다','Arizona','애리조나','Phoenix','피닉스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (764,'Piedmont Triad International Airport','피드몬트 트라이얏 국제공항','United States','미국','북미캐나다','North Carolina','노스캐롤라이나','Greensboro','그린즈버러');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (765,'Pittsburgh International Airport','피츠버그 국제공항','United States','미국','북미캐나다','Pennsylvania','펜실베이니아','Pittsburgh','피츠버그');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (766,'Port Columbus International Airport','포트 콜럼버스 국제공항','United States','미국','북미캐나다','Ohio','오하이오','Columbus','콜럼버스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (767,'Portland International Airport','포틀랜드 국제공항','United States','미국','북미캐나다','Oregon','오리건','Portland','포틀랜드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (768,'Preston-Glenn Field Airport','프레스톤 글렌 필드 공항','United States','미국','북미캐나다','Virginia','버지니아','Lynchburg','린치버그');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (769,'Purdue University Airport','퍼두 유니버시티 공항','United States','미국','북미캐나다','Indiana','인디애나','West Lafayette','웨스 라파예트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (770,'Quad-Cities Airport','쾌드 시티즈 공항','United States','미국','북미캐나다','Illinois','일리노이','Moline','멀린');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (771,'Raleigh-Durham International Airport','롤리 더럼 국제공항','United States','미국','북미캐나다','North Carolina','노스캐롤라이나','Raleigh','롤리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (772,'Renner Goodland Municipal Airport','레너 굿랜드 시공항','United States','미국','북미캐나다','Kansas','캔자스','Goodland','굿랜드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (773,'Reno / Taho International Airport','리노 타호 국제공항','United States','미국','북미캐나다','Nevada','네바다','Reno','리노');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (774,'Republic Airport','리퍼블릭 공항','United States','미국','북미캐나다','New York','뉴욕','East Farmingdale','이스트 파밍데일');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (775,'Reynolds Municipal Airport','레이놀즈 시공항','United States','미국','북미캐나다','Michigan','미시간','Jackson','잭슨');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (776,'Richmond International Airport','리치먼드 국제공항','United States','미국','북미캐나다','Virginia','버지니아','Richmond','리치먼드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (777,'Rick Husband Amarillo International Airport','릭 허즈밴드 애머릴로 국제공항','United States','미국','북미','Texas','텍사스','Amarillo','애머릴로');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (778,'Rickenbacker Airport','리켄배커 공항','United States','미국','북미캐나다','Ohio','오하이오','Columbus','콜럼버스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (779,'Roanoke Regional Airport / Woodrum Field','로어노크 지역공항 (우드럼 필드 )','United States','미국','북미캐나다','Virginia','버지니아','Roanoke','로어노크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (780,'Rogue Valley International-Medford Airport','로그 밸리 국제공항 ( 메드퍼드 공항)','United States','미국','북미캐나다','Oregon','오리건','Medford','메드퍼드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (781,'Sacramento International Airport','새크라멘토 국제공항','United States','미국','북미캐나다','California','캘리포니아','Sacramento','새크라멘토');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (782,'Saginaw Tri-City Airport','새기노 트라이시티 공항','United States','미국','북미캐나다','Michigan','미시간','Saginaw','새기노');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (783,'Salt Lake City International Airport','솔트레이크 시티 국제공항','United States','미국','북미캐나다','Utah','유타','Salt Lake City','솔트레이크 시티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (784,'San Antonio International Airport','샌안토니오 국제공항','United States','미국','북미캐나다','Texas','텍사스','San Antonio','샌안토니오');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (785,'San Diego International Airport (Lindbergh Field)','샌디에이고 국제공항 (린드버그 필드)','United States','미국','북미캐나다','California','캘리포니아','San Diego','샌디에고');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (789,'Sanford International Airport','샌포드 국제공항','United States','미국','북미캐나다','Florida','플로리다','Orlando','올랜도');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (790,'Santa Barbara Municipal Airport','산타바바라 시공항','United States','미국','북미캐나다','California','캘리포니아','Santa Barbara','산타바바라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (791,'Santa Maria Public Airport (Capt. G. Allan Hancock Field)','산타마리아 퍼블릭 공항 (캡틴 알랜 핸콕 공항)','United States','미국','북미캐나다','California','캘리포니아','Santa Maria','산타마리아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (792,'Sarasota-Bradenton International Airport','새러소타 브레이든턴 국제공항','United States','미국','북미캐나다','Florida','플로리다','Sarasota','새러소타');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (793,'Savannah / Hilton Head Airport','서배너 힐튼 헤드 공항','United States','미국','북미캐나다','Georgia','조지아','Savannah','서배너');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (794,'Scholes International Airport','스콜스 국제공항','United States','미국','북미','Texas','텍사스','Galveston','갤버스턴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (795,'Searcy Field Airport','서시 필드 공항','United States','미국','북미캐나다','Oklahoma','오클라호마','Stillwater','스틸워터');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (317,'Fertilia Airport','퍼틸랴 공항','Italy','이탈리아','유럽',null,null,'Alghero','알게로');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (318,'Fiumicino Airport ( Leonardo Da Vinci International )','피우미치노 공항  ( 레오나르도 다빈치 )','Italy','이탈리아','유럽',null,null,'Rome','로마');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (319,'Fontanarossa Airport ( Lanza Di Trabie )','폰타가로싸 공항  ( 란자 디 트라비에 )','Italy','이탈리아','유럽',null,null,'Catania','카타니아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (320,'Trieste Friuli Venezia Giulia Airport (formely Trieste Ronchi dei Legionari Airport)','트리스테 푸뤼우리 베네지아 구일리아 (구> 트리스테 론치 데이 리제오나리 ) 공항','Italy','이탈리아','유럽',null,null,'Trieste','트리에스테');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (321,'Galileo Galilei Airport ( S. Giusto )','갈릴레오 갈릴레이 공항  ( S. 구이스토 )','Italy','이탈리아','유럽',null,null,'Pisa','피사');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (322,'Guglielmo Marconi Airport','구글리에모 마르코니 공항','Italy','이탈리아','유럽',null,null,'Bologna','볼로냐');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (323,'Levaldigi Airport','레발디지 공항','Italy','이탈리아','유럽',null,null,'Cuneo','쿠네오');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (324,'Linate Airport ( E Forlanini )','리나테 공항  ( E. 폴라리니 )','Italy','이탈리아','유럽',null,null,'Milan','밀란');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (325,'Malpensa Airport','말펜사 공항','Italy','이탈리아','유럽',null,null,'Milan','밀란');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (326,'Marco Polo International','마르코 폴로 국제공항','Italy','이탈리아','유럽',null,null,'Venice','베니스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (327,'Naples International Airport (Capodichino Airport)','나폴리 (카포디치노) 국제공항','Italy','이탈리아','유럽',null,null,'Naples','나폴리 /나포리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (328,'Orio Al Serio Airport','오리오 알 세리오 공항','Italy','이탈리아','유럽',null,null,'Milan','밀란');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (329,'Brindisi &#8211; Salento Airport (formerly Papola Casale Airport ) (Aeroporto del Salento)','브린디시 살렌토 (구>파폴라 카살레 공항)','Italy','이탈리아','유럽',null,null,'Brindisi','브린디시');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (330,'Peretola Airport ( Vespucci )','페레톨라 공항  ( 베스푸치 )','Italy','이탈리아','유럽',null,null,'Florence','플로렌스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (331,'Punta Raisi Airport ( Falcone-Borsellino Airport ) (Palermo Airport)','푼타 라이시 공항 (팔코네 보셀리노 공항) (팔레모 공항)','Italy','이탈리아','유럽',null,null,'Palermo','팔레르모');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (332,'Turin International Airport (Torino Caselle Airport)','투린 국제공항 (토리노 카셀 공항) 국제공항','Italy','이탈리아','유럽',null,null,'Turin ( Torino )','투린');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (333,'Villafranca Veronese Airport ( G Gaeta )','빌라프랑카 베로니스 공항  ( G. 가에타 )','Italy','이탈리아','유럽',null,null,'Verona','베로나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (334,'Riga International Airport','리가 국제공항','Latvia','라트비아','유럽',null,null,'Riga','리가');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (335,'Palanga International Airport','팔랑가 국제공항','Lithuania','리투아니아','유럽',null,null,'Palanga','팔랑가');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (336,'Vilnius International Airport','빌니우스 (빌니어스) 국제공항','Lithuania','리투아니아','유럽',null,null,'Vilnius','빌니우스 (빌니어스)');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (337,'Kaunas International Airport (Kauno tarptautinis Oro Uostas)','카우나스 국제공항','Lithuania','리투아니아','유럽',null,null,'Kaunas','카우나스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (338,'Luxembourg International Airport (Findel Airport)','뤽상부르 국제공항 (핀델 공항)','Luxembourg','뤽상부르','유럽',null,null,'Luxembourg','뤽상부르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (339,'St. Paul the Apostle Airport (formerly Ohrid Airport)','생 폴 더 아포스틀 공항 (구>오흐리드 공항)','Macedonia','마케도니아(FYROM)','유럽',null,null,'Ohrid','오흐리드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (340,'Alexand the Great Airport (Skopje Airport)','알렉산더 더 그레이트 공항 (스코페 공항)','Macedonia','마케도니아(FYROM)','유럽',null,null,'Skopje','스코페');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (341,'Malta International Airport (Luqa International Airport) (Valletta Airport )','말타국제공항 (루카 국제공항) (발레타 공항)','Malta','몰타','유럽',null,null,'Malta','몰타');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (342,'Chisinau International Airport','키시나우 국제공항','Moldova','몰도바','유럽',null,null,'Chisinau','키시나우');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (343,'Balti International Airport (Balti-Leadoveni International Airport)','발티국제공항 ( 발티 리도베니 국제공항)','Moldova','몰도바','유럽',null,null,'Balti','발티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (344,'Eelde Airport','엘데 공항','Netherlands','네덜란드','유럽',null,null,'Groningen','그로닝겐');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (345,'Eindhoven Airport','에인트호벤 공항','Netherlands','네덜란드','유럽',null,null,'Eindhoven','에인트호벤');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (346,'Maastricht Aachen Airport','마스트리히트 아흐츤 공항','Netherlands','네덜란드','유럽',null,null,'Maastricht','마스트리히트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (347,'Rotterdam Airport','로테르담 공항','Netherlands','네덜란드','유럽',null,null,'Rotterdam','로테르담');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (348,'Schiphol Airport','스키폴 공항','Netherlands','네덜란드','유럽',null,null,'Amsterdam','암스테르담');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (349,'Twente Airport','트웬테 공항','Netherlands','네덜란드','유럽',null,null,'Enschede','엔스헤데');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (350,'Alta Airport','알타 공항','Norway','노르웨이','유럽','Finnmark','핀마르크','Alta','알타');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (351,'Andoya Airport','안도야 공항','Norway','노르웨이','유럽','Nordland','노를란','Andenes','아데네스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (352,'Aaro Airport','아로 공항','Norway','노르웨이','유럽',null,null,'Molde','몰데');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (353,'Banak Airport','바낙 공항','Norway','노르웨이','유럽',null,null,'Lakselv','락셀브');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (354,'Bardufoss Airport','바두포스 공항','Norway','노르웨이','유럽','Troms','트롬스','Bardufoss','바두포스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (355,'Bodo Airport','보되 공항','Norway','노르웨이','유럽','Nordland','노를란','Bodo','보되');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (356,'Evenes Airport','에베네스 공항','Norway','노르웨이','유럽',null,null,'Harstad-Narvi','하르스타드/나르비');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (357,'Flesland Airport','플레스랜드 공항','Norway','노르웨이','유럽',null,null,'Bergen','베르겐');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (358,'Karmoy Airport (Haugesund Airport )','카모이 공항 (헤우게순 공항)','Norway','노르웨이','유럽','Rogaland','로갈란','Haugesund','헤우게순');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (359,'Hoeybuktmoen Airport','후에이벅트묀 공항','Norway','노르웨이','유럽',null,null,'Kirkenes','시르케네스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (360,'Kjevik Airport','키예빅 공항','Norway','노르웨이','유럽',null,null,'Kristiansand','크리스티안산');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (361,'Kvernberget Airport','크베르베르케트 공항','Norway','노르웨이','유럽',null,null,'Kristiansund','크리스티안순');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (362,'Oslo Airport ( Gardermoen )','오슬로 공항  ( 가더모엔 )','Norway','노르웨이','유럽',null,null,'Oslo','오슬로');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (363,'Sandefjord Airport ( Torp )','사네피오르 공항 (토르프 )','Norway','노르웨이','유럽','Vestfold','베스트폴','Sandefjord','사네피오르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (364,'Sola Airport','솔라 공항','Norway','노르웨이','유럽',null,null,'Stavanger','스타방에르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (365,'Svalbard Airport','스발바그드 공항','Norway','노르웨이','유럽',null,null,'Longyearbyen','롱이어빈');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (366,'Tromso Airport ( formerly Tromso-Langnes Airport )','트롬쇠 공항 ( 랑그네 )  (구> 트롬소- 랑그네 ) 공항','Norway','노르웨이','유럽','Troms','트롬스','Tromso','트롬쇠');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (367,'Trondheim Airport (Vaernes Airport)','트론드하임 공항 ( 배르네스 )','Norway','노르웨이','유럽','Nord','노르','Stjordal','스티에르달');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (368,'Vigra Airport','바이그라 공항','Norway','노르웨이','유럽',null,null,'Aalesund','올레순');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (369,'J. Paul II Balice International Airport','J. 폴 투  밸리스 국제공항','Poland','폴란드','유럽',null,null,'Krakow','크라쿠프');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (370,'Lawica Airport','라위카 공항','Poland','폴란드','유럽',null,null,'Poznan','포즈난');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (371,'Pyrzowice Airport','피르조위체 공항','Poland','폴란드','유럽',null,null,'Katowice','카토비체');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (372,'Lech Watesa  Airport (formerly Rebiechowo Airport)','레히 바웨사 공항 (구>레비에쵸요 공항)','Poland','폴란드','유럽',null,null,'Gdansk','그단스크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (373,'Nicolaus Copernicus Airport (formerly Strachowice Airport )','니콜라우스 코페르니쿠스 공항 (구>스타라쵸위체 공항 )','Poland','폴란드','유럽',null,null,'Wroclaw','브로츠와프');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (374,'Warsaw  Frederic Chopin Airport (Warsaw International) (구>Qkecie)','바르샤바 프레데릭 쇼팽 공항 (바르샤바 국제공항)','Poland','폴란드','유럽',null,null,'Warsaw','월쏘');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (375,'Faro Airport','파루 공항','Portugal','포르투갈','유럽',null,null,'Faro','파로');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (376,'Francisco Sa Carneiro Airport (Aeroporto de Pedras Rubras)','프란치스코 사 카르네이로 공항 (페드라스 루브라스 공항)','Portugal','포르투갈','유럽',null,null,'Porto','포르투');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (377,'Horta Airport','호르타 공항','Portugal','포르투갈','유럽','Faial Island','파이알 아일랜드','Horta','호르타');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (378,'Lisboa Airport','리즈보아 공항','Portugal','포르투갈','유럽',null,null,'Lisbon','리스본');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (380,'Nordela Airport ( Joao Paulo )','노르델라 공항  ( 후아보 파울로 )','Portugal','포르투갈','유럽',null,null,'Ponta Delgada','폰타델가다');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (381,'Porto Santo Airport','포토산토 공항','Portugal','포르투갈','유럽',null,null,'Porto Santo','포토산토');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (382,'Vila do Porto Airport','빌라 도 포르토 공항','Portugal','포르투갈','유럽',null,null,'Santa Maria','산타마리아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (383,'Arad International Airport','아라드 국제공항','Romania','루마니아','유럽',null,null,'Arad','아라드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (384,'Bucharest Aurel Vlaicu International Airport (Baneasa)','부쿠레슈티 아우렐 블래쿠 국제공항 (버네아싸)','Romania','루마니아','유럽',null,null,'Bucharest','부쿠레슈티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (385,'Bucharest Henri Coanda International Airport ( Otopeni International )','부쿠레슈티 헨리 코언다 국제공항  ( 오토페니 국제공항 )','Romania','루마니아','유럽',null,null,'Bucharest','부쿠레슈티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (386,'Constanta Mihail Kogalniceanu International Airport','콘스탄짜 미하일 코갈니쵸누 국제공항','Romania','루마니아','유럽',null,null,'Constanta','콘스탄짜');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (388,'Timisoara International Airport','티미쇼아라 트라이언 부이아 국제공항','Romania','루마니아','유럽',null,null,'Timisoara','티미쇼아라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (389,'Bolshoye Savino Airport','볼쇼이 사비노 공항','Russia','러시아','유럽',null,null,'Perm','페름');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (390,'Domodedovo International Airport','도모도데보 국제공항','Russia','러시아','유럽',null,null,'Moscow','모스크바');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (391,'Khrabrovo Airport','크라브로포 공힝','Russia','러시아','유럽',null,null,'Kaliningrad','칼리닌그라드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (392,'Koltsovo International Airport (former Ekaterinburg)','콜트소보 국제공항 (구> 에카테린버그)','Russia','러시아','유럽',null,null,'Yekaterinburg','에카테린버그');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (393,'Krasnoyarsk Yemelyanovo Airport','크로스노야르스크 공항','Russia','러시아','유럽',null,null,'Krasnoyarsk','크로스노야르스크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (394,'Kurumoch Airport','쿠루모치 공항','Russia','러시아','유럽',null,null,'Samara','사마라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (395,'Novosibirsk Tolmachevo Airport','노보시비르스크 공항 (톨마체보 공항)','Russia','러시아','유럽',null,null,'Novosibirsk','노보시비르스크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (396,'Novy Airport','노비 공항','Russia','러시아','유럽',null,null,'Khabarovsk','하바로프스크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (397,'Pulkovo Airport','플코보 공항','Russia','러시아','유럽',null,null,'St Petersburg','세인트피터즈버그');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (398,'Rostov-na-Donu Airport','로스토프나도누 공항','Russia','러시아','유럽',null,null,'Rostov-na-Donu','로스토프나도누');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (399,'Sheremetyevo International Airport','세레메티에포 국제공항','Russia','러시아','유럽',null,null,'Moscow','모스크바');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (400,'Tsentralny Airport','첸틀러니 공항','Russia','러시아','유럽',null,null,'Orenburg','오렌부르크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (401,'Tsentralny Airport','첸틀러니 공항','Russia','러시아','유럽',null,null,'Omsk','옴스크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (402,'Vladivostok International Airport','블라디보스토크 국제공항','Russia','러시아','유럽',null,null,'Vladivostok','블라디보스토크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (403,'Vnukovo Airport','부누코프 공항','Russia','러시아','유럽',null,null,'Moscow','모스크바');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (404,'Belgrade Nikola Tesla International Airport','벨그라드 국제공항','Serbia','세르비아','유럽','Serbia','세르비아','Belgrade','베오그라드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (405,'Podgorica Airport','포드고리카 공항','Montenegro','몬테네그로','유럽','Montenegro','몬테네그로','Podgorica','포드고리차');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (406,'Tivat Airport','티밧 공항','Montenegro','몬테네그로','유럽','Montenegro','몬테네그로','Tivat','티밧');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (407,'Barca Airport ( Kosice International )','바르카 공항  ( 코시체 국제공항 )','Slovakia','슬로바키아','유럽',null,null,'Kosice','코시체');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (408,'Ivanka Airport','이반카 공항','Slovakia','슬로바키아','유럽',null,null,'Bratislava','브라티슬라바');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (409,'Poprad-Tatry Airport','포프라드 타트라 공항','Slovakia','슬로바키아','유럽',null,null,'Tatry','타트라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (410,'Brnik Airport','브르니크 공항','Slovenia','슬로베니아','유럽',null,null,'Ljubljana','류블랴나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (411,'A Coruna Airport','아코루냐 공항','Spain','스페인','유럽',null,null,'La Coruna','라코루냐');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (412,'Alicante Airport (formerly El Altet Airport)','알리칸테 공항','Spain','스페인','유럽',null,null,'Alicante','알리칸테');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (413,'Almeria International Airport','알메리아 국제공항','Spain','스페인','유럽',null,null,'Almeria','알메리아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (414,'Arrecife Airport (Lanzarote Airport)','아리시페 공항','Spain','스페인','유럽',null,null,'Arrecife','아리시페');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (415,'Asturias Airport','아스투리아스 공항','Spain','스페인','유럽',null,null,'Asturias','아스투리아스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (416,'Madrid Barajas Airport','마드리드 바라쟈스 공항','Spain','스페인','유럽',null,null,'Madrid','마드리드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (417,'Barcelona International Airport','바르셀로나 국제공항','Spain','스페인','유럽',null,null,'Barcelona','바르셀로나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (418,'Bilbao Airport','빌바오 공항','Spain','스페인','유럽',null,null,'Bilbao','빌바오');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (419,'Gerona Costa Brava Airport','지로나 코스타 브라바 공항','Spain','스페인','유럽',null,null,'Gerona','헤로나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (420,'Fuerteventura Airport','푸에르트벤츄라 공항','Spain','스페인','유럽',null,null,'Fuerteventura','푸에르트벤츄라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (421,'Gran Canaria Airport ( Gando )','그랑 카나리아 공항  ( 간도 )','Spain','스페인','유럽',null,null,'Las Palmas','라스팔마스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (422,'Granada Airport','그라나다 공항','Spain','스페인','유럽',null,null,'Granada','그라나다');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (423,'Hierro Airport','히에로 공항','Spain','스페인','유럽',null,null,'Valverde','발베르데');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (424,'Ibiza Airport','이비사 공항','Spain','스페인','유럽',null,null,'Ibiza','이비사');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (425,'La Parra Airport','라 파라 공항','Spain','스페인','유럽',null,null,'Jerez De La Frontera','헤레스 데 라 프론테라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (426,'Malaga Airport (Pablo Ruiz Picasso Airport)','말라가 공항 (파블로 루이즈 피키소 공항)','Spain','스페인','유럽',null,null,'Malaga','말라가');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (427,'Menorca Airport','메노르카 공항','Spain','스페인','유럽','Balearic Islands','발레아레스 제도','Menorca','메노르카');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (428,'Tenerife North Airport (the formerly Norte Los Rodeos Airport)','노르테 로스 로데오스 공항','Spain','스페인','유럽',null,null,'Tenerife','테네리페');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (429,'Palma de Mallorca Airport (Son Sant Joan Airport)','팔마데마요르카 공항(손 상트 후안)','Spain','스페인','유럽',null,null,'Palma de Mallorca','팔마데마요르카');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (430,'Pamplona Airport','팜플로나 공항','Spain','스페인','유럽',null,null,'Pamplona','팜플로나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (431,'Reus Airport','레우스 공항','Spain','스페인','유럽',null,null,'Reus / Tarragona','레우스 /타라고나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (432,'San Javier Airport','산자비에 공항','Spain','스페인','유럽',null,null,'Murcia','무르시아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (433,'San Sebastian Airport','산세바스티안 공항','Spain','스페인','유럽',null,null,'San Sebastian','산세바스티안');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (434,'Santander Airport','산탄데 공항','Spain','스페인','유럽',null,null,'Santander / Cantabria','산탄더 / 칸타브리아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (435,'Santiago de Compostela Airport - Lavacolla ','산티아고 공항','Spain','스페인','유럽',null,null,'Santiago de Compostela','산티아고드콤포스텔라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (436,'Sevilla Airport (San Pablo Airport )','세빌리아 산 파블로 공항','Spain','스페인','유럽',null,null,'Sevilla','세비야');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (437,'Sur Reina Sofia Airport ( Tenerife South )','쉬흐 라이나 소피아 공항  ( 테레리프 사우스 )','Spain','스페인','유럽',null,null,'Tenerife','테네리프');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (439,'Valencia Airport','발렌시아 공항','Spain','스페인','유럽',null,null,'Valencia / Manises','발렌시아 /매니세스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (440,'Vigo-Peinador International Airport','비고 피내이더 국제공항','Spain','스페인','유럽',null,null,'Vigo','비고');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (441,'Vitoria Airport','비토리아 공항','Spain','스페인','유럽',null,null,'Vitoria','비토리아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (442,'Zaragoza Airport','사라고사 공항','Spain','스페인','유럽',null,null,'Zaragoza','사라고사');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (443,'Arlanda Airport','알란다 공항','Sweden','스웨덴','유럽',null,null,'Stockholm','스톡홀름');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (444,'Axamo Airport','악사모 공항','Sweden','스웨덴','유럽',null,null,'Jonkoping','욘코핑');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (445,'Bromma Airport','브로마 공항','Sweden','스웨덴','유럽',null,null,'Stockholm','스톡홀름');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (446,'Dala Airport','달라 공항','Sweden','스웨덴','유럽',null,null,'Borlange','볼렝에');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (447,'Kallax Airport','칼락스 공항','Sweden','스웨덴','유럽',null,null,'Lulea','룰리아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (448,'Kiruna Airport','키루나 공항','Sweden','스웨덴','유럽',null,null,'Kiruna','키루나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (449,'Kungsangen Airport','쿤상겐 공항','Sweden','스웨덴','유럽',null,null,'Norrkoping','노코핑');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (450,'Landvetter Airport (Gothenburg-Landvetter Airport) (Goteborg-Landvetter flygplats)','란베터 공항','Sweden','스웨덴','유럽',null,null,'Gothenburg','고센버그');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (451,'Saeve Airport','사에프 공항','Sweden','스웨덴','유럽',null,null,'Gothenburg','고센버그');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (452,'Skavsta Airport','스카프스타 공항','Sweden','스웨덴','유럽',null,null,'Stockholm','스톡홀름');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (453,'Sturup Airport','스투럽 공항','Sweden','스웨덴','유럽',null,null,'Malmo','말모');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (454,'Belp Airport (Bern-Belp Airport )','벨프 공항','Switzerland','스위스','유럽',null,null,'Berne','베른');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (455,'Geneva International Airport (formerly Geneva-Cointrin Airport )','제네바 국제공항 (구>제네바 코인트린 공항)','Switzerland','스위스','유럽',null,null,'Geneva','제네바');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (456,'Lugano Airport','루가노 공항','Switzerland','스위스','유럽',null,null,'Lugano','루가노');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (457,'Samedan Airport','사메단 공항','Switzerland','스위스','유럽',null,null,'St Moritz','생모리츠');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (458,'Zurich International Airport','취리히 (쥬리히) 국제공항','Switzerland','스위스','유럽',null,null,'Zurich','취리히');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (459,'Adana Airport','아다나 공항','Turkey','터키','유럽',null,null,'Adana','아다나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (460,'Adnan Menderes Airport','아드난 멘데레스 공항','Turkey','터키','유럽',null,null,'Izmir','이즈미르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (461,'Antalya Airport','안탈리아 공항','Turkey','터키','유럽',null,null,'Antalya','안탈리아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (462,'Ataturk Airport','아타투르크 공항','Turkey','터키','유럽',null,null,'Istanbul','이스탄불');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (463,'Balıkesir Airport (Merkez Airport )','발리케시르 공항 (메르케즈 공항)','Turkey','터키','유럽',null,null,'Balikesir','발리케시르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (464,'Dalaman Airport','달라만 공항','Turkey','터키','유럽',null,null,'Mugla','무르가');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (465,'Esenboga Airport','에센보가 공항','Turkey','터키','유럽',null,null,'Ankara','앙카라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (466,'Milas Airport','밀라스 공항','Turkey','터키','유럽',null,null,'Bodrum','보드룸');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (467,'Sabiha Gokcen International Airport','사비하 곡센 공항','Turkey','터키','유럽',null,null,'Istanbul','이스탄불');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (468,'Trabzon Airport','트라브존 공항','Turkey','터키','유럽',null,null,'Trabzon','트라브존');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (469,'Borispol Airport','보르스폴 공항','Ukraine','우크라이나','유럽',null,null,'Kiev','키예프');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (470,'Dnipropetrovsk International Airport','드네프로페트로브스크 국제공항','Ukraine','우크라이나','유럽',null,null,'Dnipropetrovsk ( Dnepropetrovsk )','드네프로페트로브스크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (471,'Donetsk Airport','도네츠크 공항','Ukraine','우크라이나','유럽',null,null,'Donetsk','도네츠크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (472,'Odessa Central Airport','오데사 센트럴 공항','Ukraine','우크라이나','유럽',null,null,'Odessa','오데사');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (473,'Baginton Airport','배징턴 공항','United Kingdom','영국','유럽',null,null,'Coventry','코번트리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (474,'Belfast City Airport','벨파스트 시티 공항','United Kingdom','영국','유럽',null,null,'Belfast','벨파스트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (475,'Belfast International Airport','벨파스트 국제공항','United Kingdom','영국','유럽',null,null,'Belfast','벨파스트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (476,'Biggin Hill Airport','비긴 힐 공항','United Kingdom','영국','유럽',null,null,'London','런던');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (477,'Birmingham International Airport','버밍햄 국제공항','United Kingdom','영국','유럽',null,null,'Birmingham','버밍엄');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (478,'Bournemouth International Airport','본머스 국제공항','United Kingdom','영국','유럽',null,null,'Bournemouth','본머스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (479,'Bristol International Airport','브리스틀 국제공항','United Kingdom','영국','유럽','England','잉글랜드','Bristol','브리스틀');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (480,'Cardiff International Airport','카디프 국제공항','United Kingdom','영국','유럽',null,null,'Cardiff','카디프');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (481,'Durham Tees Valley Airport ( Teesside )','더햄티즈 공항  ( 티사이드 )','United Kingdom','영국','유럽',null,null,'Durham Tees Valley','더햄티즈');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (482,'Dyce Airport  (Aberdeen)','다이스 공항 (에버딘)','United Kingdom','영국','유럽',null,null,'Aberdeen','애버딘');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (483,'Edinburgh Airport','에든버러 공항','United Kingdom','영국','유럽',null,null,'Edinburgh','에든버러');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (484,'Eglinton Airport','에글린튼 공항','United Kingdom','영국','유럽',null,null,'Londonderry','런던데리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (485,'Exeter International Airport','엑서터 국제공항','United Kingdom','영국','유럽','England','잉글랜드','Exeter','엑서터');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (486,'Gatwick Airport','개트윅 공항','United Kingdom','영국','유럽',null,null,'London','런던');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (487,'Glasgow International Airport (formely Glasgow Abbotsich Airport)','글래스고 국제공항 (구> 애보스치 공항)','United Kingdom','영국','유럽',null,null,'Glasgow','글래스고');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (488,'Heathrow Airport','히드로우 공항','United Kingdom','영국','유럽',null,null,'London','런던');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (489,'Humberside Airport','험버사이드 공항','United Kingdom','영국','유럽',null,null,'Kingston upon Hull','킹스톤 어펀 훌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (490,'Inverness Airport','인버니스 공항','United Kingdom','영국','유럽','Scotland','스코틀랜드','Inverness','인버니스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (491,'Jersey States Airport','저지 스테이츠 공항','United Kingdom','영국','유럽',null,null,'Jersey','저지');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (492,'John Lennon Airport','존 레논 공항','United Kingdom','영국','유럽',null,null,'Liverpool','리버풀');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (493,'Kent International Airport','켄트 국제공항','United Kingdom','영국','유럽',null,null,'Manston','맨스톤');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (494,'Leeds Bradford International Airport','리즈 브랫포드 국제공항','United Kingdom','영국','유럽','England','잉글랜드','West Yorkshire','웨스트요크셔');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (495,'London City Airport','런던 시티 공항','United Kingdom','영국','유럽',null,null,'London','런던');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (496,'Luton Airport','루톤 공항','United Kingdom','영국','유럽',null,null,'London','런던');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (497,'Lydd International Airport','리드 국제공항','United Kingdom','영국','유럽',null,null,'Lydd','리드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (498,'Manchester International Airport','맨체스터 국제공항','United Kingdom','영국','유럽',null,null,'Manchester','맨체스터');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (499,'Newcastle International Airport','뉴캐슬 국제공항','United Kingdom','영국','유럽','England','잉글랜드','Newcastle upon Tyne','뉴캐슬어폰타인');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (500,'Norwich International Airport','노리치 국제공항','United Kingdom','영국','유럽','England','잉글랜드','Norwich','노리치');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (501,'Nottingham East Midlands Airport','노팅엄 이스트 미들랜 공항','United Kingdom','영국','유럽',null,null,'Nottingham','노팅엄');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (502,'Prestwick Airport','프레스트윅 공항','United Kingdom','영국','유럽',null,null,'Glasgow','글래스고');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (503,'RAF Saint  Mawgan','세인트 마건 공군기지','United Kingdom','영국','유럽','England','잉글랜드','Newquay','뉴키');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (504,'Robin Hood Airport Doncaster Sheffield','로빈훗 돈캐스터 쉐필드','United Kingdom','영국','유럽','England','잉글랜드','South Yorkshire','사우스요크셔');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (505,'Ronaldsway Airport','로널즈웨이 공항','United Kingdom','영국','유럽',null,null,'Isle Of Man','맨섬');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (506,'Southampton International Airport ( Eastleigh )','사우샘프턴 국제공항  ( 이스트레이 )','United Kingdom','영국','유럽',null,null,'Southampton','사우샘프턴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (507,'Southend Airport (London Southend Airport )','사우스엔드 시공항','United Kingdom','영국','유럽',null,null,'Southend','사우스엔드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (508,'Stansted Airport','스텐스테드 공항','United Kingdom','영국','유럽',null,null,'London','런던');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (509,'Sumburgh Airport','섬버그 공항','United Kingdom','영국','유럽',null,null,'Shetland Islands','셰틀랜드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (510,'Abbotsford International Airport','애보트포드 국제공항','Canada','캐나다','북미캐나다','British Columbia','브리티시컬럼비아','Abbotsford','애보트포드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (511,'Calgary International Airport','캘거리 국제공항','Canada','캐나다','북미캐나다','Alberta','앨버타','Calgary','캘거리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (512,'Chevery Airport','쉐브리 공항','Canada','캐나다','북미캐나다','Quebec','퀘벡','Chevry','쉐브리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (513,'Dryden Regional Airport','드라이든 지역공항','Canada','캐나다','북미캐나다','Ontario','온타리오','Dryden','드라이덴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (514,'Edmonton City Centre (Blatchford Field) Airport','에드먼턴 시공항 (블레치포드 필드)','Canada','캐나다','북미캐나다','Alberta','앨버타','Edmonton','에드몬튼');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (515,'Edmonton International Airport','에드먼턴 국제공항','Canada','캐나다','북미','Alberta','앨버타','Edmonton','에드몬튼');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (516,'Gander International Airport','갠더  국제공항','Canada','캐나다','북미캐나다','Newfoundland and Labrador','뉴펀들랜드앤래브라도','Gander','갠더');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (517,'Greater Moncton International Airport','그레이터 몽튼 국제공항','Canada','캐나다','북미캐나다','New Brunswick','뉴브런즈윅','Moncton','몽튼');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (518,'Halifax Robert L. Stanfield International Airport (Halifax International Airport','핼리팩스 로버트 스탠필드 국제공항 (구> 할리팩스 국제공항','Canada','캐나다','북미캐나다','Nova Scotia','노바스코샤','Halifax','핼리팩스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (519,'John C. Munro Hamilton International Airport','존 C. 먼론 해밀턴 공항','Canada','캐나다','북미','Ontario','온타리오','Hamilton','해밀턴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (520,'Kelowna','켈로너','Canada','캐나다','북미캐나다','British Columbia','브리티시컬럼비아','Kelowna','켈로너');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (521,'Kingston Airport','킹스턴 공항','Canada','캐나다','북미캐나다','Ontario','온타리오','Kingston','킹스턴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (522,'Montreal - Pierre Elliott Trudeau International Airport','몬트리얼 피에르 엘리엇 트루도 국제공항','Canada','캐나다','북미캐나다','Quebec','퀘벡','Montreal','몬트리얼');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (523,'Montreal-Mirabel International Airport','미라벨 공항','Canada','캐나다','북미캐나다','Quebec','퀘벡','Montreal','몬트리얼');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (524,'Ottawa Macdonald-Cartier International Airport','오타와 맥도날 카티어 국제공항','Canada','캐나다','북미캐나다','Ontario','온타리오','Ottawa','오타와');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (525,'Prince Rupert Airport','딕비 아일랜드 공항','Canada','캐나다','북미캐나다','British Columbia','브리티시컬럼비아','Prince Rupert','프린스루퍼트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (526,'Quebec city / Jean Lesage International Airport (Jean Lesage International Airport )','퀘벡 시티 장 레사지 국제공항','Canada','캐나다','북미','Quebec','퀘벡','Quebec','퀘벡');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (527,'Regina International Airport','레지나 국제공항','Canada','캐나다','북미캐나다','Saskatchewan','서스캐처원','Regina','레지나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (528,'Saint John Airport','세인트존 공항','Canada','캐나다','북미캐나다','New Brunswick','뉴브런즈윅','Saint John','세인트존');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (529,'Sault Ste. Marie Airport','솔트스테마리 공항','Canada','캐나다','북미캐나다','Ontario','온타리오','Sault Ste Marie','솔트스테마리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (530,'Thunder Bay International Airport','썬더베이 국제공항','Canada','캐나다','북미캐나다','Ontario','온타리오','Thunder Bay','썬더베이');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (531,'Billy Bishop Toronto City Airport (Toronto Islands Airport)','빌리비숍 토론토 시티 공항 (토론토 아일랜드)','Canada','캐나다','북미','Ontario','온타리오','Toronto','토론토');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (532,'Toronto Lester B. Pearson International Airport','피어슨 국제공항','Canada','캐나다','북미','Ontario','온타리오','Toronto','토론토');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (533,'Vancouver International Airport','밴쿠버 국제공항','Canada','캐나다','북미캐나다','British Columbia','브리티시컬럼비아','Vancouver','벤쿠버');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (534,'Victoria International Airport','빅토리아 국제공항','Canada','캐나다','북미캐나다','British Columbia','브리티시컬럼비아','Victoria','빅토리아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (535,'Winnipeg James Armstrong Richardson International Airport','위니펙 제임스 암스트롱 리챠슨 국제공항','Canada','캐나다','북미캐나다','Manitoba','매니토바','Winnipeg','위니패그');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (536,'Aberdeen Regional Airport','애버딘 지역공항','United States','미국','북미캐나다','South Dakota','사우스다코타','Aberdeen','애버딘');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (537,'Abilene Municipal Airport','애빌린 시공항','United States','미국','북미캐나다','Texas','텍사스','Abilene','애빌린');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (538,'Natchez-Adams County Airport (Hardy-Anders Field)','나체스 아담스 카운티 공항(하디 앤더스 필드)','United States','미국','북미캐나다','Mississippi','미시시피','Natchez','나체즈');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (539,'Adirondack Airport','애디런댁 공항','United States','미국','북미캐나다','New York','뉴욕','Saranac Lake','사라낙호수');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (540,'Akron-Canton Regional Airport','애크런 캔튼 지역공항','United States','미국','북미','Ohio','오하이오','Akron','애크런');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (541,'Alamogordo-White Sands Regional Airport','앨라모고도 화이트 샌즈 지역공항','United States','미국','북미캐나다','New Mexico','뉴멕시코','Alamogordo','앨라모고도');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (542,'Albany International Airport','올버니 국제공항','United States','미국','북미','New York','뉴욕','Albany','올버니');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (543,'Albuquerque International Sunport','앨버커키 국제선포트','United States','미국','북미','New Mexico','뉴멕시코','Albuquerque','앨버커키');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (544,'Allegheny County Airport','알레게니 카운티 공항','United States','미국','북미캐나다','Pennsylvania','펜실베이니아','West Mifflin , Pittsburgh','웨스트 머플린');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (545,'Anderson Municipal-Darlington Field','앤더슨  시 (달링턴 필드)','United States','미국','북미캐나다','Indiana','인디애나','Anderson','앤더슨');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (546,'Ardmore Municipal Airport','아드모어 시공항','United States','미국','북미캐나다','Oklahoma','오클라호마','Ardmore','아드모어');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (547,'Asheville Regional Airport','애슈빌 공항','United States','미국','북미캐나다','North Carolina','노스캐롤라이나','Fletcher / Ashevlle','플레쳐 , 애슈빌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (548,'Atlantic City International Airport','애틀랜틱시티 국제공항','United States','미국','북미캐나다','New Jersey','뉴저지','Atlantic City','애틀랜틱시티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (549,'Atlantic City Municipal Airport (Bader Field)','애틀랜틱시티 시공항 (베이더 필드)','United States','미국','북미캐나다','New Jersey','뉴저지','Atlantic City','애틀랜틱시티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (550,'Auburn-Opelika Robert G. Pitts Airport','오번 오플라이카 로버트 G. 피츠 공항','United States','미국','북미캐나다','Alabama','앨라배마','Auburn','오번');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (551,'Augusta Regional Airport (at Bush Field )','오거스타 지역공항','United States','미국','북미캐나다','Georgia','조지아','Augusta , Richmond County','오거스타 , 리치몬드 카운티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (552,'Augusta State Airport','오거스타 스테이트 공항','United States','미국','북미캐나다','Maine','메인','Augusta','오거스타');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (553,'Austin-Bergstrom International Airport','오스틴 벅스트롬 국제공항','United States','미국','북미캐나다','Texas','텍사스','Austin','오스틴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (554,'Austin-Straubel Field Airport','오스튼 스트로벨 필드 공항','United States','미국','북미캐나다','Wisconsin','위스콘신','Green Bay','그린베이');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (555,'Baltimore - Washington International Thurgood Marshall Airport','볼티모어 워싱턴 국제공항 (터굿 마셜 공항)','United States','미국','북미캐나다','Maryland','메릴랜드','Baltimore','볼티모어');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (556,'Bangor International Airport','뱅거 국제공항','United States','미국','북미캐나다','Maine','메인','Bangor','뱅거');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (557,'Barkley Regional Airport','바클리 지역공항','United States','미국','북미캐나다','Kentucky','켄터키','Paducah','퍼두커');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (558,'Barnes Municipal Airport','반즈 시공항','United States','미국','북미','Massachusetts','매사추세츠','Westfield / Springfield','웨스필드 /스프링필드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (559,'Abraham Lincoln Capital Airport','에이브람 링컨 캐피톨 공항','United States','미국','북미캐나다','Illinois','일리노이','Springfield','스프링필드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (560,'Barnstable Airport','반스터블 공항','United States','미국','북미캐나다','Massachusetts','매사추세츠','Hyannis','히아니스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (561,'Baton Rouge Metropolitan Airport','배턴루지 메트로폴리탄 공항','United States','미국','북미','Louisiana','루이지애나','Baton Rouge','배턴루지');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (562,'Bay County Airport','베이 카운티 공항','United States','미국','북미캐나다','Florida','플로리다','Panama City','파나마시티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (563,'Birmingham-Shuttleworth International Airport','버밍햄 셔틀워스 국제공항','United States','미국','북미','Alabama','앨라배마','Birmingham','버밍엄');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (564,'Bishop International Airport','비숍 국제공항','United States','미국','북미캐나다','Michigan','미시간','Flint','플린트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (565,'Bismarck Municipal Airport','비스마르크 시공항','United States','미국','북미','North Dakota','노스다코타','Bismarck','비즈마크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (566,'Blue Grass Airport','블루 그래스 공항','United States','미국','북미캐나다','Kentucky','켄터키','Lexington','렉싱턴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (567,'Bob Hope Airport','밥 호프 공항','United States','미국','북미','California','캘리포니아','Burbank','버뱅크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (568,'Boeing Field  King County International Airport','보잉 필드 킹 카운티 국제공힝','United States','미국','북미캐나다','Washington','워싱턴','Seattle','시애틀');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (569,'Boise Air Terminal (Gowen Field)','보이시 에어터미널 (가원 필드)','United States','미국','북미','Idaho','아이다호','Boise','보이시');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (570,'Boone County Airport','분 카운티 공항','United States','미국','북미캐나다','Arkansas','아칸소','Harrison','해리슨');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (571,'Bradley International Airport','브래들리 국제공항','United States','미국','북미','Connecticut','코네티컷','Windsor Locks / Hartford','윈저 록 / 하트퍼드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (572,'Brainerd Lakes Regional Airport','브레이너드 레이크스 지역공항','United States','미국','북미캐나다','Minnesota','미네소타','Brainerd','브레이너드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (573,'Brownsville / South Padre Island International Airport','브라운스빌 사우스 파드레 아일랜드 국제공항','United States','미국','북미','Texas','텍사스','Brownsville','브라운스빌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (574,'Brunswick Golden Isles Airport','브런즈윅 골든 아일스 공항','United States','미국','북미캐나다','Georgia','조지아','Brunswick','브런즈윅');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (575,'Buchanan Field Airport','뷰캐넌 필드 공항','United States','미국','북미캐나다','California','캘리포니아','Concord','콩코드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (576,'Buffalo Niagara International Airport','버펄로 나이아가라 국제공항','United States','미국','북미','New York','뉴욕','Buffalo','버펄로');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (577,'Burlington International Airport','벌링턴 국제공항','United States','미국','북미캐나다','Vermont','버몬트','Burlington','벌링튼');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (578,'Calexico International Airport','칼렉시코 국제공항','United States','미국','북미캐나다','California','캘리포니아','Calexico','칼렉시코');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (579,'Central Illinois Regional Airport (CIRA)','센트럴 일리노이스 지역공항','United States','미국','북미','Illinois','일리노이','Bloomington - Normal','블루밍턴 - 노멀');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (580,'Central Wisconsin Airport','센트럴 위스콘신 공항','United States','미국','북미캐나다','Wisconsin','위스콘신','Mosinee / Wausau','모시니 와소');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (581,'Charleston International Airport (Charleston Air Force Base)','찰스턴 국제공항 (찰스턴 공군기지)','United States','미국','북미','South Carolina','사우스캐롤라이나','Charleston','찰스턴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (582,'Charlotte / Douglas International Airport','샬럿 더글라스 국제공항','United States','미국','북미캐나다','North Carolina','노스캐롤라이나','Charlotte','샬럿');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (583,'Charlottesville-Albemarle Airport','샤로트빌 앨버마를 공항','United States','미국','북미','Virginia','버지니아','Charlottesville','샬럿츠빌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (584,'Chattanooga Metropolitan Airport','채터누가 메트로폴피탄 공항','United States','미국','북미캐나다','Tennessee','테네시','Chattanooga','채터누가');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (585,'Cheyenne Regional Airport (Jerry Olson Field)','샤이엔 지역공항 (제리 오슬론 필드)','United States','미국','북미캐나다','Wyoming','와이오밍','Cheyenne','샤이엔');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (586,'Chicago Midway Airport','시카고 미드웨이 공항','United States','미국','북미','Illinois','일리노이','Chicago','시카고');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (587,'Cincinnati Municipal Airport','신시내티 시공항','United States','미국','북미캐나다','Ohio','오하이오','Cincinnati','신시내티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (588,'Cincinnati/Northern Kentucky International Airport','신시내티 노던 켄터키 국제공항','United States','미국','북미캐나다','Kentucky','켄터키','Hebron','헤브론');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (589,'Cleveland Burke Lakefront Airport','클리블랜드 버크 레이크프런트 공항','United States','미국','북미캐나다','Ohio','오하이오','Cleveland','클리블랜드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (590,'Cleveland Hopkins International Airport','클리블랜드 홉킨스 국제공항','United States','미국','북미캐나다','Ohio','오하이오','Cleveland /Cuyahoga','클리블랜드 / 쿠야호가');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (591,'Coleman A. Young International Airport','코울먼 A. 영 시공항','United States','미국','북미캐나다','Michigan','미시간','Detroit','디트로이트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (592,'Coles County Airport','코우릇 카운티 공항','United States','미국','북미캐나다','Illinois','일리노이','Mattoon','매툰');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (593,'Colorado Springs Airport (City of Colorado Springs Municipal Airport, formerly Peterson Air Force Base)','콜로라도스프링스  시공항 (구>페터스 에어필드)','United States','미국','북미캐나다','Colorado','콜로라도','Colorado Springs','콜로라도 스프링스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (594,'Columbia Metropolitan Airport','컬럼비아 메트로폴리탄 공항','United States','미국','북미캐나다','South Carolina','사우스캐롤라이나','West Columbia','웨스트 컬럼비아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (595,'Columbia Regional Airport','컬럼비아 지역공항','United States','미국','북미캐나다','Missouri','미주리','Columbia','컬럼비아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (596,'Corpus Christi International Airport','코퍼스크리스티 국제공항','United States','미국','북미캐나다','Texas','텍사스','Corpus Christi','코퍼스크리스티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (597,'Craig Municipal Airport','크래이그 시공항','United States','미국','북미캐나다','Florida','플로리다','Jacksonville','잭슨빌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (598,'Cuyahoga County Airport','쿠야호가 공항','United States','미국','북미캐나다','Ohio','오하이오','Cleveland','클리블랜드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (599,'Dallas  Fort Worth International Airport','달라스  포츠워스 국제공항','United States','미국','북미캐나다','Texas','텍사스','Dallas / Fort Worth','달라스 / 포츠워스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (600,'Dallas Love Field','댈러스 러브필드','United States','미국','북미캐나다','Texas','텍사스','Dallas','댈러스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (601,'Dane County Regional Airport ( Truax Filed )','데인 카운티 공항  ( 투루악스 필드 )','United States','미국','북미캐나다','Wisconsin','위스콘신','Madison','매디슨');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (602,'Danville Regional Airport','댄빌 지역공항','United States','미국','북미캐나다','Virginia','버지니아','Danville','댄빌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (603,'Daytona Beach International Airport','데이토너비치 국제공항','United States','미국','북미캐나다','Florida','플로리다','Daytona Beach','데이토너비치');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (604,'Del Rio International Airport','델 리오 국제공항','United States','미국','북미','Texas','텍사스','Del Rio','델 리오');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (605,'Delaware County Airport','델라웨어 카운티 공항','United States','미국','북미캐나다','Indiana','인디애나','Muncie','먼시');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (606,'Delta County Airport','델타 카운티 공항','United States','미국','북미캐나다','Michigan','미시간','Escanaba','에스커나바');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (607,'Denver International Airport (replaced Stapleton Int''l)','덴버 국제공항 (대체 스테플톤 국제공항)','United States','미국','북미캐나다','Colorado','콜로라도','Denver','덴버');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (608,'Des Moines International Airport','디모인 국제공항','United States','미국','북미캐나다','Iowa','아이오와','Des Moines','디모인');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (609,'Detroit Metropolitan Wayne County Airport','디트로이트 메트로폴리탄 웨인 카운티 공항','United States','미국','북미캐나다','Michigan','미시간','Romulus / Detroit','로물루스 / 디트로이트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (610,'Dodge City Regional Airport','닷지 시티 지역공항','United States','미국','북미캐나다','Kansas','캔자스','Dodge City','닷지 시티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (611,'Drake Field / Fayetteville Municipal Airport (Fayetteville Executive Airport )','드레이크 필드 (페이트빌 시공항)','United States','미국','북미캐나다','Arkansas','아칸소','Fayetteville','페이트빌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (612,'Dubuque Regional Airport','더뷰크 지역공항','United States','미국','북미캐나다','Iowa','아이오와','Dubuque','더뷰크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (613,'Duluth International Airport','덜루스 국제공항','United States','미국','북미캐나다','Minnesota','미네소타','Duluth','덜루스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (639,'Garden City Regional Airport','가든시티 지역공항','United States','미국','북미캐나다','Kansas','캔자스','Garden City','가든시티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (640,'Gary/Chicago International Airport','게리 시카고 국제공항','United States','미국','북미캐나다','Indiana','인디애나','Gary','게리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (641,'General Mitchell International Airport','제너랄 미첼 국제공항','United States','미국','북미캐나다','Wisconsin','위스콘신','Milwaukee','밀워키');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (642,'George Bush Intercontinental Airport','조지 부쉬 인터콘티넨탈 공항','United States','미국','북미','Texas','텍사스','Houston','휴스턴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (643,'Gerald R. Ford International Airport','제랄드 R. 포드 국제공항','United States','미국','북미캐나다','Michigan','미시간','Grand Rapids','그랜드래피즈');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (644,'Gillette-Campbell County Airport','질레트 캠벨 카운티 공항','United States','미국','북미캐나다','Wyoming','와이오밍','Gillette','질레트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (645,'Glacier Park International Airport','글래셔 파크 국제공항','United States','미국','북미캐나다','Montana','몬태나','Kalispell','캘리스 펠');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (646,'Golden Triangle Regional Airport','골든 트라이앵글 지역공항','United States','미국','북미캐나다','Mississippi','미시시피','Columbus','콜럼버스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (647,'Grand Canyon National Park Airport','그랜캐년 내셔널 파크 공항','United States','미국','북미캐나다','Arizona','애리조나','Grand Canyon','그랜드 캐니언');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (648,'Grant County International Airport','그랜트 카운티 국제공항','United States','미국','북미캐나다','Washington','워싱턴','Moses Lake','모제스 레이크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (649,'Great Falls International Airport','그레이트폴스 국제공항','United States','미국','북미캐나다','Montana','몬태나','Great Falls','그레이트폴스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (650,'Greater Cumberland Regional Airport','그레이터 컴벌랜드 지역공항','United States','미국','북미캐나다','Maryland','메릴랜드','Cumberland','컴벌랜드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (651,'Greater Peoria Airport','그레이터 피오리아  공항','United States','미국','북미캐나다','Illinois','일리노이','Peoria','피오리아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (652,'Greeley-Weld County Airport','그릴리 웰드 카운티 공항','United States','미국','북미캐나다','Colorado','콜로라도','Greeley','그릴리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (653,'Greenbrier Valley Airport','그란비어 밸리 공항','United States','미국','북미캐나다','West Virginia','웨스트버지니아','Lewisburg','루이스버그');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (654,'Greenville-Spartanburg Airport','그린빌 스파르탄버그 공항','United States','미국','북미캐나다','South Carolina','사우스캐롤라이나','Greenville','그린빌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (655,'Greenwood-Leflore Airport','그린우드 레플러 공항','United States','미국','북미캐나다','Mississippi','미시시피','Greenwood','그린우드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (656,'Gulfport-Biloxi International Airport','걸포트 빌록시 국제공항','United States','미국','북미캐나다','Mississippi','미시시피','Gulfport','걸프포트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (657,'Hagerstown Regional Airport','행거스타운 지역공항','United States','미국','북미캐나다','Maryland','메릴랜드','Hagerstown','행거스타운');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (658,'Hancock International Airport','핸콕 국제공항','United States','미국','북미캐나다','New York','뉴욕','Syracuse','시러큐스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (897,'Salgado Filho Airport','살라도 핀호 공항','Brazil','브라질','중남미','Rio Grande do Sul','리우그란데두술','Porto Alegre','포르투알레그리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (898,'Santa Maria Airport','산타마리아 공항','Brazil','브라질','중남미','Sergipe','세르지페','Aracaju','아라카주');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (899,'Senador Petronio Portella Airport','세나됴 페트로니오 포르텔라 공항','Brazil','브라질','중남미','Piaui','피아우이','Teresina','테레지나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (900,'Tancredo Neves International Airport ( Belo Horizonte International )','탄크레도 니브스 국제공항  ( 벨로호리존테 국제공항 )','Brazil','브라질','중남미','Minas Gerais','미나스제라이스','Belo Horizonte','벨로리존테');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (901,'Val de Cans Airport','발 데 칸즈 공항','Brazil','브라질','중남미','Para','파라','Belem','베렘');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (902,'Viracopos Airport','비라코포스 공항','Brazil','브라질','중남미','Sao Paulo','상파울루','Campinas','캄피나스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (903,'Gerrard-Smith Airport','제라드 스미스 공항','Cayman Islands','케이멘제도','중남미',null,null,'Cayman Brae Island','케이만 브라에 아일랜드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (904,'Alto Palena Airport','알토 팔레나 공항','Chile','칠레','중남미',null,null,'Alto Palena','알토 팔레나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (905,'Arturo Merino Benitez Airport (Santiago International Airport) (Comodoro Arturo Merino Benitez International Airport )','아우투로 메리노 베니테즈 공항','Chile','칠레','중남미',null,null,'Santiago','산티아고');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (906,'Balmaceda Airport','발마세다 공항','Chile','칠레','중남미',null,null,'Balmaceda','발마세다');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (907,'Barriles Airport','배러아일스 공항','Chile','칠레','중남미',null,null,'Tocopilla','토코필라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (908,'Canal Bajo Airport','카날 바조 공항','Chile','칠레','중남미',null,null,'Osorno','오소르노');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (909,'Capitan Fuentes Martinez Airport','카피탄 후엔테즈 마티네즈 공항','Chile','칠레','중남미',null,null,'Porvenir','포비니어');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (910,'Carriel Sur Airport','카리엘 쉬 공항','Chile','칠레','중남미',null,null,'Concepcion','콘셉시온');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (911,'Cavancha Airport','카라반챠 공항','Chile','칠레','중남미',null,null,'Iquique','이키케');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (912,'Cerro Moreno Airport','세로 모레노 공항','Chile','칠레','중남미',null,null,'Antofagasta','안토파가스타');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (913,'Chacalluta Airport','챠깔루타 공항','Chile','칠레','중남미',null,null,'Arica','아리카');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (914,'Alfonso Bonilla Aragon Airport','알폰손 보닐랴 아라곤 공항','Colombia','콜롬비아','중남미',null,null,'Cali','칼리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (915,'Eldorado Airport','엘도라도 공항','Colombia','콜롬비아','중남미',null,null,'Bogota','보고타');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (916,'Ernesto Cortissoz Airport','에르네스토 코르티쇼즈 공항','Colombia','콜롬비아','중남미',null,null,'Barranquilla','바랑키야');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (917,'Rafael Nunez Airport','라파엘 누네즈 공항','Colombia','콜롬비아','중남미',null,null,'Cartagena','카르타헤나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (918,'Juan Santamaria International Airport','후안 산타마리아 국제공항','Costa Rica','코스타리카','중남미',null,null,'San Jose','샌호세');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (919,'Frank Pais Airport','프랭크 페이스 공항','Cuba','쿠바','중남미',null,null,'Holguin','올긴주');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (920,'Ignacio Agramonte International Airport','이그냐시오 아그라몬테 국제공항','Cuba','쿠바','중남미',null,null,'Camaguey','카마구에이');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (921,'Jose Marti International Airport','호세 마르티 국제공항','Cuba','쿠바','중남미',null,null,'Havana','아바나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (922,'Juan Gualberto Gomez Airport','후안 구알베르토 고메즈 공항','Cuba','쿠바','중남미',null,null,'Varadero','바라데로');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (923,'Maximo Gomez Airport','막시모 고메즈 공항','Cuba','쿠바','중남미',null,null,'Ciego De Avila','시에고데아빌라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (924,'Sierra Maestra Airport','시에라 마에스트라 공항','Cuba','쿠바','중남미',null,null,'Manzanillo','만사니요');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (925,'Ambouli Airport','암불리 공항','Djibouti','주부티','중남미',null,null,'Djibouti','지부티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (926,'La Union Airport ( Gregorio Luperon International )','라 유니온 공항  ( 그레고리오 루페론 )','Djibouti','도미니카 공화국','중남미',null,null,'Puerto Plata','푸에르토플라타');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (927,'Las America International Airport ( Jose Francisco Pena Gomez )','라스 아메리카 국제공항  ( 호세 프란시스코 페나 고메즈)','Djibouti','도미니카 공화국','중남미',null,null,'Santo Domingo','산토도밍고');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (928,'La Romana International Airport','라로마나 국제공항','Dominican Republic','도미니카 공화국','중남미',null,null,'La Romana','라로마나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (929,'Punta Cana International Airport','푼타카나 국제공항','Dominican Republic','도미니카 공화국','중남미',null,null,'Higuey / Punta Cana','히게이 / 푼타카나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (930,'Mariscal Sucre International Airport','마리스칼 수쿠레 국제공항','Ecuador','에콰도르','중남미',null,null,'Quito','키토');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (931,'Simon Bolivar International Airport','시몬 볼리바 국제공항','Ecuador','에콰도르','중남미',null,null,'Guayaquil','과야킬');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (932,'Comalapa International Airport ( El Salvador International )','코말라파 국제공항  ( 엘살바도르 국제공항 )','El Salvador','엘살바드로','중남미',null,null,'San Salvador','산살바도르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (933,'Felix Eboue Airport','로샹보 공항','French Guiana','프랑스령 기아나','중남미',null,null,'Cayenne','카옌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (934,'Maurice Bishop International Airport  (formerly Point Saline International Airport)','모리스 비숍 국제공항 (구>포인트 살리네 국제공항)','Grenada','그라나다','중남미',null,null,'St. George''s','세인트 조지');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (935,'Le Raizet Airport','르 레제 공항','Guadeloupe','과들루프','중남미',null,null,'Pointe A Pitre','퐁테-아-피트르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (936,'La Aurora Airport','라 아우로라 공항','Guatemala','과테말라','중남미',null,null,'Guatemala City','과테말라시티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (937,'Cheddi Jagan International Airport (Timehri International  )','체디 자간 국제공항 (티메히리 국제공항 )','Guyana','가이아나','중남미',null,null,'Georgetown','조지타운');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (938,'Port Au Prince International Airport ( Mais Gate )','포르토프랭스 국제공항  ( 마이스 게이트 )','Haiti','아이티','중남미',null,null,'Port Au Prince','포르토프랭스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (939,'Norman Manley Airport','노먼 먼레이 공항','Jamaica','자메이카','중남미',null,null,'Kingston','킹스턴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (940,'Sangster International Airport','상스터 국제공항','Jamaica','자메이카','중남미',null,null,'Montego Bay','몬테고베이');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (941,'Lamentin Airport','라멩탱 공항','Martinique','마르티니크','중남미',null,null,'Fort De France','포르드프랑스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (942,'Alvarez International Airport (Acapulco International)','알바레즈 국제공항 (아카풀코 국제공항)','Mexico','멕시코','중남미',null,null,'Acapulco','아카풀코');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (943,'Bahias de Huatulco International Airport','버하이 데  후아츌코 국제공항','Mexico','멕시코','중남미','Oaxaca','오악사카','Huatulco','후아툴코');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (944,'Benito Juarez International Airport ( Mexico City International )','베니토 후아레즈 국제공항  ( 멕시코시티 국제공항 )','Mexico','멕시코','중남미',null,null,'Mexico City','멕시코시티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (945,'Cancun International Airport','캔쿤 국제공항','Mexico','멕시코','중남미','Quintana Roo','킨타나로오','Cancun','칸쿤');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (946,'Capitan Carlos Rovirosa Perez Airport','카피탄 카를로스 로비로사 공항','Mexico','멕시코','중남미',null,null,'Villahermosa','비야에르모사');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (947,'Cozumel International Airport','코즈멜 국제공항','Mexico','멕시코','중남미','Quintana Roo','킨타나로오','Cozumel','코즈멜');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (948,'Tijuana International Airport (General Abelardo L. Rodriguez International Airport)','티후아나 국제공항 (제너랄 아베랄도 L. 로드리게즈 국제공항)','Mexico','멕시코','중남미','Baja California','바자캘리포니아','Tijuana','티후아나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (949,'General Francisco J. Mujica International Airport','제너널 프란치스코 J. 뮤지카 국제공항','Mexico','멕시코','중남미','Michoacan','미초아칸','Morelia','모렐리아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (950,'General Manuel Marquez de leon Airport ( La Paz International )','제너랄 마뉴엘 마르케즈 데 레옹 공항  ( 라파즈 국제공항 )','Mexico','멕시코','중남미',null,null,'La Paz','라파스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (951,'General Mariano Escobedo Airport ( Monterrey International )','제너럴 마리아노 공항  ( 몬테레이 국제공항 )','Mexico','멕시코','중남미',null,null,'Monterrey','몬테레이');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (952,'General Rafael Buelna Airport ( Mazatlan International )','제너랄 라파엘 부엘나 공항  ( 마사틀란 국제공항 )','Mexico','멕시코','중남미',null,null,'Mazatlan','마사틀란');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (953,'General Rodolfo Sanchez Taboada International Airport','제너랄 로볼포 산체트 타보다 국제공항','Mexico','멕시코','중남미','Baja California','바자캘리포니아','Mexicali','멕시칼리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (954,'Las Bajadas Airport','라 바자다스 공항','Mexico','멕시코','중남미',null,null,'Veracruz','베라크루스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (955,'Licenciado Gustavo Dia Ordaz International','릭 구스타보 디아 오르다즈 공항','Mexico','멕시코','중남미',null,null,'Puerto Vallarta','푸에르토발라타');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (956,'Lie Manuel Crescencio Rejon Airport ( Merida International )','리에 마뉴엘 크레센시오 레종 공항  ( 메리다 국제공항 )','Mexico','멕시코','중남미',null,null,'Merida','메리다');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (957,'Los Cabos Airport','로스 카보 공항','Mexico','멕시코','중남미',null,null,'San Jose Cabo','산 호세 까보');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (958,'Miguel Hidalgo Airport','미구엘 히달고 공항','Mexico','멕시코','중남미',null,null,'Guadalajara','과달라하라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (959,'Minatitlan / Coatzacoalcos National Airport','미나티틀란 코아차콜코스 내셔널 공항','Mexico','멕시코','중남미','Veracruz','베라크루스','Minatitlan','미나티틀란');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (960,'Ponciano Arriaga International Airport','폰시아노 아리아가 국제공항','Mexico','멕시코','중남미','San Luis Potosi','산루이스포토시','San Luis Potosi','산루이스포토시');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (961,'Tapachula International Airport','타파출라 국제공항','Mexico','멕시코','중남미',null,null,'Tapachula','타파출라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (962,'Xoxocotlan Airport','속소코탄 공항','Mexico','멕시코','중남미',null,null,'Oaxaca','오악사카');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (963,'Flamingo International Airport (Bonaire International Airport )','플라밍고 국제공항 (보네르 국제공항)','Netherlands Antilles','Caribbean Netherlands','중남미',null,null,'Bonaire','보네르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (964,'Hato International Airport  (Curacao International Airport)','하토 국제공항 ( 쿠라초 국제공항)','Netherlands Antilles','퀴라소','중남미',null,null,'Curacao','큐라소');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (965,'Princess Juliana International Airport (formerly Grand Case Airport)','프린세스 훌리아나 국제공항(구 그랑케이스 공항)','Netherlands Antilles','Sint Maarten','중남미',null,null,'St Maarten','쌍마르텐');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (966,'Augusto C. Sandino Airport ( Managua International )','아우구스토 C. 산디모 공항  ( 마나구와 국제공항 )','Nicaragua','니카라과','중남미',null,null,'Managua','마나과');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (967,'Tocumen lnternational Airport ( General Omar Torrijos Herrera International )','토쿠먼 국제 공항  ( 제너랄 오마르 토리조스 )','Panama','파나마','중남미',null,null,'Panama City','파나마시티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (968,'Alejo Garcia Airport','알레죠 가르시아 공항','Paraguay','파라과이','중남미',null,null,'Ciudad Del Este','시우다드델에스테');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (969,'Silvio Pettirossi Airport','실비오 페트로씨 공항','Paraguay','파라과이','중남미',null,null,'Asuncion','아순시온');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (970,'Jorge Chavez International Airport','호르헤 샤베즈 국제공항','Peru','페루','중남미',null,null,'Lima','리마');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (971,'Eugenio M. de Hostos Airport','에우제니오 M. 데 호스토스 공항','Puerto Rico','푸에르토리코','중남미',null,null,'Mayaguez','마야구에즈');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (972,'Luiz Munoz Marin International Airport','루이즈 뮈노스 마랭 국제공항','Puerto Rico','푸에르토리코','중남미',null,null,'San Juan','산후안');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (973,'Golden Rock Airport','골든 락 공항','Saint Kitts and Nevis','세인트키츠네비스','중남미',null,null,'St Kitts','세인트키츠');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (974,'Hewanorra Airport','헤와노라 공항','Saint Lucia','세인트루시아','중남미',null,null,'St Lucia','세인트루시아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (975,'George F. L. Charles Airport  (fomerly Vigie Airport)','비기 공항','Saint Lucia','세인트루시아','중남미',null,null,'St Lucia','세인트루시아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (976,'Zanderij International Airport ( Johan Adolf Pengel International )','잰더리지 국제공항  ( 후안 아돌프 펜겔 )','Suriname','수리남','중남미',null,null,'Paramaribo','파라마리보');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (977,'Crown Point International Airport','크라운 포인트 국제공항','Trinidad and Tobago','트리니다드토바고','중남미','Tobago','토바고','Tobago','토바고');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (978,'Piarco Airport','피아르코 공항','Trinidad and Tobago','트리니다드토바고','중남미',null,null,'Port Of Spain','포트오브스페인');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (979,'Grand Turk International Airport','그랜드터크 국제공항','Turks and Caicos Islands','터크스케이커스 제도','중남미',null,null,'Grand Turk Island','그랜드터크아일랜드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (980,'Carrasco Airport','체러스코 공항','Uruguay','우루과이','중남미',null,null,'Montevideo','몬테비데오');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (981,'El Jaguel International Airport','엘 자구엘 국제공항','Uruguay','우루과이','중남미',null,null,'Punta del Este','푼타델에스테');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (982,'Gen. Jose Antonio Anzoategui International Airport','제너널 호세 안토니오 안조아테귀 공항','Venezuela','베네수엘라','중남미',null,null,'Barcelona','바르셀로나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (983,'Simon Bolivar International Airport (Maiquetia International )','시몬 볼리바 국제공항 (마르께띠아)','Venezuela','베네수엘라','중남미','Bargas','바가스','Maiquetia / Caracas','마르께띠아 / 카라카스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (984,'Henry E. Rohlsen Airport (formely Alexander Hamilton Airport)','헨리 E 롤슨 공항 (구>알렉산더 해밀튼 공항)','Virgin Islands(US)','버진 아일랜드','중남미',null,null,'St Croix Island','상크루와');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (985,'Cyril E. King Airport','시릴 E. 킹 공항','Virgin Islands(US)','버진 아일랜드','중남미',null,null,'St Thomas Island','성 토마스섬');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (986,'Es Senia Airport','에 세니아 공항','Algeria','알제리','중동아프리카',null,null,'Oran','오랑');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (987,'Houari Boumediene Airport','훼리 부미딘 공항','Algeria','알제리','중동아프리카',null,null,'Algiers','알제');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (988,'In Amenas Airport (Zarzaitine Airport )','인 아메나스 공항','Algeria','알제리','중동아프리카',null,null,'In Amenas','인 아메나스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (989,'Noumerate Airport ( Moufdi Zakaria )','뉴머레이트 공항  ( 모프디 자카리아 )','Algeria','알제리','중동아프리카',null,null,'Ghardaia','가르다야');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (990,'Oued Irara Airport ( Krim Belkacem )','? 이라야 공항  ( 크림 벨카셈 )','Algeria','알제리','중동아프리카',null,null,'Hassi Messaoud','하시메사우드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (991,'Tamanrasset Airport','타만라셋 공항','Algeria','알제리','중동아프리카',null,null,'Tamanrasset','타만라셋');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (992,'Touat Airport','투앗 공항','Algeria','알제리','중동아프리카',null,null,'Adrar','아드라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (993,'Zenata Airport','제너타 공항','Algeria','알제리','중동아프리카',null,null,'Tlemcen','틀렘센');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (994,'4 de Fevereiro Airport','4 드 페브레이로 공항','Angola','앙골라','중동아프리카',null,null,'Luanda','루안다');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (995,'Bahrain International Airport','바레인 국제공항','Bahrain','바레인','중동아프리카',null,null,'Bahrain','바레인');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (996,'Cadjehoun Airport (Cotonou Airport)','캐드훈 ( 코토누 ) 공항','Benin','베냉','중동아프리카',null,null,'Cotonou','코토누');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (997,'Sir Seretse Khama International Airport','서 서츠 카마 국제공항','Botswana','보츠와나','중동아프리카',null,null,'Gaborone','가보로네');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (998,'Ouahigouya Airport','우아히구야 공항','Burkina Faso','부르키나 파소','중동아프리카',null,null,'Ouahigouya','우아히구야');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (999,'Bujumbura International Airport','부줌부라 국제공항','Burundi','부룬디','중동아프리카',null,null,'Bujumbura','부줌부라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1000,'Douala International Airport','두알라 국제공항','Cameroon','카메룬','중동아프리카',null,null,'Douala','두알라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1001,'Garoua International Airport','가루아 국제공항','Cameroon','카메룬','중동아프리카',null,null,'Garoua','가루아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1002,'Nsimalen Airport','시말런 공항','Cameroon','카메룬','중동아프리카',null,null,'Yaounde','야운데');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1003,'Amilcar Cabral International Airport','아밀카르 카브럴 국제공항','Cape Verde','카보베르데','중동아프리카',null,null,'Sal','살라트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1004,'Francisco Mendes Airport (Praia International) ( Porto Inglez )','프란시스코 멘데스 국제공항 (프라이아 국제공항) ( 포르토 잉걸즈 )','Cape Verde','카보베르데','중동아프리카',null,null,'Praia','프라이아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1005,'Rabil Airport','레이빌 공항','Cape Verde','카보베르데','중동아프리카',null,null,'Boa Vista','보아 비스타');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1006,'Sao Pedro Airport','산페드로 공항','Cape Verde','카보베르데','중동아프리카',null,null,'Sao Vicente','상빈센테');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1121,'Riyan Airport','리얀 공항','Yemen','예멘','중동아프리카',null,null,'Mukalla','무칼라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1122,'Sanaa International Airport','사나 국제공항','Yemen','예멘','중동아프리카',null,null,'Sanaa','사나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1123,'Livingstone Airport','리빙스턴 공항','Zambia','잠비아','중동아프리카',null,null,'Livingstone','리빙스턴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1124,'Lusaka International Airport','루사카 국제공항','Zambia','잠비아','중동아프리카',null,null,'Lusaka','루사카');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1125,'Mfuwe Airport','엠푸베 공항','Zambia','잠비아','중동아프리카',null,null,'Mfuwe','엠푸베');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1126,'Harare International Airport','하라레 국제공항','Zimbabwe','짐바브웨','중동아프리카',null,null,'Harare','하라레');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1127,'Joshua Mqabuko Nkomo International Airport','조슈아 쿠브쿠 코모 국제공항','Zimbabwe','짐바브웨','중동아프리카',null,null,'Bulawayo','불라와요');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1128,'Victoria Falls Airport','빅토리아폴스 공항','Zimbabwe','짐바브웨','중동아프리카',null,null,'Victoria Falls','빅토리아 폴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1007,'Bangui M''Poko International Airport','방기 음포코 국제공항','Central African Republic','중앙아프리카공화국','중동아프리카',null,null,'Bangui','방기');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1008,'N''Djamena International Airport','은자메나 국제공항','Chad','차드','중동아프리카',null,null,'N''Djamena','은자메나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1009,'Prince Said Ibrahim International Airport','프린드 사디브라힘 국제공항','Comoros','코모로','중동아프리카',null,null,'Hahaya , Moroni','하하야 , 모로니');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1010,'Felix Houphouet Boigny Airport','펠릭스 우후에 보아니 공항','Cote d''Ivoire','코트디부아르','중동아프리카',null,null,'Abidjan','아비장');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1011,'N''djili Airport (Kinshasa International Airport)','니지 공항 (킨샤샤 국제공항)','Democratic Republic of Congo','콩고 민주공화국','중동아프리카',null,null,'Kinshasa','킨샤사');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1012,'Cairo International Airport','카이로 국제공항','Egypt','이집트','중동아프리카',null,null,'Cairo','카이로');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1013,'Aswan International Airport (Daraw Airport)','아스완국제공항 (다라우 국제공항)','Egypt','이집트','중동아프리카',null,null,'Aswan','아스완');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1014,'El Nohza Airport','엘 노흐자 공항','Egypt','이집트','중동아프리카',null,null,'Alexandria','알렉산드리아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1015,'Hurghada International Airport','허가다 국제공항','Egypt','이집트','중동아프리카',null,null,'Hurghada','허가다');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1016,'Luxor Airport','룩소르 공항','Egypt','이집트','중동아프리카',null,null,'Luxor','룩소르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1017,'Ophira International Airport','오피라 국제공항','Egypt','이집트','중동아프리카',null,null,'Sharm El Sheikh','샴엘세이크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1018,'Bata Airport','바타 공항','Equatorial Guinea','적도 기니','중동아프리카',null,null,'Bata','바타');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1019,'Santa Isabel Airport','산타 이사벨 공항','Equatorial Guinea','적도 기니','중동아프리카',null,null,'Malabo','말라보');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1020,'Asmara International Airport','아스마라 국제공항','Eritrea','에리트레아','중동아프리카',null,null,'Asmara','아스마라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1021,'Bole Airport','보울 공항','Ethiopia','이디오피아','중동아프리카',null,null,'Addis Ababa','아디스아바바');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1022,'Leon M''ba Airport','레온 음바 공항','Gabon','가봉','중동아프리카',null,null,'Libreville','리브르빌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1023,'Yundum International Airport','반줄 국제공항','Gambia','잠비아','중동아프리카',null,null,'Banjul','반줄');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1024,'Kotoka Airport','코타카 공항','Ghana','가나','중동,아프리카',null,null,'Accra','아크라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1025,'Conakry International Airport  ( Gbessia )','코나크리 국제공항 ( 그벳시아 )','Guinea','기니','중동아프리카',null,null,'Conakry','코나크리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1026,'Imam Khomeini International Airport','아맘 호메이티 국제공항','Iran','이란','중동아프리카',null,null,'Tehran','테헤란');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1027,'Mehrabad International Airport','메드라밧 국제공항','Iran','이란','중동아프리카',null,null,'Tehran','테헤란');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1028,'Baghdad International Airport ((formerly Saddam International /ORBS )','바그다드 국제공항 (구> 사담국제공항)','Iraq','이라크','중동아프리카',null,null,'Baghdad','바그다드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1029,'Ben Gurion International Airport','반구리온 국제공항','Israel','이스라엘','중동아프리카',null,null,'Tel Aviv Yafo / Tel Aviv','텔아비브야포 /텔아비브');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1030,'Eliat Airport ( J Hozman ) (Elat Airport)','엘라트 공항  ( J. 호즈만 )','Israel','이스라엘','중동아프리카',null,null,'Elat (Eiliat)','엘라트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1031,'Ovda Airport','오브다 공항','Israel','이스라엘','중동아프리카',null,null,'Elat','엘라트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1032,'Sde Dov Airport (Dov Hoz Airport)','시드 도브 공항 (도브 호즈 공항)','Israel','이스라엘','중동아프리카',null,null,'Tel Aviv Yafo','탤아비브 욥바');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1033,'Amman Civil - Marka Airport ( King Abdullah Airbase )','암만 시빌 마르카 공항  ( 킹 압둘라 에어베이스 )','Jordan','요르단','중동아프리카',null,null,'Amman','암만');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1034,'King Hussein International Airport (Aquaba Airport)','킹 후세인 국제공항 (아카바 공항)','Jordan','요르단','중동,아프리카',null,null,'Aqaba','아카바');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1035,'Queen Alia International Airport','퀸 알리아 국제공항','Jordan','요르단','중동아프리카',null,null,'Amman','암만');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1036,'Jomo Kenyatta International Airport','조모 케냐타 국제공항','Kenya','케냐','중동아프리카',null,null,'Nairobi','나이로비');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1037,'Moi International Airport (Mombasa Airport)','모이 국제공항','Kenya','케냐','중동아프리카',null,null,'Mombasa','몸바사');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1038,'Kuwait International Airport','쿠웨이트 국제공항','Kuwait','쿠웨이트','중동아프리카',null,null,'Kuwait','쿠웨이트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1039,'Beirut International Airport ( Rafic Hariri International )','베이루트 국제공항  ( 라픽 하리니 )','Lebanon','레바논','중동,아프리카',null,null,'Beirut','베이루트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1040,'Moshoeshoe International Airport','모슈슈 국제공항','Lesotho','레소토','중동아프리카',null,null,'Maseru','마세루');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1041,'Roberts International Airport','로버츠 국제공항','Liberia','라이베리아','중동아프리카',null,null,'Monrovia','몬로비아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1042,'Benina International Airport','베니나 국제공항','Libya','리비아','중동아프리카',null,null,'Benghazi','벵가지');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1043,'Sebha Airport','세바 공항','Libya','리비아','중동아프리카',null,null,'Sebha','세바');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1044,'Tripoli International Airport','트리폴리 국제공항','Libya','리비아','중동아프리카',null,null,'Tripoli','트리폴리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1045,'Ivato International Airport','아바토 국제공항','Madagascar','마다가스카르','중동아프리카',null,null,'Antananarivo','안타나나리보');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1046,'Lilongwe International Airport (Kamuzu Int''l)','릴롱궤 ( 까무쥬 ) 국제공항','Malawi','말라위','중동아프리카',null,null,'Lilongwe','릴롱궤');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1047,'Senou Airport','세노우 공항','Mali','말리','중동아프리카',null,null,'Bamako','바마코');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1048,'Nouakchott International Airport','누악쇼트 국제공항','Mauritania','모리타니아','중동아프리카',null,null,'Nouakchott','누악쇼트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1049,'Sir Seewoosagur Ramgoolam International Airport ( Plaisance International )','서 씨우사구 람굴람 국제공항  ( 플레장스 국제공항 )','Mauritius','모리셔스','중동아프리카',null,null,'Mauritius','모리셔스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1050,'Al Massira Airport','알 마씨라 공항','Morocco','모로코','중동아프리카',null,null,'Agadir','아가디르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1051,'Boukhaif / Tanger Airport','뷰카이프 / 탕게르 공항','Morocco','모로코','중동아프리카',null,null,'Tanger','탕게르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1052,'Charif al Idrissi Airport','샤리프 알 잇드리시 공항','Morocco','모로코','중동아프리카',null,null,'Al Hoceima','알호세이마');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1053,'Les Angades Airport','레스 안가데스 공항','Morocco','모로코','중동아프리카',null,null,'Oujda','우지다');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1054,'Mogador Airport (Essaouira Airport)','모가도 공항 (에사우이라 공항)','Morocco','모로코','중동아프리카',null,null,'Essaouira','에사우이라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1055,'Mohamed V Airport','모하메드 V 공항','Morocco','모로코','중동아프리카',null,null,'Casablanca','카사블랑카');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1056,'Nador International Airport (formerly Taouima International) (formerly Al Aroui )','나도르 국제공항 (구> 타위마 국제공항, 알 아우리)','Morocco','모로코','중동아프리카',null,null,'Nador','나도르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1057,'Ouarzazate Airport','아우아자자테 공항','Morocco','모로코','중동아프리카',null,null,'Ouarzazate','아우아자자테');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1058,'Sais Airport (Fes Saiss Airport)','사이스 공항 (페스 사이스 공항)','Morocco','모로코','중동아프리카',null,null,'Fez (Fes)','페스 (페즈)');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1059,'Sale Airport ( First Royal Air Force Base )','살레 공항  ( 퍼스트 로얄 공군기지 )','Morocco','모로코','중동아프리카',null,null,'Rabat','라바트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1060,'Beira Airport','베이라 공항','Mozambique','모잠비크','중동아프리카',null,null,'Beira','베이라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1061,'Maputo International Airport','마푸토 국제공항','Mozambique','모잠비크','중동아프리카',null,null,'Maputo','마푸토');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1062,'Nampula Airport','남풀라 공항','Mozambique','모잠비크','중동아프리카',null,null,'Nampula','남풀라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1063,'Eros Airport','에로스 공항','Namibia','나미비아','중동아프리카',null,null,'Windhoek','빈트후크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1064,'Hosea Kutako International Airport','호세아 쿠타코 국제공항','Namibia','나미비아','중동,아프리카',null,null,'Windhoek','빈트후크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1065,'Diori Hamani International Airport','디오리 히머니 국제공항','Niger','니제르','중동아프리카',null,null,'Niamey','니아메');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1066,'Mallam Aminu Kano International Airport','말람 아미뉴 카노 국제공항','Nigeria','나이지리아','중동,아프리카',null,null,'Kano','카노');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1067,'Seeb International Airport','시이브 국제공항','Oman','오만','중동아프리카',null,null,'Muscat','무스카트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1068,'Allama Iqbal International Airport','알라마 익발 국제공항','Pakistan','파키스탄','중동아프리카',null,null,'Lahore','라호르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1069,'Benazir Bhutto International Airport (formerly Islamabad International)','베나지르 부토 국제공항 (구> 이슬라마바드)','Pakistan','파키스탄','중동아프리카',null,null,'Islamabad','이슬라마바드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1070,'Quaid-E-Azam International Airport ( Karachi International )','퀘이드 이 아잠 국제공항  ( 카라치 국제공항 )','Pakistan','파키스탄','중동아프리카',null,null,'Karachi','카라치');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1071,'Doha International Airport','도하 국제공항','Qatar','카타르','중동아프리카',null,null,'Doha','도하');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1072,'Maya Maya Airport','마야 마야 공항','Republic of the Congo','콩고','중동아프리카',null,null,'Brazzaville','브라자빌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1073,'Roland Garros Airport  ( formerly Gillot Airport)','롤런드 개로스 공항 (구> 질로 공항)','Reunion','리유니온','중동아프리카',null,null,'St. Denis De La Reunion','쌩드니드 라 레유니온');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1074,'Kigali International Airport ( formerly Gregoire Kayibanda )','키갈리 국제공항  ( 구> 그레고리 카이반다 )','Rwanda','르완다','중동,아프리카',null,null,'Kigali','키갈리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1075,'Salazar Airport (Sao Tome International Airport)','살라자르 (상투메) 국제공항','Sao Tome and Principe','상투메프린시페','중동아프리카',null,null,'Sao Tome','상투메');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1076,'al-Ahsa Domestic Airport','알 아샤 국내공항','Saudi Arabia','사우디아라비아','중동아프리카',null,null,'Al-Ahsa','알 아샤');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1077,'Arar Domestic Airport','아라 국내공항','Saudi Arabia','사우디아라비아','중동아프리카',null,null,'Arar ( Ar''ar )','아라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1078,'King Abdul Aziz International Airport','킹 압둘아지즈 국제공항','Saudi Arabia','사우디아라비아','중동아프리카',null,null,'Jeddah','제다');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1079,'King Fahad International Airport','킹 파야드 국제공항','Saudi Arabia','사우디아라비아','중동,아프리카',null,null,'Dammam','다맘');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1080,'King Khalid International Airport','킹 칼리드 국제공항','Saudi Arabia','사우디아라비아','중동아프리카',null,null,'Riyadh','리야드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1081,'Prince Mohammad Bin Abdulaziz International Airport (Prince Mohammad Airport ) Prince Mohammed Airport ','모하메드 빈 압둘지즈 공항','Saudi Arabia','사우디아라비아','중동아프리카',null,null,'Madinah','마디나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1082,'Leopold Sedar Senghor Airport','레오로드 세다르 셍고르 공항','Senegal','세네갈','중동아프리카',null,null,'Dakar','다카르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1083,'Praslin Island Airport  (Iles des Palmes Airport)','프라슬린 아일랜드 공항 (일데 팔메스 공항)','Seychelles','세이셸','중동아프리카',null,null,'Grand Anse / Praslin Island','그랑 앙세 / 프라슬린');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1084,'Seychelles International Airport','세이셸 국제공항','Seychelles','세이셸','중동아프리카',null,null,'Mahe Island','머');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1085,'Lungi International Airport','런자이 국제공항','Sierra Leone','시에라리온','중동아프리카',null,null,'Freetown','프리타운');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1086,'Mogadishu International Airport','모가디슈 국제공항','Somalia','소말리아','중동아프리카',null,null,'Mogadishu','모가디슈');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1087,'Bloemfontein International Airport','블룸폰테인 국제공항','South Africa','남아프리카','중동아프리카',null,null,'Bloemfontein','블룸폰테인');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1088,'Cape Town International Airport','케이프타운 국제공항','South Africa','남아프리카','중동아프리카',null,null,'Cape Town','케이프타운');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1089,'King Shaka International Airport(La Mercy Airport )','킹샤카 국제공항 (라머시 국제공항)','South Africa','남아프리카','중동아프리카',null,null,'Durban / La Mercy','더반 . 라 머시');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1090,'East London Airport','이스트런던 공항','South Africa','남아프리카','중동아프리카',null,null,'East London','이스트런던');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1091,'George Airport','죠지 공항','South Africa','남아프리카','중동아프리카',null,null,'George','죠지');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1092,'Kimberley Airport','킴벌리 공항','South Africa','남아프리카','중동아프리카',null,null,'Kimberley','킴벌리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1093,'OR Tambo International Airport ( Johannesburg International )','OR 탐보 국제공항 (구> 요하네스버그 국제공항)','South Africa','남아프리카','중동아프리카',null,null,'Johannesburg','요하네스버그');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1094,'Port Elizabeth Airport','포트엘리자베스 공항','South Africa','남아프리카','중동아프리카',null,null,'Port Elizabeth','포트엘리자베스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1095,'Upington Airport','우핑턴 공항','South Africa','남아프리카','중동아프리카',null,null,'Upington','우핑턴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1096,'Khartoum Civil Airport','하르툼 시빌 공항','Sudan','수단','중동아프리카',null,null,'Khartoum','하르툼');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1097,'Matsapha International Airport','매츠파 국제공항','Swaziland','스와질란드','중동아프리카',null,null,'Manzini','만지니');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1098,'Damascus International Airport','다마스쿠스 국제공항','Syria','시리아','중동아프리카',null,null,'Damascus','다마스쿠스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1099,'Arusha Airport','아루샤 공항','Tanzania','탄자니아','중동아프리카',null,null,'Arusha','아루샤');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1100,'Dar Es Salaam International Airport','다르에스살람 국제공항','Tanzania','탄자니아','중동아프리카',null,null,'Dar Es Salaam','다르에스살람');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1101,'Kilimanjaro International Airport ( Duke Field )','킬리만자로 국제공항  ( 듀크 필드 )','Tanzania','탄자니아','중동아프리카',null,null,'Mount Kilimanjaro','마운트킬리만자로');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1102,'Kisauni Airport','키자우니 공항','Tanzania','탄자니아','중동아프리카',null,null,'Zanzibar','잔지바르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1103,'Mwanza Airport','므완자 공항','Tanzania','탄자니아','중동아프리카',null,null,'Mwanza','므완자');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1104,'Lome-Tokoin Airport','로메 토쿠완 공항','Togo','토고','중동아프리카',null,null,'Lome','로메');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1105,'El Maou Airport','엘 마오우 공항','Tunisia','튀니지','중동아프리카',null,null,'Sfax','스팍스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1106,'Habib Bourguiba International Airport','후비브 부르기바 국제공항','Tunisia','튀니지','중동아프리카',null,null,'Monastir','모나스티르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1107,'Melita Airport','멀리타 공항','Tunisia','튀니지','중동아프리카',null,null,'Djerba','드제르바');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1108,'Nefta Airport','네플라 공항','Tunisia','튀니지','중동아프리카',null,null,'Tozeur','토즈어');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1109,'Tunis-Carthage International Airport','튀니스 카르타쥐 국제공항','Tunisia','튀니지','중동아프리카',null,null,'Tunis','튀니스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1110,'Entebbe International Airport','엔테베 / 캄팔라 국제공항','Uganda','우간다','중동아프리카',null,null,'Entebbe','엔테베');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1111,'Abu Dhabi International Airport','아부다비 국제공항','United Arab Emirates','아랍에미레이트','중동아프리카',null,null,'Abu Dhabi','아부다비');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1112,'Al-Fujairah International Airport','알푸자이라 국제공항','United Arab Emirates','아랍에미레이트','중동아프리카',null,null,'Al-Fujairah','알푸자이라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1113,'Dubai International Airport','두바이 국제공항','United Arab Emirates','아랍에미레이트','중동,아프리카',null,null,'Dubai','두바이');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1114,'Ras Al Khaimah International Airport','라스알카이마 국제공항','United Arab Emirates','아랍에미레이트','중동아프리카',null,null,'Ras Al Khaimah','라스알카이마');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1115,'Al Maktoum International Airport','알 막튬 국제공항','United Arab Emirates','아랍에미레이트','중동아프리카',null,null,'Dubai','두바이');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1116,'Sharjah International Airport','샤르자 /샤져 국제공항','United Arab Emirates','아랍에미레이트','중동아프리카',null,null,'Sharjah','샤르자');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1117,'Hassan Airport (El Aaiun Airport)','하산 공항','Western Sahara','서사하라','중동아프리카',null,null,'Laayoune (El Aiune)','라아유네');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1118,'Aden International Airport','아덴 국제공항','Yemen','예멘','중동아프리카',null,null,'Aden','아덴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1119,'Al Janad Airport ( Ganed )','알 자나드 공항  ( 가네드 )','Yemen','예멘','중동아프리카',null,null,'Taiz','타이즈');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (1120,'Hodeida International Airport','호데이다 국제공항','Yemen','예멘','중동아프리카',null,null,'Hodeidah','호데이다');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (796,'Seattle Tacoma International Airport','시애틀 타코마 국제공항','United States','미국','북미캐나다','Washington','워싱턴','Seattle','시애틀');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (797,'Shenandoah Valley Airport','쉐넌도허 밸리 공항','United States','미국','북미캐나다','Virginia','버지니아','Staunton','스턴튼');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (798,'Shreveport Regional Airport','슈리브포트 공항','United States','미국','북미캐나다','Louisiana','루이지애나','Shreveport','슈리브포트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (799,'Sioux Falls Regional Airport (Joe Foss Field)','수폴스 지역공항 (조 포씨 필드)','United States','미국','북미캐나다','South Dakota','사우스다코타','Sioux Falls','수폴스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (800,'Sioux Gateway Airport','슈 게이트웨이 공항','United States','미국','북미캐나다','Iowa','아이오와','Sioux City','수시티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (801,'Sloulin Field International Airport','슬루렌 국제공항','United States','미국','북미캐나다','North Dakota','노스다코타','Williston','윌리스턴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (802,'Sonoma County Airport','새노마 카운티 공항','United States','미국','북미캐나다','California','캘리포니아','Santa Rosa','산타로사');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (803,'South Bend Regional Airport','사우스벤드 공항','United States','미국','북미','Indiana','인디애나','South Bend','사우스벤드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (804,'Southern Illinois Airport','서던 일리노이스 공항','United States','미국','북미캐나다','Illinois','일리노이','Carbondale','카번데일');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (805,'Southern Wisconsin Regional Airport','서던 위스콘신 지역공항','United States','미국','북미캐나다','Wisconsin','위스콘신','Janesville','제인스빌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (806,'Southwest Florida Regional Airport','사우스웨스트 플로리다 지역공항','United States','미국','북미캐나다','Florida','플로리다','Fort Myers','포트마이어스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (807,'Southwest Georgia Regional Airport','사우스웨스트 조지아 공항','United States','미국','북미캐나다','Georgia','조지아','Albany','올버니');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (808,'Spencer Municipal Airport','스펜서 시공항','United States','미국','북미캐나다','Iowa','아이오와','Spencer','스펜서');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (809,'Spokane International Airport','스포캔 국제공항','United States','미국','북미캐나다','Washington','워싱턴','Spokane','스포캔');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (810,'Springfield-Branson National Airport','스프링필드 브랜슨 공항','United States','미국','북미캐나다','Missouri','미주리','Springfield','스프링필드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (811,'St Cloud Municipal Airport','세인트 클라우드 시공항','United States','미국','북미캐나다','Minnesota','미네소타','St Cloud','세인트 클라우드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (812,'St. Lucie County International Airport','세인트 루시 카운티 국제공항','United States','미국','북미캐나다','Florida','플로리다','Fort Pierce','포트피어스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (813,'Stallings Field Airport','스톨링즈 필드 공항','United States','미국','북미캐나다','North Carolina','노스캐롤라이나','Kinston','킹스턴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (814,'Standiford Field Airport (Louisville International)','스탠디포드 필드 공항 (루이스빌 국제공항)','United States','미국','북미캐나다','Kentucky','켄터키','Louisville','루이스빌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (815,'Stefan Memorial Airport','칼 스테픈 미모리얼 공항','United States','미국','북미캐나다','Nebraska','네브래스카','Norfolk / Omaha','노퍽 / 오마하');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (816,'Stewart Airport','스튜어트 공항','United States','미국','북미캐나다','New York','뉴욕','Newburgh','뉴버그');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (817,'Stinson Municipal Airport','스틴슨 시공항','United States','미국','북미캐나다','Texas','텍사스','San Antonio','샌안토니오');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (818,'Sugar Land Municipal Airport','슈거 랜드 시공항','United States','미국','북미캐나다','Texas','텍사스','Houston','휴스턴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (819,'Tallahassee Regional Airport','탤러해시 지역공항','United States','미국','북미캐나다','Florida','플로리다','Tallahassee','탤러해시');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (820,'Tampa International Airport','탬파 국제공항','United States','미국','북미캐나다','Florida','플로리다','Tampa','탬파');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (821,'Ted Stevens International Airport (Anchorage International)','테드 스티븐스 국제공항 (앵커리지 국제공항)','United States','미국','북미캐나다','Alaska','알래스카','Anchorage','앵커리지');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (822,'The Eastern Iowa Airport (Cedar Rapids Airport)','이스턴 아이오와 공항 (시더 래피즈 공항)','United States','미국','북미캐나다','Iowa','아이오와','Cedar Rapids','세다르라피즈');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (823,'Thomasville Airport','토마스빌 공항','United States','미국','북미캐나다','Georgia','조지아','Moultrie','몰트리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (824,'Toledo Express Airport','톨레도 익스프레스 공항','United States','미국','북미캐나다','Ohio','오하이오','Toledo','톨레도');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (825,'Tompkins County Airport','톰킨스 카운티 공항','United States','미국','북미캐나다','New York','뉴욕','Ithaca','이타카');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (826,'Tri-Cities Airport','트라이시티즈 공항','United States','미국','북미캐나다','Washington','워싱턴','Pasco','패스코');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (827,'Tri-Cities Regional Airport','트라이시티 지역공항','United States','미국','북미캐나다','Tennessee','테네시','Tri-Cities','트라이시티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (828,'Tucson International Airport','투손 국제공항','United States','미국','북미캐나다','Arizona','애리조나','Tucson','투손');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (829,'Tulsa International Airport','털사 국제공항','United States','미국','북미캐나다','Oklahoma','오클라호마','Tulsa','털사');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (830,'University - Oxford Airport','유니버시티 옥스퍼드  공항','United States','미국','북미캐나다','Mississippi','미시시피','Oxford','옥스퍼드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (831,'Valley International Airport','밸리 국제공항','United States','미국','북미캐나다','Texas','텍사스','Harlingen','할린전');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (832,'Vermilion County Airport','버밀런 카운티 공항','United States','미국','북미캐나다','Illinois','일리노이','Danville','댄빌');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (833,'Victoria Regional Airport','빅토리아 지역공항','United States','미국','북미캐나다','Texas','텍사스','Victoria','빅토리아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (834,'W.K. Kellogg Regional Airport','W.K. 켈로그 지역공항','United States','미국','북미캐나다','Michigan','미시간','Battle Creek','배틀크리크');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (835,'Waco Regional Airport','웨이코 지역공항','United States','미국','북미','Texas','텍사스','Waco','웨이코');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (836,'Walker Field Airport','워커 필드 공항','United States','미국','북미캐나다','Colorado','콜로라도','Grand Junction','그랜드정크션');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (837,'Floyd Bennett Memorial Airport (formerly Warren County Airport) ','플로이드 베넷 미모리얼 공항','United States','미국','북미캐나다','New York','뉴욕','Glen Falls','글렌폴스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (838,'Wausau Downtown Airport','와소 다운타운 공항','United States','미국','북미캐나다','Wisconsin','위스콘신','Wausau','와소');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (839,'Westchester County Airport','웨스트체스터 카운티 공항','United States','미국','북미캐나다','New York','뉴욕','White Plains','화이트 플레인');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (840,'Western Nebraska Regional Airport (William B. Heilig Field)','웨스턴 네브라스카 지역공항 (윌리힝 B. 힐링 필드)','United States','미국','북미캐나다','Nebraska','네브래스카','Scottsbluff','스코츠블러프');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (841,'Westmoreland County Airport','웨스모어랜드 카운티 공항','United States','미국','북미캐나다','Pennsylvania','펜실베이니아','Latrobe','라트로브');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (842,'Wichita Mid-Continent Airport','위치토 미드 컨티넌트 공항','United States','미국','북미캐나다','Kansas','캔자스','Wichita','위치토');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (843,'Wilkes-Barre / Scranton International Airport','윌크스배러 스크랜튼 국제공항','United States','미국','북미캐나다','Pennsylvania','펜실베이니아','Avoca','아보카');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (844,'Will Rogers World Airport','윌 로저스 월드 공항','United States','미국','북미캐나다','Oklahoma','오클라호마','Oklahoma City','오클라호마시티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (845,'William R. Fairchild International Airport','윌리암 R. 페어차일드 국제공항','United States','미국','북미캐나다','Washington','워싱턴','Port Angeles','포트엔젤레스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (846,'Wilmington International Airport (formerly New Hanover County Airport)','월밍턴 국제공항 (구>뉴 하노버 카운티 공항)','United States','미국','북미캐나다','North Carolina','노스캐롤라이나','Wilmington','윌밍턴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (847,'Wyoming Valle Airport','와이오밍 발레 공항','United States','미국','북미캐나다','Pennsylvania','펜실베이니아','Wilkes-Barre','윌크스배러');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (848,'Yakima Air Terminal (McAllister Field)','얘키모 에어터미널 (맥칼리스터 필드)','United States','미국','북미캐나다','Washington','워싱턴','Yakima','얘키모');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (849,'Yeager Airport','예이거 공항','United States','미국','북미캐나다','West Virginia','웨스트버지니아','Charleston','찰스턴');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (850,'Yuma International Airport / Yuma Marine Corps Air Station','유마 국제공항 (유마 해병기지)','United States','미국','북미캐나다','Arizona','애리조나','Yuma','유마');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (851,'Wallblake Airport','월블레이크 공항','Anguilla','앵귈라','중남미',null,null,'The Valley','더밸리');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (852,'V.C Bird International Airport','V.C 버드 국제공항','Antigua and Barbuda','앤티가 바부다','중남미',null,null,'St.Johns, Antigua','세인트존, 안티과');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (853,'Aeroparque Jorge Newbery Airport','아에르파크 호르헤 뉴베리 공항','Argentina','아르헨티나','중남미','Buenos Aires','부에노스아이레스','Buenos Aires','부에노스아이레스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (854,'General Martin Miguel de Guemes Airport (formely General Belgrano Airport)','제너럴 마틴 미구엘 드 게메즈 공항 (구>제너널 벨그라노 공항)','Argentina','아르헨티나','중남미','Salta','살타','Salta','살타');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (855,'Ministro Pistarini Airport (Ezeiza International)','미니스트로 피스타리니 공항 (에제이자 국제공항)','Argentina','아르헨티나','중남미','Buenos Aires','부에노스아이레스','Buenos Aires','부에노스아이레스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (856,'Resistencia International Airport','레시스텐시아 국제공항','Argentina','아르헨티나','중남미','Chaco','차코','Resistencia','레시스텐시아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (857,'Queen Beatrix International Airport (Reina Beatrix Airport)','레이나 비트릭스 공항','Aruba','아루바','중남미',null,null,'Oranjestad','오란제스타드');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (858,'Estate Airport','에스테이트 공항','Bahamas','바하마','중남미',null,null,'Stella Maris','스텔라마리스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (859,'Exuma International Airport','익졈마 국제공항','Bahamas','바하마','중남미',null,null,'George Town','조지타운');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (860,'Grand Bahama International Airport','그랜드 바하마 국제공항','Bahamas','바하마','중남미',null,null,'Freeport','프리포트');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (861,'Nassau International Airport','나사우 국제공항','Bahamas','바하마','중남미',null,null,'Nassau','나사우');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (862,'Grantley Adams International Airport','그랜틀리 아담스 국제공항','Barbados','바베이도스','중남미',null,null,'Barbados','바베이도스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (863,'Philip S.W. Goldson International Airport ( Belize International )','필립 S.W. 골드선 국제공항  ( 벨리즈 국제공항 )','Belize','벨리즈','중남미',null,null,'Belize','벨리즈 시티');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (864,'L. F. Wade International Airport (formerly Bermuda International Airport)','엘에프 웨이드 국제공항 (구>버뮤다 국제공항)','Bermuda','버뮤다','중남미',null,null,'Bermuda','버뮤다 제도');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (865,'El Alto Airport','엘 알토 공항','Bolivia','볼리비아','중남미',null,null,'La Paz','라파스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (866,'J. Wilsterman Airport','J. 윌스트먼 공항','Bolivia','볼리비아','중남미',null,null,'Cochabamba','코차밤바');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (867,'Viru Viru International Airport','비루 비루 국제공항','Bolivia','볼리비아','중남미',null,null,'Santa Cruz','산타크루스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (868,'Aeroporto Internacional de Foz do Iguacu','이과수폭포 공항','Brazil','브라질','중남미','Parana','파라나','Iguassu Falls','이과수폭포');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (869,'Afonso Pena Airport','아폰소 페냐 공항','Brazil','브라질','중남미','Parana','파라나','Curitiba','쿠리티바');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (870,'Altamira Airport','알타미라 공항','Brazil','브라질','중남미','Para','파라','Altamira','알타미라');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (871,'Augusto Severo Airport','아우구스토 세베로 공항','Brazil','브라질','중남미','Rio Grande do Norte','리우그란데두노르테','Natal','나탈');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (872,'Belmonte Airport','벨몬테 공항','Brazil','브라질','중남미','Rondonia','론도니아','Porto Velho','포르토벨로');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (873,'Brasilia International Airport','브라질리아 국제공항','Brazil','브라질','중남미','Dlstrito Federal','디스트리토 페데립','Brasilia','브라질리아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (874,'Campo de Marte Airport','캄포 데 마르테 공항','Brazil','브라질','중남미','Sao Paulo','상파울루 /상파울로','Sao Paulo','상파울루');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (875,'Campo Grande International Airport','캄푸그란데 국제공항','Brazil','브라질','중남미','Mato Grosso do Sul','마투그로수두술','Campo Grande','캄푸그란데');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (876,'Castro Pinto Airport','카스트로 핀토 공항','Brazil','브라질','중남미','Paraiba','파라이바','Joao Pessoa','주앙페소아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (877,'Congonhas Airport','콩곤하스 공항','Brazil','브라질','중남미','Sao Paulo','상파울루','Sao Paulo','상파울루');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (878,'Corumba International Airport','코룸바 국제공항','Brazil','브라질','중남미','Mato Grosso do Sul','마투그로수두술','Corumba','코룸바');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (879,'Eduardo Gomes Airport','에두와르토 고메즈 공항','Brazil','브라질','중남미','Para','파라','Santarem','산타렘');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (880,'Eduardo Gomes International Airport ((Brigadeiro Eduardo Gomes-Manaus International Airport)','에두와르토 고메즈 국제공항','Brazil','브라질','중남미','Amazonas','아마조네스','Manaus','마나우스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (881,'Eurico Sales Airport','에우리코 살레즈 공항','Brazil','브라질','중남미','Espirito Santo','에스피리토산토','Vitoria','비토리아');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (882,'Guararapes International Airport','과하라페즈 국제공항 (질베트투 프레이리 국제공항)','Brazil','브라질','중남미','Pemambuco','뻬만부쵸','Recife','레시페');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (883,'Guarulhos International Airport','과룰하스 국제공항','Brazil','브라질','중남미','Sao Paulo','상파울루','Sao Paulo','상파울루');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (884,'Hercilio Luz Airport','헤르칠리오 후즈 공항','Brazil','브라질','중남미','Santa Catarina','산타카타리나','Florianopolis','플로리아노폴리스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (885,'Ilheus Jorge Amado Airport','일에우스  호르헤 아마도 공항','Brazil','브라질','중남미','Bahia	','바이아','Ilheus','일에우스');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (886,'Londrina Airport','론드리나 공항','Brazil','브라질','중남미','Parana','파라나','Londrina','론드리나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (887,'Luis E. Magalhaes Airport','루이즈 E. 마갈헤즈 공항','Brazil','브라질','중남미','Bahia','바이아','Salvador','살바도르');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (888,'Macapa Internacional Airport','마카파 국제공항','Brazil','브라질','중남미','Amapa','아마빠','Macapa','마카파');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (889,'Mal. Cunha Machado Airport','말 쿤하 마체이도 공항','Brazil','브라질','중남미','Maranhao','마란하우','Sao Luiz','상루이즈');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (890,'Marechal Rondon Airport','마레첼 론돈 공항','Brazil','브라질','중남미','Mato Grosso','마투그로수','Cuiaba','쿠이아 바');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (891,'Palmares Airport','팔마레즈 공항','Brazil','브라질','중남미','Alagoas','알라고아스','Maceio','마세이오');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (892,'Pampulha Airport','팜풀하 공항','Brazil','브라질','중남미','Minas Gerais','미나스제라이스','Belo Horizonte','벨로리존테');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (893,'Petrolina Internacional Airport','페트롤리나 국제공항','Brazil','브라질','중남미','Pemambuco','뻬만부쵸','Petrolina','페트롤리나');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (894,'Pinto Martins Airport','핀토 마틴 공항','Brazil','브라질','중남미','Ceara','쎄아라','Fortaleza','포르탈레자');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (895,'Presidente Medici Airport','프레지덴테 메디치 공항','Brazil','브라질','중남미','Acre','아크레','Rio Branco','리우브랑쿠');
Insert into HCI.AIRPORT_INFO (AIRPORT_NUM,NAME_EN,NAME_KR,COUNTRY_EN,COUNTRY_KR,LOCATION,STATE_EN,STATE_KR,CITY_EN,CITY_KR) values (896,'Rio de Janeiro International Airport (Galeao - Antonio Carlos Jobim)','리우데자네이루 국제공항 (갈랴오 안토니오 카를로스 조빔)','Brazil','브라질','중남미','Rio de Janeiro','리우데자네이루','Rio De Janeiro','리우데자네이루');
REM INSERTING into HCI.MEMBER
SET DEFINE OFF;
Insert into HCI.MEMBER (MEM_NUM,MEM_ID,MEM_PASSWD,MEM_NAME,MEM_BIRTH,MEM_PHONE,MEM_PICTURE,MEM_EMAIL_CK,MEM_PHONE_CK,MEM_CASE,MEM_PASSPIC) values (141,'mejune1009@hanmail.net','b#Y"%#','sequence',to_date('97/01/01','RR/MM/DD'),null,'img/images.png','N','N','DURING',null);
Insert into HCI.MEMBER (MEM_NUM,MEM_ID,MEM_PASSWD,MEM_NAME,MEM_BIRTH,MEM_PHONE,MEM_PICTURE,MEM_EMAIL_CK,MEM_PHONE_CK,MEM_CASE,MEM_PASSPIC) values (181,'aa','쐬_?@租u','aa',to_date('10/02/02','RR/MM/DD'),null,'img/images.png','N','N','DURING',null);
Insert into HCI.MEMBER (MEM_NUM,MEM_ID,MEM_PASSWD,MEM_NAME,MEM_BIRTH,MEM_PHONE,MEM_PICTURE,MEM_EMAIL_CK,MEM_PHONE_CK,MEM_CASE,MEM_PASSPIC) values (206,'aaa@naver.com','b#Y"%#','???',to_date('96/10/10','RR/MM/DD'),null,'img/images.png','N','N','DURING',null);
Insert into HCI.MEMBER (MEM_NUM,MEM_ID,MEM_PASSWD,MEM_NAME,MEM_BIRTH,MEM_PHONE,MEM_PICTURE,MEM_EMAIL_CK,MEM_PHONE_CK,MEM_CASE,MEM_PASSPIC) values (208,'aaa@naver.com','b#Y"%#','???',to_date('96/10/10','RR/MM/DD'),null,'img/images.png','N','N','DURING',null);
Insert into HCI.MEMBER (MEM_NUM,MEM_ID,MEM_PASSWD,MEM_NAME,MEM_BIRTH,MEM_PHONE,MEM_PICTURE,MEM_EMAIL_CK,MEM_PHONE_CK,MEM_CASE,MEM_PASSPIC) values (5,'mejune1004@hanmail.net','b#Y"%#','안준',to_date('91/08/09','RR/MM/DD'),'01040285125','images.png','Y','Y','DURING',null);
Insert into HCI.MEMBER (MEM_NUM,MEM_ID,MEM_PASSWD,MEM_NAME,MEM_BIRTH,MEM_PHONE,MEM_PICTURE,MEM_EMAIL_CK,MEM_PHONE_CK,MEM_CASE,MEM_PASSPIC) values (7,'gkdldy5@naver.com','b#Y"%#','소명섭',to_date('88/03/30','RR/MM/DD'),null,'images.png','N','N','DURING',null);
Insert into HCI.MEMBER (MEM_NUM,MEM_ID,MEM_PASSWD,MEM_NAME,MEM_BIRTH,MEM_PHONE,MEM_PICTURE,MEM_EMAIL_CK,MEM_PHONE_CK,MEM_CASE,MEM_PASSPIC) values (121,'yhy3587@gmail.com','???3','i？¤i？？i？？',to_date('92/02/28','RR/MM/DD'),null,'img/images.png','N','N','DURING',null);
Insert into HCI.MEMBER (MEM_NUM,MEM_ID,MEM_PASSWD,MEM_NAME,MEM_BIRTH,MEM_PHONE,MEM_PICTURE,MEM_EMAIL_CK,MEM_PHONE_CK,MEM_CASE,MEM_PASSPIC) values (161,'1@11.com','?繃??-덿|?<','1',to_date('97/01/01','RR/MM/DD'),null,'img/images.png','N','N','DURING',null);
Insert into HCI.MEMBER (MEM_NUM,MEM_ID,MEM_PASSWD,MEM_NAME,MEM_BIRTH,MEM_PHONE,MEM_PICTURE,MEM_EMAIL_CK,MEM_PHONE_CK,MEM_CASE,MEM_PASSPIC) values (204,'abc@naver.com','b#Y"%#','???',to_date('79/03/05','RR/MM/DD'),null,'img/images.png','N','N','DURING',null);
Insert into HCI.MEMBER (MEM_NUM,MEM_ID,MEM_PASSWD,MEM_NAME,MEM_BIRTH,MEM_PHONE,MEM_PICTURE,MEM_EMAIL_CK,MEM_PHONE_CK,MEM_CASE,MEM_PASSPIC) values (209,'mind112@naver.com','b#Y"%#','???',to_date('92/10/10','RR/MM/DD'),null,'img/images.png','N','N','DURING',null);
Insert into HCI.MEMBER (MEM_NUM,MEM_ID,MEM_PASSWD,MEM_NAME,MEM_BIRTH,MEM_PHONE,MEM_PICTURE,MEM_EMAIL_CK,MEM_PHONE_CK,MEM_CASE,MEM_PASSPIC) values (3,'mind111@naver.com','b#Y"%#','윤현영',to_date('92/02/28','RR/MM/DD'),null,'images.png','Y','N','DURING',null);
Insert into HCI.MEMBER (MEM_NUM,MEM_ID,MEM_PASSWD,MEM_NAME,MEM_BIRTH,MEM_PHONE,MEM_PICTURE,MEM_EMAIL_CK,MEM_PHONE_CK,MEM_CASE,MEM_PASSPIC) values (182,'bbb','}嬖j.sY','bbb',to_date('10/05/05','RR/MM/DD'),null,'img/images.png','N','N','DURING',null);
REM INSERTING into HCI.NOTIFY
SET DEFINE OFF;
REM INSERTING into HCI.REVIEW
SET DEFINE OFF;
Insert into HCI.REVIEW (REVIEW_NUM,REVIEW_CONTENT,REVIEW_STAR,REVIEW_REQ_NUM,REVIEW_GUI_NUM,REVIEW_SCB_NUM,REVIEW_WDATE) values (39,'감사합니다 소명섭님',4.5,3,7,213,to_date('16/10/19','RR/MM/DD'));
REM INSERTING into HCI.SCHEDULE_BOARD
SET DEFINE OFF;
Insert into HCI.SCHEDULE_BOARD (SCB_NUM,SCB_TITLE,SCB_MEM_NUM,SCB_FROM,SCB_VIA,SCB_TO,SCB_SDATE,SCB_CONTENT,SCB_WDATE,SCB_CASE,SCB_MEDIATE) values (221,'Sequence체크',5,1,'1',667,to_date('16/10/30','RR/MM/DD'),'Sequence체킹Test',to_date('16/10/28','RR/MM/DD'),'DURING','N');
Insert into HCI.SCHEDULE_BOARD (SCB_NUM,SCB_TITLE,SCB_MEM_NUM,SCB_FROM,SCB_VIA,SCB_TO,SCB_SDATE,SCB_CONTENT,SCB_WDATE,SCB_CASE,SCB_MEDIATE) values (242,'같이 동행하실분 구해요',3,1,'5',674,to_date('16/11/16','RR/MM/DD'),'5번 경유지만 괜찮아요 죽지 않아요',to_date('16/11/07','RR/MM/DD'),'WAIT','N');
Insert into HCI.SCHEDULE_BOARD (SCB_NUM,SCB_TITLE,SCB_MEM_NUM,SCB_FROM,SCB_VIA,SCB_TO,SCB_SDATE,SCB_CONTENT,SCB_WDATE,SCB_CASE,SCB_MEDIATE) values (241,'같이 가실분 구해요',3,1,'5',674,to_date('16/11/16','RR/MM/DD'),'어서어서 신청하세요',to_date('16/11/07','RR/MM/DD'),'WAIT','N');
Insert into HCI.SCHEDULE_BOARD (SCB_NUM,SCB_TITLE,SCB_MEM_NUM,SCB_FROM,SCB_VIA,SCB_TO,SCB_SDATE,SCB_CONTENT,SCB_WDATE,SCB_CASE,SCB_MEDIATE) values (243,'같이 동행하실분 구해요',3,1,'5',674,to_date('16/11/16','RR/MM/DD'),'ㅎㅎ',to_date('16/11/07','RR/MM/DD'),'WAIT','N');
Insert into HCI.SCHEDULE_BOARD (SCB_NUM,SCB_TITLE,SCB_MEM_NUM,SCB_FROM,SCB_VIA,SCB_TO,SCB_SDATE,SCB_CONTENT,SCB_WDATE,SCB_CASE,SCB_MEDIATE) values (246,'마지막 동행 요청 글입니다.',3,1,'1',674,to_date('16/11/25','RR/MM/DD'),'함께해요!',to_date('16/11/07','RR/MM/DD'),'CONFIRM','N');
Insert into HCI.SCHEDULE_BOARD (SCB_NUM,SCB_TITLE,SCB_MEM_NUM,SCB_FROM,SCB_VIA,SCB_TO,SCB_SDATE,SCB_CONTENT,SCB_WDATE,SCB_CASE,SCB_MEDIATE) values (212,'인천에서 미국까지',7,1,'2',743,to_date('16/11/17','RR/MM/DD'),'오랜 비행이지만 즐겁게',to_date('16/10/10','RR/MM/DD'),'DURING','N');
Insert into HCI.SCHEDULE_BOARD (SCB_NUM,SCB_TITLE,SCB_MEM_NUM,SCB_FROM,SCB_VIA,SCB_TO,SCB_SDATE,SCB_CONTENT,SCB_WDATE,SCB_CASE,SCB_MEDIATE) values (213,'심심하지 않도록',7,1,'1',651,to_date('16/11/09','RR/MM/DD'),'말동무가 되어드리겠습니다',to_date('16/10/10','RR/MM/DD'),'CONFIRM','N');
Insert into HCI.SCHEDULE_BOARD (SCB_NUM,SCB_TITLE,SCB_MEM_NUM,SCB_FROM,SCB_VIA,SCB_TO,SCB_SDATE,SCB_CONTENT,SCB_WDATE,SCB_CASE,SCB_MEDIATE) values (207,'미국 가시는분?',3,1,'2',661,to_date('16/10/19','RR/MM/DD'),'안전하게 모셔드립니다.',to_date('16/10/10','RR/MM/DD'),'CONFIRM','N');
Insert into HCI.SCHEDULE_BOARD (SCB_NUM,SCB_TITLE,SCB_MEM_NUM,SCB_FROM,SCB_VIA,SCB_TO,SCB_SDATE,SCB_CONTENT,SCB_WDATE,SCB_CASE,SCB_MEDIATE) values (208,'안전한 동행을 보장드립니다!',3,1,'0',669,to_date('16/10/29','RR/MM/DD'),'냉무',to_date('16/10/10','RR/MM/DD'),'CONFIRM','N');
Insert into HCI.SCHEDULE_BOARD (SCB_NUM,SCB_TITLE,SCB_MEM_NUM,SCB_FROM,SCB_VIA,SCB_TO,SCB_SDATE,SCB_CONTENT,SCB_WDATE,SCB_CASE,SCB_MEDIATE) values (209,'경유 2번이지만 심심하지 않도록!',3,1,'2',673,to_date('16/10/29','RR/MM/DD'),'최선을 다하겠습니다! 네 정말입니다!',to_date('16/10/10','RR/MM/DD'),'CONFIRM','N');
Insert into HCI.SCHEDULE_BOARD (SCB_NUM,SCB_TITLE,SCB_MEM_NUM,SCB_FROM,SCB_VIA,SCB_TO,SCB_SDATE,SCB_CONTENT,SCB_WDATE,SCB_CASE,SCB_MEDIATE) values (210,'안녕하세요 대학원생입니다.',3,1,'0',688,to_date('16/10/21','RR/MM/DD'),'네시 비행기입니다.',to_date('16/10/10','RR/MM/DD'),'CONFIRM','N');
Insert into HCI.SCHEDULE_BOARD (SCB_NUM,SCB_TITLE,SCB_MEM_NUM,SCB_FROM,SCB_VIA,SCB_TO,SCB_SDATE,SCB_CONTENT,SCB_WDATE,SCB_CASE,SCB_MEDIATE) values (244,'같이 동행하실분 구해요2',3,1,'5',674,to_date('16/11/18','RR/MM/DD'),'ㅎㅎ',to_date('16/11/07','RR/MM/DD'),'CONFIRM','N');
Insert into HCI.SCHEDULE_BOARD (SCB_NUM,SCB_TITLE,SCB_MEM_NUM,SCB_FROM,SCB_VIA,SCB_TO,SCB_SDATE,SCB_CONTENT,SCB_WDATE,SCB_CASE,SCB_MEDIATE) values (245,'동행 함께해요',3,1,'1',674,to_date('16/11/25','RR/MM/DD'),'한 번 경유 하는 일정입니다.',to_date('16/11/07','RR/MM/DD'),'CONFIRM','N');
Insert into HCI.SCHEDULE_BOARD (SCB_NUM,SCB_TITLE,SCB_MEM_NUM,SCB_FROM,SCB_VIA,SCB_TO,SCB_SDATE,SCB_CONTENT,SCB_WDATE,SCB_CASE,SCB_MEDIATE) values (205,'미국 유학생입니다!',3,1,'1',667,to_date('16/10/31','RR/MM/DD'),'2시 비행기입니다.',to_date('16/10/10','RR/MM/DD'),'DURING','N');
Insert into HCI.SCHEDULE_BOARD (SCB_NUM,SCB_TITLE,SCB_MEM_NUM,SCB_FROM,SCB_VIA,SCB_TO,SCB_SDATE,SCB_CONTENT,SCB_WDATE,SCB_CASE,SCB_MEDIATE) values (206,'잭슨 홀 공항으로 갑니다',3,1,'0',674,to_date('16/11/02','RR/MM/DD'),'오후 5시 비행기에요',to_date('16/10/10','RR/MM/DD'),'DURING','N');
REM INSERTING into HCI.TOKENS
SET DEFINE OFF;
Insert into HCI.TOKENS (TOKEN_NUM,TOKEN,TOKEN_MEM_NUM) values (21,'d4yt4Er3l5c:APA91bF9BllInwGssv2Z9JXXNZfDnUrVY2pkCLUroWpktqPB9qNOgN5U7RMUfLAzBo50VtLTy61RJ2An9yb6Vm_KyZv-KrvpJAGSqqkgjABlsdLhwGIWb-Z6y8JfslRsUZEM1maHobeH',5);
Insert into HCI.TOKENS (TOKEN_NUM,TOKEN,TOKEN_MEM_NUM) values (3,'fFFQ-fHuu_U:APA91bGaPw20ok0n-QwrodLnTzbqmwZ_2aTCYgv2kNKpmJ5dMINDFTLBQifeaZwSHtHJPpymJteH-CjMorDSeHYDl7rihd4Gjsgdi1bgVg45CL8FmmPIN5qiupBUdw-p1pmhJWj1TMol',3);
Insert into HCI.TOKENS (TOKEN_NUM,TOKEN,TOKEN_MEM_NUM) values (4,'fl7xPjH8ySI:APA91bG5TBz9-lwPv07rCYPDd5yamWCt2jPo59WfbGQIbP4baOubjetvatr9nos3chBIPYwBA9ykYkOMsmZXJXhq8L0zcdiBdP3zGsZjC4L35pLI0IK7fQDMr9DqVeptQJ28cLWh6_G5',7);
REM INSERTING into HCI.TRAVEL_HISTORY
SET DEFINE OFF;
Insert into HCI.TRAVEL_HISTORY (TH_NUM,TH_REQ_NUM,TH_GUI_NUM,TH_SCB_NUM,TH_CASE) values (121,3,5,221,'N');
Insert into HCI.TRAVEL_HISTORY (TH_NUM,TH_REQ_NUM,TH_GUI_NUM,TH_SCB_NUM,TH_CASE) values (141,7,3,246,'Y');
Insert into HCI.TRAVEL_HISTORY (TH_NUM,TH_REQ_NUM,TH_GUI_NUM,TH_SCB_NUM,TH_CASE) values (105,7,3,205,'N');
Insert into HCI.TRAVEL_HISTORY (TH_NUM,TH_REQ_NUM,TH_GUI_NUM,TH_SCB_NUM,TH_CASE) values (84,3,7,213,'Y');
Insert into HCI.TRAVEL_HISTORY (TH_NUM,TH_REQ_NUM,TH_GUI_NUM,TH_SCB_NUM,TH_CASE) values (85,7,3,210,'Y');
Insert into HCI.TRAVEL_HISTORY (TH_NUM,TH_REQ_NUM,TH_GUI_NUM,TH_SCB_NUM,TH_CASE) values (103,7,3,207,'Y');
Insert into HCI.TRAVEL_HISTORY (TH_NUM,TH_REQ_NUM,TH_GUI_NUM,TH_SCB_NUM,TH_CASE) values (104,7,3,206,'N');
Insert into HCI.TRAVEL_HISTORY (TH_NUM,TH_REQ_NUM,TH_GUI_NUM,TH_SCB_NUM,TH_CASE) values (101,7,3,209,'Y');
Insert into HCI.TRAVEL_HISTORY (TH_NUM,TH_REQ_NUM,TH_GUI_NUM,TH_SCB_NUM,TH_CASE) values (102,7,3,208,'Y');
Insert into HCI.TRAVEL_HISTORY (TH_NUM,TH_REQ_NUM,TH_GUI_NUM,TH_SCB_NUM,TH_CASE) values (86,5,7,212,'N');
Insert into HCI.TRAVEL_HISTORY (TH_NUM,TH_REQ_NUM,TH_GUI_NUM,TH_SCB_NUM,TH_CASE) values (142,7,3,245,'Y');
Insert into HCI.TRAVEL_HISTORY (TH_NUM,TH_REQ_NUM,TH_GUI_NUM,TH_SCB_NUM,TH_CASE) values (143,7,3,244,'Y');
--------------------------------------------------------
--  DDL for Index AIRPORT_INFO_AIRPORT_NUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HCI"."AIRPORT_INFO_AIRPORT_NUM_PK" ON "HCI"."AIRPORT_INFO" ("AIRPORT_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MEM_MEM_NUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HCI"."MEM_MEM_NUM_PK" ON "HCI"."MEMBER" ("MEM_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index NOTIFY_FROM_TO_MEM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HCI"."NOTIFY_FROM_TO_MEM_PK" ON "HCI"."NOTIFY" ("NOTI_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0014145
--------------------------------------------------------

  CREATE UNIQUE INDEX "HCI"."SYS_C0014145" ON "HCI"."REVIEW" ("REVIEW_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SCB_SCB_NUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HCI"."SCB_SCB_NUM_PK" ON "HCI"."SCHEDULE_BOARD" ("SCB_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TOKENS_TOKEN_NUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HCI"."TOKENS_TOKEN_NUM_PK" ON "HCI"."TOKENS" ("TOKEN_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TH_TH_NUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HCI"."TH_TH_NUM_PK" ON "HCI"."TRAVEL_HISTORY" ("TH_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table AIRPORT_INFO
--------------------------------------------------------

  ALTER TABLE "HCI"."AIRPORT_INFO" ADD CONSTRAINT "AIRPORT_INFO_AIRPORT_NUM_PK" PRIMARY KEY ("AIRPORT_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "HCI"."MEMBER" MODIFY ("MEM_BIRTH" CONSTRAINT "MEM_MEM_BIRTH_NN" NOT NULL ENABLE);
 
  ALTER TABLE "HCI"."MEMBER" ADD CONSTRAINT "MEM_MEM_CASE_CK" CHECK (mem_case in ('CANCEL','DURING','CONFIRM')) ENABLE;
 
  ALTER TABLE "HCI"."MEMBER" ADD CONSTRAINT "MEM_MEM_EMAIL_CK" CHECK (mem_email_ck IN ('Y','N')) ENABLE;
 
  ALTER TABLE "HCI"."MEMBER" MODIFY ("MEM_ID" CONSTRAINT "MEM_MEM_ID_NN" NOT NULL ENABLE);
 
  ALTER TABLE "HCI"."MEMBER" MODIFY ("MEM_NAME" CONSTRAINT "MEM_MEM_NAME_NN" NOT NULL ENABLE);
 
  ALTER TABLE "HCI"."MEMBER" ADD CONSTRAINT "MEM_MEM_NUM_PK" PRIMARY KEY ("MEM_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HCI"."MEMBER" MODIFY ("MEM_PASSWD" CONSTRAINT "MEM_MEM_PASSWD_NN" NOT NULL ENABLE);
 
  ALTER TABLE "HCI"."MEMBER" ADD CONSTRAINT "MEM_MEM_PHONE_CK" CHECK (mem_phone_ck IN ('Y','N')) ENABLE;
--------------------------------------------------------
--  Constraints for Table NOTIFY
--------------------------------------------------------

  ALTER TABLE "HCI"."NOTIFY" ADD CONSTRAINT "NOTIFY_FROM_TO_MEM_PK" PRIMARY KEY ("NOTI_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "HCI"."REVIEW" ADD PRIMARY KEY ("REVIEW_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SCHEDULE_BOARD
--------------------------------------------------------

  ALTER TABLE "HCI"."SCHEDULE_BOARD" ADD CONSTRAINT "SCB_SCB_CASE_CK" CHECK (scb_case IN('WAIT','DURING','CONFIRM')) ENABLE;
 
  ALTER TABLE "HCI"."SCHEDULE_BOARD" ADD CONSTRAINT "SCB_SCB_MEDIATE_CK" CHECK (scb_mediate in ('Y','N')) ENABLE;
 
  ALTER TABLE "HCI"."SCHEDULE_BOARD" ADD CONSTRAINT "SCB_SCB_NUM_PK" PRIMARY KEY ("SCB_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HCI"."SCHEDULE_BOARD" MODIFY ("SCB_SDATE" CONSTRAINT "SCB_SCB_SDATE_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TOKENS
--------------------------------------------------------

  ALTER TABLE "HCI"."TOKENS" MODIFY ("TOKEN" NOT NULL ENABLE);
 
  ALTER TABLE "HCI"."TOKENS" ADD CONSTRAINT "TOKENS_TOKEN_NUM_PK" PRIMARY KEY ("TOKEN_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TRAVEL_HISTORY
--------------------------------------------------------

  ALTER TABLE "HCI"."TRAVEL_HISTORY" ADD CONSTRAINT "TH_TH_CASE_CK" CHECK (th_case in('Y','N')) ENABLE;
 
  ALTER TABLE "HCI"."TRAVEL_HISTORY" ADD CONSTRAINT "TH_TH_NUM_PK" PRIMARY KEY ("TH_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOTIFY
--------------------------------------------------------

  ALTER TABLE "HCI"."NOTIFY" ADD FOREIGN KEY ("NOTI_FROM_NUM")
	  REFERENCES "HCI"."MEMBER" ("MEM_NUM") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "HCI"."NOTIFY" ADD FOREIGN KEY ("NOTI_TO_NUM")
	  REFERENCES "HCI"."MEMBER" ("MEM_NUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "HCI"."REVIEW" ADD FOREIGN KEY ("REVIEW_REQ_NUM")
	  REFERENCES "HCI"."MEMBER" ("MEM_NUM") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "HCI"."REVIEW" ADD FOREIGN KEY ("REVIEW_GUI_NUM")
	  REFERENCES "HCI"."MEMBER" ("MEM_NUM") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "HCI"."REVIEW" ADD FOREIGN KEY ("REVIEW_SCB_NUM")
	  REFERENCES "HCI"."SCHEDULE_BOARD" ("SCB_NUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SCHEDULE_BOARD
--------------------------------------------------------

  ALTER TABLE "HCI"."SCHEDULE_BOARD" ADD CONSTRAINT "SCB_SCB_FROM_FK" FOREIGN KEY ("SCB_FROM")
	  REFERENCES "HCI"."AIRPORT_INFO" ("AIRPORT_NUM") ENABLE;
 
  ALTER TABLE "HCI"."SCHEDULE_BOARD" ADD CONSTRAINT "SCB_SCB_MEM_NUM_FK" FOREIGN KEY ("SCB_MEM_NUM")
	  REFERENCES "HCI"."MEMBER" ("MEM_NUM") ENABLE;
 
  ALTER TABLE "HCI"."SCHEDULE_BOARD" ADD CONSTRAINT "SCB_SCB_TO_FK" FOREIGN KEY ("SCB_TO")
	  REFERENCES "HCI"."AIRPORT_INFO" ("AIRPORT_NUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TOKENS
--------------------------------------------------------

  ALTER TABLE "HCI"."TOKENS" ADD CONSTRAINT "TOKENS_TOKEN_MEM_NUM_FK" FOREIGN KEY ("TOKEN_MEM_NUM")
	  REFERENCES "HCI"."MEMBER" ("MEM_NUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TRAVEL_HISTORY
--------------------------------------------------------

  ALTER TABLE "HCI"."TRAVEL_HISTORY" ADD CONSTRAINT "TH_TH_GUI_NUM_FK" FOREIGN KEY ("TH_GUI_NUM")
	  REFERENCES "HCI"."MEMBER" ("MEM_NUM") ENABLE;
 
  ALTER TABLE "HCI"."TRAVEL_HISTORY" ADD CONSTRAINT "TH_TH_REQ_NUM_FK" FOREIGN KEY ("TH_REQ_NUM")
	  REFERENCES "HCI"."MEMBER" ("MEM_NUM") ENABLE;
 
  ALTER TABLE "HCI"."TRAVEL_HISTORY" ADD CONSTRAINT "TH_TH_SCB_NUM_FK" FOREIGN KEY ("TH_SCB_NUM")
	  REFERENCES "HCI"."SCHEDULE_BOARD" ("SCB_NUM") ENABLE;
