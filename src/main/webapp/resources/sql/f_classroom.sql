DROP TABLE f_classroom;
CREATE TABLE f_classroom(
  shopcode        NUMBER,                 -- ���ڵ�
  crid            NUMBER,     -- ���ǽ�ȣ��
  crname          VARCHAR2(300), --���ǽ� �̸�
  activated       VARCHAR2(1) DEFAULT 'Y',     -- ���ǽ� ��迩��
  CONSTRAINT f_f_classroom_crid_pk PRIMARY KEY(crid),
  CONSTRAINT f_f_classroom_activated_fk FOREIGN KEY(activated) references BOOLEAN(value),
  CONSTRAINT f_f_classroom_shopcode_fk FOREIGN KEY(shopcode) references uu_shopcode(shopcode)
);

  SELECT * FROM f_classroom;
DROP SEQUENCE SEQ_classroom_crid;

CREATE SEQUENCE SEQ_classroom_crid
START WITH 101
INCREMENT BY 1
NOCYCLE 
MINVALUE 0;

--INSERT INTO f_classroom (crid, crname, activated)
--VALUES (SEQ_classroom_crid.nextval, '������', 'Y');
--INSERT INTO f_classroom (crid, crname, activated)
--VALUES (SEQ_classroom_crid.nextval, '�״Ͻ���', 'Y');
--INSERT INTO f_classroom (crid, crname, activated)
--VALUES (SEQ_classroom_crid.nextval, '�ٸ�����', 'Y');
--COMMIT;
