/* 상영관 */
CREATE TABLE m_theater (
	theater_num NUMBER(5) NOT NULL, /* 상영관번호 */
	shopcode NUMBER(10), /* 매장번호 */
	seatCnt NUMBER(3), /* 총좌석수 */
	seat_arrange VARCHAR2(300) /* 좌석배열 */
);

COMMENT ON TABLE m_theater IS '상영관';

COMMENT ON COLUMN m_theater.theater_num IS '상영관번호';

COMMENT ON COLUMN m_theater.shopcode IS '매장번호';

COMMENT ON COLUMN m_theater.seatCnt IS '총좌석수';

COMMENT ON COLUMN m_theater.seat_arrange IS '좌석배열';

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
    
