DROP TABLE h_room;
CREATE TABLE h_room(
  roomNum     NUMBER(5),              --���ǹ�ȣ
  shopCode    NUMBER(10),             --�����ڵ�
  roomName    VARCHAR2(20) NOT NULL,  --�����̸�
  mainImg     VARCHAR2(100) NOT NULL, --�����̹���
  detail_1    VARCHAR2(100),          --���̹���1
  detail_2    VARCHAR2(100),          --���̹���2
  detail_3    VARCHAR2(100),          --���̹���3
  detail_4    VARCHAR2(100),          --���̹���4
  detail_5    VARCHAR2(100),          --���̹���5
  intro       VARCHAR2(1000),         --���ǼҰ�
  roomType    VARCHAR2(30) NOT NULL,  --��������(�Ը�)
  bed         VARCHAR2(20) NOT NULL,  --����(ħ��)
  hotelView   VARCHAR2(20) NOT NULL,  --����(��)
  capacity    VARCHAR2(20) NOT NULL,  --�ο�
  charge      NUMBER(10) NOT NULL,    --�̿���
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
  reservNum   NUMBER(5),              --�����ȣ
  roomNum     NUMBER(5),              --���ǹ�ȣ
  ID          NUMBER(5),              --��ID
  reservDay   DATE NOT NULL,          --���೯¥
  checkIn     DATE NOT NULL,          --üũ�γ�¥
  checkOut    DATE NOT NULL,          --üũ�ƿ���¥
  day         NUMBER(5) NOT NULL,     --���ڱⰣ
  service     VARCHAR2(100),          --�߰�����
  totCharge   NUMBER(10) NOT NULL,    --�����ݾ�
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
  dayNum      NUMBER(5),              --��¥��ȣ
  reservNum   NUMBER(5),              --�����ȣ
  roomNum     NUMBER(5),              --���ǹ�ȣ
  CONSTRAINT h_calendar_dayNum_pk PRIMARY KEY(dayNum)
);

DROP SEQUENCE dayNum;
CREATE SEQUENCE dayNum
  START WITH 1
  INCREMENT BY 1
  MAXVALUE 99999;
  
DESC h_calendar;


commit;