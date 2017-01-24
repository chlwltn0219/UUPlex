DROP TABLE f_teacher;
CREATE TABLE f_teacher(
  tid             NUMBER(5),                 -- 상품번호
  tname           VARCHAR2(20) NOT NULL,     -- 상품이름
  tinfo           VARCHAR2(300),
  tpicture        VARCHAR2(100),
  activated       VARCHAR2(1) DEFAULT 'Y',     -- 상품가격
  CONSTRAINT f_teachert_teacherid_pk PRIMARY KEY(tid),
  CONSTRAINT f_teacher_activated_fk FOREIGN KEY(activated) references BOOLEAN(value)
);


DROP SEQUENCE SEQ_TEACHER_TID;

CREATE SEQUENCE SEQ_TEACHER_TID
START WITH 0
INCREMENT BY 1
NOCYCLE 
MINVALUE 0;


DROP TABLE BOOLEAN;

CREATE TABLE BOOLEAN (
value		VARCHAR2(1),
CONSTRAINT boolean_value_pk PRIMARY KEY (value)
);

INSERT INTO BOOLEAN 
VALUES ('Y');
INSERT INTO BOOLEAN 
VALUES ('N');

COMMIT;

INSERT INTO f_teacher (tid, tname)
VALUES (SEQ_TEACHER_TID.nextval, '서강준');
INSERT INTO f_teacher (tid, tname)
VALUES (SEQ_TEACHER_TID.nextval, '박해진');
INSERT INTO f_teacher (tid, tname)
VALUES (SEQ_TEACHER_TID.nextval, '한고은');
INSERT INTO f_teacher (tid, tname)
VALUES (SEQ_TEACHER_TID.nextval, '펠프스');