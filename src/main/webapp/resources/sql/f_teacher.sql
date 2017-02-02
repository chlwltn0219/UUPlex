DROP TABLE f_teacher;
CREATE TABLE f_teacher(
  tid             NUMBER(5),                 -- ��ǰ��ȣ
  tname           VARCHAR2(20) NOT NULL,     -- ��ǰ�̸�
  sid             NUMBER(5),
  tinfo           VARCHAR2(300),
  tpicture        VARCHAR2(100),
  reg_date        TIMESTAMP DEFAULT SYSDATE,
  activated       VARCHAR2(1) DEFAULT 'Y',     -- ��ǰ����
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

--INSERT INTO f_teacher (tid, tname, activated)
--VALUES (SEQ_TEACHER_TID.nextval, '������', 'Y');
--INSERT INTO f_teacher (tid, tname, activated)
--VALUES (SEQ_TEACHER_TID.nextval, '������', 'Y');
--INSERT INTO f_teacher (tid, tname, activated)
--VALUES (SEQ_TEACHER_TID.nextval, '�Ѱ���', 'Y');
--INSERT INTO f_teacher (tid, tname, activated)
--VALUES (SEQ_TEACHER_TID.nextval, '������', 'Y');
--INSERT INTO f_teacher (tid, tname, activated)
--VALUES (SEQ_TEACHER_TID.nextval, '������', 'N');
--INSERT INTO f_teacher (tid, tname, activated)
--VALUES (SEQ_TEACHER_TID.nextval, '�����', 'N');
--commit;
