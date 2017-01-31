DROP TABLE f_teacher;
CREATE TABLE f_teacher(
  tid             NUMBER(5),                 -- 상품번호
  tname           VARCHAR2(20) NOT NULL,     -- 상품이름
  sid             NUMBER(5),
  tinfo           VARCHAR2(300),
  tpicture        VARCHAR2(100),
  reg_date        TIMESTAMP DEFAULT SYSDATE,
  activated       VARCHAR2(1) DEFAULT 'Y',     -- 상품가격
  CONSTRAINT f_teachert_teacherid_pk PRIMARY KEY(tid),
  CONSTRAINT f_teacher_activated_fk FOREIGN KEY(activated) references BOOLEAN(value),
  CONSTRAINT f_teacher_sid_fk FOREIGN KEY(sid) references f_sports(sid)
);


DROP SEQUENCE SEQ_TEACHER_TID;

CREATE SEQUENCE SEQ_TEACHER_TID
START WITH 0
INCREMENT BY 1
NOCYCLE 
MINVALUE 0;

SELECT * FROM f_teacher;

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

INSERT INTO f_teacher (tid, tname, activated)
VALUES (SEQ_TEACHER_TID.nextval, '서강준', 'Y');
INSERT INTO f_teacher (tid, tname, activated)
VALUES (SEQ_TEACHER_TID.nextval, '박해진', 'Y');
INSERT INTO f_teacher (tid, tname, activated)
VALUES (SEQ_TEACHER_TID.nextval, '한고은', 'Y');
INSERT INTO f_teacher (tid, tname, activated)
VALUES (SEQ_TEACHER_TID.nextval, '펠프스', 'Y');


INSERT INTO f_teacher (tid, tname, activated)
VALUES (SEQ_TEACHER_TID.nextval, '최지수', 'N');
commit;

INSERT INTO f_teacher (tid, tname, activated)
VALUES (SEQ_TEACHER_TID.nextval, '유기민', 'N');
commit;

DELETE FROM f_teacher; 
COMMIT;