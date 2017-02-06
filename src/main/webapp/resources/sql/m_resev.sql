/* ���� */
CREATE TABLE m_reserv (
	reserve_num NUMBER(5) NOT NULL, /* ���Ź�ȣ */
	memId VARCHAR2(20), /* ȸ��id */
	movie_num NUMBER(5), /* ��ȭ��ȣ */
	theater_num NUMBER(5), /* �󿵰���ȣ */
	schedule_num NUMBER(5), /* ��������ȣ */
	seat VARCHAR2(50), /* �����¼� */
	reserve_date TIMESTAMP, /* ������ */
	price NUMBER(20), /* �����ݾ� */
	cnt NUMBER(1) /* ���� */
);



CREATE UNIQUE INDEX PK_m_reserv
	ON m_reserv (
		reserve_num ASC
	);

ALTER TABLE m_reserv
	ADD
		CONSTRAINT PK_m_reserv
		PRIMARY KEY (
			reserve_num
		);

ALTER TABLE m_reserv
	ADD
		CONSTRAINT FK_m_schedule_TO_m_reserv
		FOREIGN KEY (
			schedule_num
		)
		REFERENCES m_schedule (
			schedule_num
		)on delete cascade;

ALTER TABLE m_reserv
	ADD
		CONSTRAINT FK_m_theater_TO_m_reserv
		FOREIGN KEY (
			theater_num
		)
		REFERENCES m_theater (
			theater_num
		)on delete cascade;

ALTER TABLE m_reserv
	ADD
		CONSTRAINT FK_m_movie_info_TO_m_reserv
		FOREIGN KEY (
			movie_num
		)
		REFERENCES m_movie_info (
			movie_num
		)on delete cascade;
		
create sequence m_reserv_seq
start with 1
increment by 1
maxvalue 99999;
