/* �󿵰� */
CREATE TABLE m_theater (
	theater_num NUMBER(5) NOT NULL, /* �󿵰���ȣ */
	shopcode NUMBER(10), /* �����ȣ */
	seatCnt NUMBER(3), /* ���¼��� */
	seat_arrange VARCHAR2(300) /* �¼��迭 */
);

COMMENT ON TABLE m_theater IS '�󿵰�';

COMMENT ON COLUMN m_theater.theater_num IS '�󿵰���ȣ';

COMMENT ON COLUMN m_theater.shopcode IS '�����ȣ';

COMMENT ON COLUMN m_theater.seatCnt IS '���¼���';

COMMENT ON COLUMN m_theater.seat_arrange IS '�¼��迭';

CREATE UNIQUE INDEX PK_m_theater
	ON m_theater (
		theater_num ASC
	);

ALTER TABLE m_theater
	ADD
		CONSTRAINT PK_m_theater
		PRIMARY KEY (
			theater_num
		);
    
