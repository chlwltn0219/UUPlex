DROP TABLE f_teacher;
CREATE TABLE f_teacher(
  tid             NUMBER(5),                 -- 선생님 아이디
  tname           VARCHAR2(20) NOT NULL,     -- 선생님 이름
  tinfo           VARCHAR2(300),			 -- 선생님 정보
  tpicture        VARCHAR2(100),			 -- 선생님 사진
  activated       VARCHAR2(1),     			 -- 활성화, 비활성화	
  CONSTRAINT f_teachert_teacherid_pk PRIMARY KEY(tid),
  CONSTRAINT f_teacher_activated_fk FOREIGN KEY(activated) references BOOLEAN(value)
);

