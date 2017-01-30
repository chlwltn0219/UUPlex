/* ���� */
CREATE TABLE m_review (
	review_num NUMBER(5) NOT NULL, /* �����ȣ */
	memId VARCHAR2(20), /* ȸ��id */
	movie_num NUMBER(5), /* ��ȭ��ȣ */
	rating NUMBER(2), /* ���� */
	review_content CLOB, /* ���䳻�� */
	reg_date TIMESTAMP default sysdate/* ����� */
);

COMMENT ON TABLE m_review IS '����';

COMMENT ON COLUMN m_review.review_num IS '�����ȣ';

COMMENT ON COLUMN m_review.memId IS 'ȸ��id';

COMMENT ON COLUMN m_review.movie_num IS '��ȭ��ȣ';

COMMENT ON COLUMN m_review.rating IS '����';

COMMENT ON COLUMN m_review.review_content IS '���䳻��';

COMMENT ON COLUMN m_review.reg_date IS '�����';

CREATE UNIQUE INDEX UIX_m_review
	ON m_review (
		review_num ASC
	);

ALTER TABLE m_review
	ADD
		CONSTRAINT UK_m_review
		UNIQUE (
			review_num
		);

ALTER TABLE m_review
	ADD
		CONSTRAINT FK_m_movie_info_TO_m_review
		FOREIGN KEY (
			movie_num
		)
		REFERENCES m_movie_info (
			movie_num
		);
    
CREATE sequence m_review_seq
  increment by 1 
  maxvalue 99999;    
  
INSERT INTO m_review(review_num, memId, movie_num, rating, review_content, reg_date) VALUES(m_review_seq.NEXTVAL, memI, movie_num, 1, review_content, sysdate);
    
INSERT INTO m_review(review_num, memId, movie_num, rating, review_content, reg_date) VALUES(2,'MEM',12,1,'CONTENT',sysdate);

select * from m_review;