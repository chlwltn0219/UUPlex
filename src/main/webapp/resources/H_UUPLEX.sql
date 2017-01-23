DROP TABLE h_room;
CREATE TABLE h_room(
  roomNum     NUMBER(5),              --객실번호
  shopCode    NUMBER(10),             --매장코드
  roomName    VARCHAR2(20) NOT NULL,  --객실이름
  mainImg     VARCHAR2(100) NOT NULL, --메인이미지
  detail_1    VARCHAR2(100),          --상세이미지1
  detail_2    VARCHAR2(100),          --상세이미지2
  detail_3    VARCHAR2(100),          --상세이미지3
  detail_4    VARCHAR2(100),          --상세이미지4
  detail_5    VARCHAR2(100),          --상세이미지5
  intro       VARCHAR2(1000),         --객실소개
  roomType    VARCHAR2(30) NOT NULL,  --객실형태(규모)
  bed         VARCHAR2(20) NOT NULL,  --베드(침대)
  hotelView   VARCHAR2(20) NOT NULL,  --전망(뷰)
  capacity    VARCHAR2(20) NOT NULL,  --인원
  charge      NUMBER(10) NOT NULL,    --이용요금
  CONSTRAINT h_room_roomNum_pk PRIMARY KEY(roomNum)
);

DROP SEQUENCE roomNum;
CREATE SEQUENCE roomNum
  START WITH 1
  INCREMENT BY 1
  MAXVALUE 99999;
  
DESC h_room;



DROP TABLE h_reserv;
CREATE TABLE h_reserv(
  reservNum   NUMBER(5),              --예약번호
  roomNum     NUMBER(5),              --객실번호
  ID          NUMBER(5),              --고객ID
  reservDay   DATE NOT NULL,          --예약날짜
  checkIn     DATE NOT NULL,          --체크인날짜
  checkOut    DATE NOT NULL,          --체크아웃날짜
  day         NUMBER(5) NOT NULL,     --숙박기간
  service     VARCHAR2(100),          --추가서비스
  totCharge   NUMBER(10) NOT NULL,    --결제금액
  CONSTRAINT h_reserv_reservNum_pk PRIMARY KEY(reservNum)
);

DROP SEQUENCE reservNum;
CREATE SEQUENCE reservNum
  START WITH 1
  INCREMENT BY 1
  MAXVALUE 99999;
  
DESC h_reserv;



DROP TABLE h_calendar;
CREATE TABLE h_calendar(
  dayNum      NUMBER(5),              --날짜번호
  reservNum   NUMBER(5),              --예약번호
  roomNum     NUMBER(5),              --객실번호
  CONSTRAINT h_calendar_dayNum_pk PRIMARY KEY(dayNum)
);

DROP SEQUENCE dayNum;
CREATE SEQUENCE dayNum
  START WITH 1
  INCREMENT BY 1
  MAXVALUE 99999;
  
DESC h_calendar;


commit;